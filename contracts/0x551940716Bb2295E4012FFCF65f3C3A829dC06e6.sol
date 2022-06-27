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
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = msg.value
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _846 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _852 = mem[(32 * idx + 1) + 128]
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
                if address(_846) == address(_846):
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                if address(_852) == address(_846):
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        require 1 < ('cd', 36).length
        if mem[160] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        _876 = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value _876 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        _900 = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 164] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 196] = _900
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _900
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 192
        mem[(64 * ('cd', 36).length) + 160] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 192] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 160]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _1692 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _1704 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1704 + 36] = 0
                        mem[_1704 + 68] = _1692
                        mem[_1704 + 100] = address(ext_call.return_data[0])
                        mem[_1704 + 132] = 128
                        mem[_1704 + 164] = mem[_1704]
                        s = 0
                        while s < mem[_1704]:
                            mem[s + _1704 + 196] = mem[s + _1704 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1704] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1692, address(ext_call.return_data[0]), 128, mem[_1704 + 164 len mem[_1704] + 32]
                        else:
                            mem[floor32(mem[_1704]) + _1704 + 196] = mem[floor32(mem[_1704]) + _1704 + -(mem[_1704] % 32) + 228 len mem[_1704] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1692, address(ext_call.return_data[0]), 128, mem[_1704], mem[_1704 + 196 len floor32(mem[_1704]) + 32]
                    else:
                        _1708 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1708 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1708 + 36] = 0
                        mem[_1708 + 68] = _1692
                        mem[_1708 + 100] = address(cd[68])
                        mem[_1708 + 132] = 128
                        mem[_1708 + 164] = mem[_1708]
                        s = 0
                        while s < mem[_1708]:
                            mem[s + _1708 + 196] = mem[s + _1708 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1708] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1692, address(cd[68]), 128, mem[_1708 + 164 len mem[_1708] + 32]
                        else:
                            mem[floor32(mem[_1708]) + _1708 + 196] = mem[floor32(mem[_1708]) + _1708 + -(mem[_1708] % 32) + 228 len mem[_1708] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1692, address(cd[68]), 128, mem[_1708], mem[_1708 + 196 len floor32(mem[_1708]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _1712 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1712 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1712 + 36] = _1692
                        mem[_1712 + 68] = 0
                        mem[_1712 + 100] = address(ext_call.return_data[0])
                        mem[_1712 + 132] = 128
                        mem[_1712 + 164] = mem[_1712]
                        s = 0
                        while s < mem[_1712]:
                            mem[s + _1712 + 196] = mem[s + _1712 + 32]
                            s = s + 32
                            continue 
                        if not mem[_1712] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1692, 0, address(ext_call.return_data[0]), 128, mem[_1712 + 164 len mem[_1712] + 32]
                        else:
                            mem[floor32(mem[_1712]) + _1712 + 196] = mem[floor32(mem[_1712]) + _1712 + -(mem[_1712] % 32) + 228 len mem[_1712] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1692, 0, address(ext_call.return_data[0]), 128, mem[_1712], mem[_1712 + 196 len floor32(mem[_1712]) + 32]
                    else:
                        _1716 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1716 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1716 + 36] = _1692
                        mem[_1716 + 68] = 0
                        mem[_1716 + 100] = address(cd[68])
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
                                args _1692, 0, address(cd[68]), 128, mem[_1716 + 164 len mem[_1716] + 32]
                        else:
                            mem[floor32(mem[_1716]) + _1716 + 196] = mem[floor32(mem[_1716]) + _1716 + -(mem[_1716] % 32) + 228 len mem[_1716] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1692, 0, address(cd[68]), 128, mem[_1716], mem[_1716 + 196 len floor32(mem[_1716]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _1693 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _1720 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1720 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1720 + 36] = 0
                        mem[_1720 + 68] = _1693
                        mem[_1720 + 100] = address(ext_call.return_data[0])
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
                                args 0, _1693, address(ext_call.return_data[0]), 128, mem[_1720 + 164 len mem[_1720] + 32]
                        else:
                            mem[floor32(mem[_1720]) + _1720 + 196] = mem[floor32(mem[_1720]) + _1720 + -(mem[_1720] % 32) + 228 len mem[_1720] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1693, address(ext_call.return_data[0]), 128, mem[_1720], mem[_1720 + 196 len floor32(mem[_1720]) + 32]
                    else:
                        _1724 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1724 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1724 + 36] = 0
                        mem[_1724 + 68] = _1693
                        mem[_1724 + 100] = address(cd[68])
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
                                args 0, _1693, address(cd[68]), 128, mem[_1724 + 164 len mem[_1724] + 32]
                        else:
                            mem[floor32(mem[_1724]) + _1724 + 196] = mem[floor32(mem[_1724]) + _1724 + -(mem[_1724] % 32) + 228 len mem[_1724] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1693, address(cd[68]), 128, mem[_1724], mem[_1724 + 196 len floor32(mem[_1724]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _1728 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1728 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1728 + 36] = _1693
                        mem[_1728 + 68] = 0
                        mem[_1728 + 100] = address(ext_call.return_data[0])
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
                                args _1693, 0, address(ext_call.return_data[0]), 128, mem[_1728 + 164 len mem[_1728] + 32]
                        else:
                            mem[floor32(mem[_1728]) + _1728 + 196] = mem[floor32(mem[_1728]) + _1728 + -(mem[_1728] % 32) + 228 len mem[_1728] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1693, 0, address(ext_call.return_data[0]), 128, mem[_1728], mem[_1728 + 196 len floor32(mem[_1728]) + 32]
                    else:
                        _1732 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1732 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1732 + 36] = _1693
                        mem[_1732 + 68] = 0
                        mem[_1732 + 100] = address(cd[68])
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
                                args _1693, 0, address(cd[68]), 128, mem[_1732 + 164 len mem[_1732] + 32]
                        else:
                            mem[floor32(mem[_1732]) + _1732 + 196] = mem[floor32(mem[_1732]) + _1732 + -(mem[_1732] % 32) + 228 len mem[_1732] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1693, 0, address(cd[68]), 128, mem[_1732], mem[_1732 + 196 len floor32(mem[_1732]) + 32]
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
            _848 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _855 = mem[(32 * idx + 1) + 128]
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
                if address(_848) == address(_848):
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                if address(_855) == address(_848):
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        require 1 < ('cd', 36).length
        if mem[160] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        _883 = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value _883 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        _905 = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 164] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 196] = _905
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _905
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 192
        mem[(64 * ('cd', 36).length) + 160] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 192] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 160]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _1694 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _1736 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1736 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1736 + 36] = 0
                        mem[_1736 + 68] = _1694
                        mem[_1736 + 100] = address(ext_call.return_data[0])
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
                                args 0, _1694, address(ext_call.return_data[0]), 128, mem[_1736 + 164 len mem[_1736] + 32]
                        else:
                            mem[floor32(mem[_1736]) + _1736 + 196] = mem[floor32(mem[_1736]) + _1736 + -(mem[_1736] % 32) + 228 len mem[_1736] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1694, address(ext_call.return_data[0]), 128, mem[_1736], mem[_1736 + 196 len floor32(mem[_1736]) + 32]
                    else:
                        _1740 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1740 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1740 + 36] = 0
                        mem[_1740 + 68] = _1694
                        mem[_1740 + 100] = address(cd[68])
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
                                args 0, _1694, address(cd[68]), 128, mem[_1740 + 164 len mem[_1740] + 32]
                        else:
                            mem[floor32(mem[_1740]) + _1740 + 196] = mem[floor32(mem[_1740]) + _1740 + -(mem[_1740] % 32) + 228 len mem[_1740] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1694, address(cd[68]), 128, mem[_1740], mem[_1740 + 196 len floor32(mem[_1740]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _1744 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1744 + 36] = _1694
                        mem[_1744 + 68] = 0
                        mem[_1744 + 100] = address(ext_call.return_data[0])
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
                                args _1694, 0, address(ext_call.return_data[0]), 128, mem[_1744 + 164 len mem[_1744] + 32]
                        else:
                            mem[floor32(mem[_1744]) + _1744 + 196] = mem[floor32(mem[_1744]) + _1744 + -(mem[_1744] % 32) + 228 len mem[_1744] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1694, 0, address(ext_call.return_data[0]), 128, mem[_1744], mem[_1744 + 196 len floor32(mem[_1744]) + 32]
                    else:
                        _1748 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1748 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1748 + 36] = _1694
                        mem[_1748 + 68] = 0
                        mem[_1748 + 100] = address(cd[68])
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
                                args _1694, 0, address(cd[68]), 128, mem[_1748 + 164 len mem[_1748] + 32]
                        else:
                            mem[floor32(mem[_1748]) + _1748 + 196] = mem[floor32(mem[_1748]) + _1748 + -(mem[_1748] % 32) + 228 len mem[_1748] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1694, 0, address(cd[68]), 128, mem[_1748], mem[_1748 + 196 len floor32(mem[_1748]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _1695 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _1752 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1752 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1752 + 36] = 0
                        mem[_1752 + 68] = _1695
                        mem[_1752 + 100] = address(ext_call.return_data[0])
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
                                args 0, _1695, address(ext_call.return_data[0]), 128, mem[_1752 + 164 len mem[_1752] + 32]
                        else:
                            mem[floor32(mem[_1752]) + _1752 + 196] = mem[floor32(mem[_1752]) + _1752 + -(mem[_1752] % 32) + 228 len mem[_1752] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1695, address(ext_call.return_data[0]), 128, mem[_1752], mem[_1752 + 196 len floor32(mem[_1752]) + 32]
                    else:
                        _1756 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1756 + 36] = 0
                        mem[_1756 + 68] = _1695
                        mem[_1756 + 100] = address(cd[68])
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
                                args 0, _1695, address(cd[68]), 128, mem[_1756 + 164 len mem[_1756] + 32]
                        else:
                            mem[floor32(mem[_1756]) + _1756 + 196] = mem[floor32(mem[_1756]) + _1756 + -(mem[_1756] % 32) + 228 len mem[_1756] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1695, address(cd[68]), 128, mem[_1756], mem[_1756 + 196 len floor32(mem[_1756]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _1760 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1760 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1760 + 36] = _1695
                        mem[_1760 + 68] = 0
                        mem[_1760 + 100] = address(ext_call.return_data[0])
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
                                args _1695, 0, address(ext_call.return_data[0]), 128, mem[_1760 + 164 len mem[_1760] + 32]
                        else:
                            mem[floor32(mem[_1760]) + _1760 + 196] = mem[floor32(mem[_1760]) + _1760 + -(mem[_1760] % 32) + 228 len mem[_1760] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1695, 0, address(ext_call.return_data[0]), 128, mem[_1760], mem[_1760 + 196 len floor32(mem[_1760]) + 32]
                    else:
                        _1764 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_1764 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_1764 + 36] = _1695
                        mem[_1764 + 68] = 0
                        mem[_1764 + 100] = address(cd[68])
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
                                args _1695, 0, address(cd[68]), 128, mem[_1764 + 164 len mem[_1764] + 32]
                        else:
                            mem[floor32(mem[_1764]) + _1764 + 196] = mem[floor32(mem[_1764]) + _1764 + -(mem[_1764] % 32) + 228 len mem[_1764] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1695, 0, address(cd[68]), 128, mem[_1764], mem[_1764 + 196 len floor32(mem[_1764]) + 32]
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
    mem[64] = (64 * ('cd', 36).length) + 160
    if not ('cd', 36).length:
        require 0 < ('cd', 36).length
        mem[(32 * ('cd', 36).length) + 160] = msg.value
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < ('cd', 36).length
            _1284 = mem[(32 * idx) + 128]
            require idx + 1 < ('cd', 36).length
            _1290 = mem[(32 * idx + 1) + 128]
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
                if address(_1284) == address(_1284):
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                if address(_1290) == address(_1284):
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        require 1 < ('cd', 36).length
        if mem[160] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        _1314 = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value _1314 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        _1338 = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 164] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 196] = _1338
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _1338
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 192
        mem[(64 * ('cd', 36).length) + 160] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 192] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 160]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2592 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _2612 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2612 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2612 + 36] = 0
                        mem[_2612 + 68] = _2592
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
                                args 0, _2592, address(ext_call.return_data[0]), 128, mem[_2612 + 164 len mem[_2612] + 32]
                        else:
                            mem[floor32(mem[_2612]) + _2612 + 196] = mem[floor32(mem[_2612]) + _2612 + -(mem[_2612] % 32) + 228 len mem[_2612] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2592, address(ext_call.return_data[0]), 128, mem[_2612], mem[_2612 + 196 len floor32(mem[_2612]) + 32]
                    else:
                        _2616 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2616 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2616 + 36] = 0
                        mem[_2616 + 68] = _2592
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
                                args 0, _2592, address(cd[68]), 128, mem[_2616 + 164 len mem[_2616] + 32]
                        else:
                            mem[floor32(mem[_2616]) + _2616 + 196] = mem[floor32(mem[_2616]) + _2616 + -(mem[_2616] % 32) + 228 len mem[_2616] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2592, address(cd[68]), 128, mem[_2616], mem[_2616 + 196 len floor32(mem[_2616]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _2620 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2620 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2620 + 36] = _2592
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
                                args _2592, 0, address(ext_call.return_data[0]), 128, mem[_2620 + 164 len mem[_2620] + 32]
                        else:
                            mem[floor32(mem[_2620]) + _2620 + 196] = mem[floor32(mem[_2620]) + _2620 + -(mem[_2620] % 32) + 228 len mem[_2620] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2592, 0, address(ext_call.return_data[0]), 128, mem[_2620], mem[_2620 + 196 len floor32(mem[_2620]) + 32]
                    else:
                        _2624 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2624 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2624 + 36] = _2592
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
                                args _2592, 0, address(cd[68]), 128, mem[_2624 + 164 len mem[_2624] + 32]
                        else:
                            mem[floor32(mem[_2624]) + _2624 + 196] = mem[floor32(mem[_2624]) + _2624 + -(mem[_2624] % 32) + 228 len mem[_2624] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2592, 0, address(cd[68]), 128, mem[_2624], mem[_2624 + 196 len floor32(mem[_2624]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2593 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _2628 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2628 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2628 + 36] = 0
                        mem[_2628 + 68] = _2593
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
                                args 0, _2593, address(ext_call.return_data[0]), 128, mem[_2628 + 164 len mem[_2628] + 32]
                        else:
                            mem[floor32(mem[_2628]) + _2628 + 196] = mem[floor32(mem[_2628]) + _2628 + -(mem[_2628] % 32) + 228 len mem[_2628] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2593, address(ext_call.return_data[0]), 128, mem[_2628], mem[_2628 + 196 len floor32(mem[_2628]) + 32]
                    else:
                        _2632 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2632 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2632 + 36] = 0
                        mem[_2632 + 68] = _2593
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
                                args 0, _2593, address(cd[68]), 128, mem[_2632 + 164 len mem[_2632] + 32]
                        else:
                            mem[floor32(mem[_2632]) + _2632 + 196] = mem[floor32(mem[_2632]) + _2632 + -(mem[_2632] % 32) + 228 len mem[_2632] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2593, address(cd[68]), 128, mem[_2632], mem[_2632 + 196 len floor32(mem[_2632]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _2636 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2636 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2636 + 36] = _2593
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
                                args _2593, 0, address(ext_call.return_data[0]), 128, mem[_2636 + 164 len mem[_2636] + 32]
                        else:
                            mem[floor32(mem[_2636]) + _2636 + 196] = mem[floor32(mem[_2636]) + _2636 + -(mem[_2636] % 32) + 228 len mem[_2636] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2593, 0, address(ext_call.return_data[0]), 128, mem[_2636], mem[_2636 + 196 len floor32(mem[_2636]) + 32]
                    else:
                        _2640 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2640 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2640 + 36] = _2593
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
                                args _2593, 0, address(cd[68]), 128, mem[_2640 + 164 len mem[_2640] + 32]
                        else:
                            mem[floor32(mem[_2640]) + _2640 + 196] = mem[floor32(mem[_2640]) + _2640 + -(mem[_2640] % 32) + 228 len mem[_2640] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2593, 0, address(cd[68]), 128, mem[_2640], mem[_2640 + 196 len floor32(mem[_2640]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 1 < mem[96]
        if mem[160] < msg.value * cd[132] / 100:
            revert with 0, '-,'
        _2556 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 1 < ('cd', 36).length
        require 0 < mem[_2556]
        mem[_2556 + 32] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        require 1 < mem[_2556]
        mem[_2556 + 64] = address(('cd', 36)[0])
        require 1 < mem[96]
        _2580 = mem[160]
        mem[_2556 + 96] = 0x3f4e48bb00000000000000000000000000000000000000000000000000000000
        mem[_2556 + 100] = address(ext_call.return_data[0])
        mem[_2556 + 132] = _2580
        mem[_2556 + 164] = msg.value * cd[132] / 100
        mem[_2556 + 228] = this.address
        mem[_2556 + 196] = 160
        mem[_2556 + 260] = mem[_2556]
        mem[_2556 + 292 len floor32(mem[_2556])] = mem[_2556 + 32 len floor32(mem[_2556])]
        require ext_code.size(this.address)
        call this.address.0x3f4e48bb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _2580, msg.value * cd[132] / 100, 160, address(this.address), mem[_2556 + 260 len (32 * mem[_2556]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_2556 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _2556 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _3216 = mem[_2556 + 96 len 4], address(ext_call.return_data[0]) << 64
        require mem[_2556 + 96 len 4], address(ext_call.return_data[0]) << 64 <= 4294967296
        require mem[_2556 + 96 len 4], address(ext_call.return_data[0]) << 64 + 32 <= return_data.size
        require mem[_2556 + mem[_2556 + 96 len 4], address(ext_call.return_data[0]) << 64 + 96] <= 4294967296 and mem[_2556 + 96 len 4], address(ext_call.return_data[0]) << 64 + (32 * mem[_2556 + mem[_2556 + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]) + 32 <= return_data.size
        mem[_2556 + ceil32(return_data.size) + 96] = mem[_2556 + mem[_2556 + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]
        _3222 = mem[_2556 + _3216 + 96]
        mem[_2556 + ceil32(return_data.size) + 128 len floor32(mem[_2556 + _3216 + 96])] = mem[_2556 + _3216 + 128 len floor32(mem[_2556 + _3216 + 96])]
        require mem[96] - 1 < mem[96]
        _3628 = mem[(32 * mem[96] - 1) + 128]
        mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 128] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 132] = _3628
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args _3628
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[96] - 1 < mem[96]
        _3638 = mem[(32 * mem[96] - 1) + 128]
        mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 128] = 0
        mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160 len 0] = None
        mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160] = None or uint32(_3628), mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 164 len 28]
        call this.address with:
           value _3638 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 263 len 29]
            require mem[96] - 1 < mem[96]
            _4046 = mem[(32 * mem[96] - 1) + 128]
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 164] = address(ext_call.return_data[0])
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 196] = _4046
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _4046
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[64] = (32 * _3222) + _2556 + ceil32(return_data.size) + (32 * ('cd', 36).length) + 192
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160] = ('cd', 36).length
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + (32 * ('cd', 36).length) + 192] = 0
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160]
                require idx + 1 < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160]
                if mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20] == mem[(32 * idx + 1) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20] < mem[(32 * idx + 1) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20]:
                    if not mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4454 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20] == mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20]:
                        if idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160] - 2:
                            _4478 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4478 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4478 + 36] = 0
                            mem[_4478 + 68] = _4454
                            mem[_4478 + 100] = address(ext_call.return_data[0])
                            mem[_4478 + 132] = 128
                            mem[_4478 + 164] = mem[_4478]
                            s = 0
                            while s < mem[_4478]:
                                mem[s + _4478 + 196] = mem[s + _4478 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4478] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4454, address(ext_call.return_data[0]), 128, mem[_4478 + 164 len mem[_4478] + 32]
                            else:
                                mem[floor32(mem[_4478]) + _4478 + 196] = mem[floor32(mem[_4478]) + _4478 + -(mem[_4478] % 32) + 228 len mem[_4478] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4454, address(ext_call.return_data[0]), 128, mem[_4478], mem[_4478 + 196 len floor32(mem[_4478]) + 32]
                        else:
                            _4482 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4482 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4482 + 36] = 0
                            mem[_4482 + 68] = _4454
                            mem[_4482 + 100] = address(cd[68])
                            mem[_4482 + 132] = 128
                            mem[_4482 + 164] = mem[_4482]
                            s = 0
                            while s < mem[_4482]:
                                mem[s + _4482 + 196] = mem[s + _4482 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4482] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4454, address(cd[68]), 128, mem[_4482 + 164 len mem[_4482] + 32]
                            else:
                                mem[floor32(mem[_4482]) + _4482 + 196] = mem[floor32(mem[_4482]) + _4482 + -(mem[_4482] % 32) + 228 len mem[_4482] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4454, address(cd[68]), 128, mem[_4482], mem[_4482 + 196 len floor32(mem[_4482]) + 32]
                    else:
                        if idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160] - 2:
                            _4486 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4486 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4486 + 36] = _4454
                            mem[_4486 + 68] = 0
                            mem[_4486 + 100] = address(ext_call.return_data[0])
                            mem[_4486 + 132] = 128
                            mem[_4486 + 164] = mem[_4486]
                            s = 0
                            while s < mem[_4486]:
                                mem[s + _4486 + 196] = mem[s + _4486 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4486] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4454, 0, address(ext_call.return_data[0]), 128, mem[_4486 + 164 len mem[_4486] + 32]
                            else:
                                mem[floor32(mem[_4486]) + _4486 + 196] = mem[floor32(mem[_4486]) + _4486 + -(mem[_4486] % 32) + 228 len mem[_4486] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4454, 0, address(ext_call.return_data[0]), 128, mem[_4486], mem[_4486 + 196 len floor32(mem[_4486]) + 32]
                        else:
                            _4490 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4490 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4490 + 36] = _4454
                            mem[_4490 + 68] = 0
                            mem[_4490 + 100] = address(cd[68])
                            mem[_4490 + 132] = 128
                            mem[_4490 + 164] = mem[_4490]
                            s = 0
                            while s < mem[_4490]:
                                mem[s + _4490 + 196] = mem[s + _4490 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4490] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4454, 0, address(cd[68]), 128, mem[_4490 + 164 len mem[_4490] + 32]
                            else:
                                mem[floor32(mem[_4490]) + _4490 + 196] = mem[floor32(mem[_4490]) + _4490 + -(mem[_4490] % 32) + 228 len mem[_4490] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4454, 0, address(cd[68]), 128, mem[_4490], mem[_4490 + 196 len floor32(mem[_4490]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4455 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20] == mem[(32 * idx + 1) + (32 * _3222) + _2556 + ceil32(return_data.size) + 204 len 20]:
                        if idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160] - 2:
                            _4494 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4494 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4494 + 36] = 0
                            mem[_4494 + 68] = _4455
                            mem[_4494 + 100] = address(ext_call.return_data[0])
                            mem[_4494 + 132] = 128
                            mem[_4494 + 164] = mem[_4494]
                            s = 0
                            while s < mem[_4494]:
                                mem[s + _4494 + 196] = mem[s + _4494 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4494] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4455, address(ext_call.return_data[0]), 128, mem[_4494 + 164 len mem[_4494] + 32]
                            else:
                                mem[floor32(mem[_4494]) + _4494 + 196] = mem[floor32(mem[_4494]) + _4494 + -(mem[_4494] % 32) + 228 len mem[_4494] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4455, address(ext_call.return_data[0]), 128, mem[_4494], mem[_4494 + 196 len floor32(mem[_4494]) + 32]
                        else:
                            _4498 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4498 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4498 + 36] = 0
                            mem[_4498 + 68] = _4455
                            mem[_4498 + 100] = address(cd[68])
                            mem[_4498 + 132] = 128
                            mem[_4498 + 164] = mem[_4498]
                            s = 0
                            while s < mem[_4498]:
                                mem[s + _4498 + 196] = mem[s + _4498 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4498] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4455, address(cd[68]), 128, mem[_4498 + 164 len mem[_4498] + 32]
                            else:
                                mem[floor32(mem[_4498]) + _4498 + 196] = mem[floor32(mem[_4498]) + _4498 + -(mem[_4498] % 32) + 228 len mem[_4498] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4455, address(cd[68]), 128, mem[_4498], mem[_4498 + 196 len floor32(mem[_4498]) + 32]
                    else:
                        if idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160] - 2:
                            _4502 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4502 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4502 + 36] = _4455
                            mem[_4502 + 68] = 0
                            mem[_4502 + 100] = address(ext_call.return_data[0])
                            mem[_4502 + 132] = 128
                            mem[_4502 + 164] = mem[_4502]
                            s = 0
                            while s < mem[_4502]:
                                mem[s + _4502 + 196] = mem[s + _4502 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4502] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4455, 0, address(ext_call.return_data[0]), 128, mem[_4502 + 164 len mem[_4502] + 32]
                            else:
                                mem[floor32(mem[_4502]) + _4502 + 196] = mem[floor32(mem[_4502]) + _4502 + -(mem[_4502] % 32) + 228 len mem[_4502] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4455, 0, address(ext_call.return_data[0]), 128, mem[_4502], mem[_4502 + 196 len floor32(mem[_4502]) + 32]
                        else:
                            _4506 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4506 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4506 + 36] = _4455
                            mem[_4506 + 68] = 0
                            mem[_4506 + 100] = address(cd[68])
                            mem[_4506 + 132] = 128
                            mem[_4506 + 164] = mem[_4506]
                            s = 0
                            while s < mem[_4506]:
                                mem[s + _4506 + 196] = mem[s + _4506 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4506] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4455, 0, address(cd[68]), 128, mem[_4506 + 164 len mem[_4506] + 32]
                            else:
                                mem[floor32(mem[_4506]) + _4506 + 196] = mem[floor32(mem[_4506]) + _4506 + -(mem[_4506] % 32) + 228 len mem[_4506] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4455, 0, address(cd[68]), 128, mem[_4506], mem[_4506 + 196 len floor32(mem[_4506]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 160] = return_data.size
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
            require mem[96] - 1 < mem[96]
            _4049 = mem[(32 * mem[96] - 1) + 128]
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = _4049
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _4049
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[64] = (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 193
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = ('cd', 36).length
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 193] = 0
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 161]
                require idx + 1 < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 161]
                if mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20] == mem[(32 * idx + 1) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20] < mem[(32 * idx + 1) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                    if not mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4456 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20] == mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                        if idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 161] - 2:
                            _4510 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4510 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4510 + 36] = 0
                            mem[_4510 + 68] = _4456
                            mem[_4510 + 100] = address(ext_call.return_data[0])
                            mem[_4510 + 132] = 128
                            mem[_4510 + 164] = mem[_4510]
                            s = 0
                            while s < mem[_4510]:
                                mem[s + _4510 + 196] = mem[s + _4510 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4510] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4456, address(ext_call.return_data[0]), 128, mem[_4510 + 164 len mem[_4510] + 32]
                            else:
                                mem[floor32(mem[_4510]) + _4510 + 196] = mem[floor32(mem[_4510]) + _4510 + -(mem[_4510] % 32) + 228 len mem[_4510] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4456, address(ext_call.return_data[0]), 128, mem[_4510], mem[_4510 + 196 len floor32(mem[_4510]) + 32]
                        else:
                            _4514 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4514 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4514 + 36] = 0
                            mem[_4514 + 68] = _4456
                            mem[_4514 + 100] = address(cd[68])
                            mem[_4514 + 132] = 128
                            mem[_4514 + 164] = mem[_4514]
                            s = 0
                            while s < mem[_4514]:
                                mem[s + _4514 + 196] = mem[s + _4514 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4514] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4456, address(cd[68]), 128, mem[_4514 + 164 len mem[_4514] + 32]
                            else:
                                mem[floor32(mem[_4514]) + _4514 + 196] = mem[floor32(mem[_4514]) + _4514 + -(mem[_4514] % 32) + 228 len mem[_4514] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4456, address(cd[68]), 128, mem[_4514], mem[_4514 + 196 len floor32(mem[_4514]) + 32]
                    else:
                        if idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 161] - 2:
                            _4518 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4518 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4518 + 36] = _4456
                            mem[_4518 + 68] = 0
                            mem[_4518 + 100] = address(ext_call.return_data[0])
                            mem[_4518 + 132] = 128
                            mem[_4518 + 164] = mem[_4518]
                            s = 0
                            while s < mem[_4518]:
                                mem[s + _4518 + 196] = mem[s + _4518 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4518] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4456, 0, address(ext_call.return_data[0]), 128, mem[_4518 + 164 len mem[_4518] + 32]
                            else:
                                mem[floor32(mem[_4518]) + _4518 + 196] = mem[floor32(mem[_4518]) + _4518 + -(mem[_4518] % 32) + 228 len mem[_4518] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4456, 0, address(ext_call.return_data[0]), 128, mem[_4518], mem[_4518 + 196 len floor32(mem[_4518]) + 32]
                        else:
                            _4522 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4522 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4522 + 36] = _4456
                            mem[_4522 + 68] = 0
                            mem[_4522 + 100] = address(cd[68])
                            mem[_4522 + 132] = 128
                            mem[_4522 + 164] = mem[_4522]
                            s = 0
                            while s < mem[_4522]:
                                mem[s + _4522 + 196] = mem[s + _4522 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4522] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4456, 0, address(cd[68]), 128, mem[_4522 + 164 len mem[_4522] + 32]
                            else:
                                mem[floor32(mem[_4522]) + _4522 + 196] = mem[floor32(mem[_4522]) + _4522 + -(mem[_4522] % 32) + 228 len mem[_4522] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4456, 0, address(cd[68]), 128, mem[_4522], mem[_4522 + 196 len floor32(mem[_4522]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4457 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20] == mem[(32 * idx + 1) + (32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                        if idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 161] - 2:
                            _4526 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4526 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4526 + 36] = 0
                            mem[_4526 + 68] = _4457
                            mem[_4526 + 100] = address(ext_call.return_data[0])
                            mem[_4526 + 132] = 128
                            mem[_4526 + 164] = mem[_4526]
                            s = 0
                            while s < mem[_4526]:
                                mem[s + _4526 + 196] = mem[s + _4526 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4526] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4457, address(ext_call.return_data[0]), 128, mem[_4526 + 164 len mem[_4526] + 32]
                            else:
                                mem[floor32(mem[_4526]) + _4526 + 196] = mem[floor32(mem[_4526]) + _4526 + -(mem[_4526] % 32) + 228 len mem[_4526] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4457, address(ext_call.return_data[0]), 128, mem[_4526], mem[_4526 + 196 len floor32(mem[_4526]) + 32]
                        else:
                            _4530 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4530 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4530 + 36] = 0
                            mem[_4530 + 68] = _4457
                            mem[_4530 + 100] = address(cd[68])
                            mem[_4530 + 132] = 128
                            mem[_4530 + 164] = mem[_4530]
                            s = 0
                            while s < mem[_4530]:
                                mem[s + _4530 + 196] = mem[s + _4530 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4530] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4457, address(cd[68]), 128, mem[_4530 + 164 len mem[_4530] + 32]
                            else:
                                mem[floor32(mem[_4530]) + _4530 + 196] = mem[floor32(mem[_4530]) + _4530 + -(mem[_4530] % 32) + 228 len mem[_4530] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4457, address(cd[68]), 128, mem[_4530], mem[_4530 + 196 len floor32(mem[_4530]) + 32]
                    else:
                        if idx < mem[(32 * _3222) + _2556 + ceil32(return_data.size) + ceil32(return_data.size) + 161] - 2:
                            _4534 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4534 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4534 + 36] = _4457
                            mem[_4534 + 68] = 0
                            mem[_4534 + 100] = address(ext_call.return_data[0])
                            mem[_4534 + 132] = 128
                            mem[_4534 + 164] = mem[_4534]
                            s = 0
                            while s < mem[_4534]:
                                mem[s + _4534 + 196] = mem[s + _4534 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4534] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4457, 0, address(ext_call.return_data[0]), 128, mem[_4534 + 164 len mem[_4534] + 32]
                            else:
                                mem[floor32(mem[_4534]) + _4534 + 196] = mem[floor32(mem[_4534]) + _4534 + -(mem[_4534] % 32) + 228 len mem[_4534] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4457, 0, address(ext_call.return_data[0]), 128, mem[_4534], mem[_4534 + 196 len floor32(mem[_4534]) + 32]
                        else:
                            _4538 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4538 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4538 + 36] = _4457
                            mem[_4538 + 68] = 0
                            mem[_4538 + 100] = address(cd[68])
                            mem[_4538 + 132] = 128
                            mem[_4538 + 164] = mem[_4538]
                            s = 0
                            while s < mem[_4538]:
                                mem[s + _4538 + 196] = mem[s + _4538 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4538] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4457, 0, address(cd[68]), 128, mem[_4538 + 164 len mem[_4538] + 32]
                            else:
                                mem[floor32(mem[_4538]) + _4538 + 196] = mem[floor32(mem[_4538]) + _4538 + -(mem[_4538] % 32) + 228 len mem[_4538] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4457, 0, address(cd[68]), 128, mem[_4538], mem[_4538 + 196 len floor32(mem[_4538]) + 32]
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
            _1286 = mem[(32 * idx) + 128]
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
                if address(_1286) == address(_1286):
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                if address(_1293) == address(_1286):
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[0])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / 10000 != Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[0]) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
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
                    require 1 < mem[(32 * ('cd', 36).length) + 128]
                    require 0 < ('cd', 36).length
                    mem[128] = mem[(32 * ('cd', 36).length) + 192]
                    require 0 < ('cd', 36).length
                    if mem[(32 * ('cd', 36).length) + 192] <= 0:
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
                    if 9975 * mem[(32 * ('cd', 36).length) + 192] / 9975 != mem[(32 * ('cd', 36).length) + 192]:
                        revert with 0, 'ds-math-mul-overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 0 / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                    else:
                        require Mask(112, 0, ext_call.return_data[32])
                        if 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 9975 * mem[(32 * ('cd', 36).length) + 192]:
                            revert with 0, 'ds-math-mul-overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / 10000 != Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-mul-overflow'
                        if (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'ds-math-add-overflow'
                        require (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
                        require 1 < ('cd', 36).length
                        mem[160] = 9975 * mem[(32 * ('cd', 36).length) + 192] * Mask(112, 0, ext_call.return_data[32]) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (9975 * mem[(32 * ('cd', 36).length) + 192])
            idx = idx + 1
            continue 
        require mem[(32 * ('cd', 36).length) + 128] - 1 < mem[(32 * ('cd', 36).length) + 128]
        if mem[(32 * mem[(32 * ('cd', 36).length) + 128] - 1) + (32 * ('cd', 36).length) + 160] < cd[4]:
            revert with 0, '-,'
        require 1 < ('cd', 36).length
        if mem[160] < msg.value * cd[100] / 100:
            revert with 0, '-,'
        require mem[(32 * ('cd', 36).length) + 128]
        _1321 = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 160] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(WETHAddress)
        call WETHAddress.deposit() with:
           value _1321 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[(32 * ('cd', 36).length) + 128]
        _1343 = mem[(32 * ('cd', 36).length) + 160]
        mem[(64 * ('cd', 36).length) + 164] = address(ext_call.return_data[0])
        mem[(64 * ('cd', 36).length) + 196] = _1343
        require ext_code.size(WETHAddress)
        call WETHAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _1343
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[64] = (98 * ('cd', 36).length) + 192
        mem[(64 * ('cd', 36).length) + 160] = ('cd', 36).length
        mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(98 * ('cd', 36).length) + 192] = 0
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx < mem[(64 * ('cd', 36).length) + 160]
            require idx + 1 < mem[(64 * ('cd', 36).length) + 160]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
            if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] < mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                if not mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2594 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _2646 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2646 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2646 + 36] = 0
                        mem[_2646 + 68] = _2594
                        mem[_2646 + 100] = address(ext_call.return_data[0])
                        mem[_2646 + 132] = 128
                        mem[_2646 + 164] = mem[_2646]
                        s = 0
                        while s < mem[_2646]:
                            mem[s + _2646 + 196] = mem[s + _2646 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2646] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2594, address(ext_call.return_data[0]), 128, mem[_2646 + 164 len mem[_2646] + 32]
                        else:
                            mem[floor32(mem[_2646]) + _2646 + 196] = mem[floor32(mem[_2646]) + _2646 + -(mem[_2646] % 32) + 228 len mem[_2646] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2594, address(ext_call.return_data[0]), 128, mem[_2646], mem[_2646 + 196 len floor32(mem[_2646]) + 32]
                    else:
                        _2650 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2650 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2650 + 36] = 0
                        mem[_2650 + 68] = _2594
                        mem[_2650 + 100] = address(cd[68])
                        mem[_2650 + 132] = 128
                        mem[_2650 + 164] = mem[_2650]
                        s = 0
                        while s < mem[_2650]:
                            mem[s + _2650 + 196] = mem[s + _2650 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2650] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2594, address(cd[68]), 128, mem[_2650 + 164 len mem[_2650] + 32]
                        else:
                            mem[floor32(mem[_2650]) + _2650 + 196] = mem[floor32(mem[_2650]) + _2650 + -(mem[_2650] % 32) + 228 len mem[_2650] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2594, address(cd[68]), 128, mem[_2650], mem[_2650 + 196 len floor32(mem[_2650]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _2654 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2654 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2654 + 36] = _2594
                        mem[_2654 + 68] = 0
                        mem[_2654 + 100] = address(ext_call.return_data[0])
                        mem[_2654 + 132] = 128
                        mem[_2654 + 164] = mem[_2654]
                        s = 0
                        while s < mem[_2654]:
                            mem[s + _2654 + 196] = mem[s + _2654 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2654] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2594, 0, address(ext_call.return_data[0]), 128, mem[_2654 + 164 len mem[_2654] + 32]
                        else:
                            mem[floor32(mem[_2654]) + _2654 + 196] = mem[floor32(mem[_2654]) + _2654 + -(mem[_2654] % 32) + 228 len mem[_2654] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2594, 0, address(ext_call.return_data[0]), 128, mem[_2654], mem[_2654 + 196 len floor32(mem[_2654]) + 32]
                    else:
                        _2658 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2658 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2658 + 36] = _2594
                        mem[_2658 + 68] = 0
                        mem[_2658 + 100] = address(cd[68])
                        mem[_2658 + 132] = 128
                        mem[_2658 + 164] = mem[_2658]
                        s = 0
                        while s < mem[_2658]:
                            mem[s + _2658 + 196] = mem[s + _2658 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2658] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2594, 0, address(cd[68]), 128, mem[_2658 + 164 len mem[_2658] + 32]
                        else:
                            mem[floor32(mem[_2658]) + _2658 + 196] = mem[floor32(mem[_2658]) + _2658 + -(mem[_2658] % 32) + 228 len mem[_2658] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2594, 0, address(cd[68]), 128, mem[_2658], mem[_2658 + 196 len floor32(mem[_2658]) + 32]
            else:
                if not mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                require idx + 1 < mem[(32 * ('cd', 36).length) + 128]
                _2595 = mem[(32 * idx + 1) + (32 * ('cd', 36).length) + 160]
                if mem[(32 * idx) + (64 * ('cd', 36).length) + 204 len 20] == mem[(32 * idx + 1) + (64 * ('cd', 36).length) + 204 len 20]:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _2662 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2662 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2662 + 36] = 0
                        mem[_2662 + 68] = _2595
                        mem[_2662 + 100] = address(ext_call.return_data[0])
                        mem[_2662 + 132] = 128
                        mem[_2662 + 164] = mem[_2662]
                        s = 0
                        while s < mem[_2662]:
                            mem[s + _2662 + 196] = mem[s + _2662 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2662] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2595, address(ext_call.return_data[0]), 128, mem[_2662 + 164 len mem[_2662] + 32]
                        else:
                            mem[floor32(mem[_2662]) + _2662 + 196] = mem[floor32(mem[_2662]) + _2662 + -(mem[_2662] % 32) + 228 len mem[_2662] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2595, address(ext_call.return_data[0]), 128, mem[_2662], mem[_2662 + 196 len floor32(mem[_2662]) + 32]
                    else:
                        _2666 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2666 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2666 + 36] = 0
                        mem[_2666 + 68] = _2595
                        mem[_2666 + 100] = address(cd[68])
                        mem[_2666 + 132] = 128
                        mem[_2666 + 164] = mem[_2666]
                        s = 0
                        while s < mem[_2666]:
                            mem[s + _2666 + 196] = mem[s + _2666 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2666] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2595, address(cd[68]), 128, mem[_2666 + 164 len mem[_2666] + 32]
                        else:
                            mem[floor32(mem[_2666]) + _2666 + 196] = mem[floor32(mem[_2666]) + _2666 + -(mem[_2666] % 32) + 228 len mem[_2666] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _2595, address(cd[68]), 128, mem[_2666], mem[_2666 + 196 len floor32(mem[_2666]) + 32]
                else:
                    if idx < mem[(64 * ('cd', 36).length) + 160] - 2:
                        _2670 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2670 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2670 + 36] = _2595
                        mem[_2670 + 68] = 0
                        mem[_2670 + 100] = address(ext_call.return_data[0])
                        mem[_2670 + 132] = 128
                        mem[_2670 + 164] = mem[_2670]
                        s = 0
                        while s < mem[_2670]:
                            mem[s + _2670 + 196] = mem[s + _2670 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2670] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2595, 0, address(ext_call.return_data[0]), 128, mem[_2670 + 164 len mem[_2670] + 32]
                        else:
                            mem[floor32(mem[_2670]) + _2670 + 196] = mem[floor32(mem[_2670]) + _2670 + -(mem[_2670] % 32) + 228 len mem[_2670] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2595, 0, address(ext_call.return_data[0]), 128, mem[_2670], mem[_2670 + 196 len floor32(mem[_2670]) + 32]
                    else:
                        _2674 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_2674 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_2674 + 36] = _2595
                        mem[_2674 + 68] = 0
                        mem[_2674 + 100] = address(cd[68])
                        mem[_2674 + 132] = 128
                        mem[_2674 + 164] = mem[_2674]
                        s = 0
                        while s < mem[_2674]:
                            mem[s + _2674 + 196] = mem[s + _2674 + 32]
                            s = s + 32
                            continue 
                        if not mem[_2674] % 32:
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2595, 0, address(cd[68]), 128, mem[_2674 + 164 len mem[_2674] + 32]
                        else:
                            mem[floor32(mem[_2674]) + _2674 + 196] = mem[floor32(mem[_2674]) + _2674 + -(mem[_2674] % 32) + 228 len mem[_2674] % 32]
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _2595, 0, address(cd[68]), 128, mem[_2674], mem[_2674 + 196 len floor32(mem[_2674]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require 1 < mem[96]
        if mem[160] < msg.value * cd[132] / 100:
            revert with 0, '-,'
        _2559 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 1 < ('cd', 36).length
        require 0 < mem[_2559]
        mem[_2559 + 32] = address(('cd', 36)[1])
        require 0 < ('cd', 36).length
        require 1 < mem[_2559]
        mem[_2559 + 64] = address(('cd', 36)[0])
        require 1 < mem[96]
        _2586 = mem[160]
        mem[_2559 + 96] = 0x3f4e48bb00000000000000000000000000000000000000000000000000000000
        mem[_2559 + 100] = address(ext_call.return_data[0])
        mem[_2559 + 132] = _2586
        mem[_2559 + 164] = msg.value * cd[132] / 100
        mem[_2559 + 228] = this.address
        mem[_2559 + 196] = 160
        mem[_2559 + 260] = mem[_2559]
        mem[_2559 + 292 len floor32(mem[_2559])] = mem[_2559 + 32 len floor32(mem[_2559])]
        require ext_code.size(this.address)
        call this.address.0x3f4e48bb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), _2586, msg.value * cd[132] / 100, 160, address(this.address), mem[_2559 + 260 len (32 * mem[_2559]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_2559 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _2559 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        _3218 = mem[_2559 + 96 len 4], address(ext_call.return_data[0]) << 64
        require mem[_2559 + 96 len 4], address(ext_call.return_data[0]) << 64 <= 4294967296
        require mem[_2559 + 96 len 4], address(ext_call.return_data[0]) << 64 + 32 <= return_data.size
        require mem[_2559 + mem[_2559 + 96 len 4], address(ext_call.return_data[0]) << 64 + 96] <= 4294967296 and mem[_2559 + 96 len 4], address(ext_call.return_data[0]) << 64 + (32 * mem[_2559 + mem[_2559 + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]) + 32 <= return_data.size
        mem[_2559 + ceil32(return_data.size) + 96] = mem[_2559 + mem[_2559 + 96 len 4], address(ext_call.return_data[0]) << 64 + 96]
        _3223 = mem[_2559 + _3218 + 96]
        mem[_2559 + ceil32(return_data.size) + 128 len floor32(mem[_2559 + _3218 + 96])] = mem[_2559 + _3218 + 128 len floor32(mem[_2559 + _3218 + 96])]
        require mem[96] - 1 < mem[96]
        _3631 = mem[(32 * mem[96] - 1) + 128]
        mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 128] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
        mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 132] = _3631
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args _3631
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require mem[96] - 1 < mem[96]
        _3639 = mem[(32 * mem[96] - 1) + 128]
        mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 128] = 0
        mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160 len 0] = None
        mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160] = None or uint32(_3631), mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 164 len 28]
        call this.address with:
           value _3639 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 263 len 29]
            require mem[96] - 1 < mem[96]
            _4052 = mem[(32 * mem[96] - 1) + 128]
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 164] = address(ext_call.return_data[0])
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 196] = _4052
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _4052
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[64] = (32 * _3223) + _2559 + ceil32(return_data.size) + (32 * ('cd', 36).length) + 192
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160] = ('cd', 36).length
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 192 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + (32 * ('cd', 36).length) + 192] = 0
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160]
                require idx + 1 < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160]
                if mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20] == mem[(32 * idx + 1) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20] < mem[(32 * idx + 1) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20]:
                    if not mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4458 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20] == mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20]:
                        if idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160] - 2:
                            _4542 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4542 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4542 + 36] = 0
                            mem[_4542 + 68] = _4458
                            mem[_4542 + 100] = address(ext_call.return_data[0])
                            mem[_4542 + 132] = 128
                            mem[_4542 + 164] = mem[_4542]
                            s = 0
                            while s < mem[_4542]:
                                mem[s + _4542 + 196] = mem[s + _4542 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4542] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4458, address(ext_call.return_data[0]), 128, mem[_4542 + 164 len mem[_4542] + 32]
                            else:
                                mem[floor32(mem[_4542]) + _4542 + 196] = mem[floor32(mem[_4542]) + _4542 + -(mem[_4542] % 32) + 228 len mem[_4542] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4458, address(ext_call.return_data[0]), 128, mem[_4542], mem[_4542 + 196 len floor32(mem[_4542]) + 32]
                        else:
                            _4546 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4546 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4546 + 36] = 0
                            mem[_4546 + 68] = _4458
                            mem[_4546 + 100] = address(cd[68])
                            mem[_4546 + 132] = 128
                            mem[_4546 + 164] = mem[_4546]
                            s = 0
                            while s < mem[_4546]:
                                mem[s + _4546 + 196] = mem[s + _4546 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4546] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4458, address(cd[68]), 128, mem[_4546 + 164 len mem[_4546] + 32]
                            else:
                                mem[floor32(mem[_4546]) + _4546 + 196] = mem[floor32(mem[_4546]) + _4546 + -(mem[_4546] % 32) + 228 len mem[_4546] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4458, address(cd[68]), 128, mem[_4546], mem[_4546 + 196 len floor32(mem[_4546]) + 32]
                    else:
                        if idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160] - 2:
                            _4550 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4550 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4550 + 36] = _4458
                            mem[_4550 + 68] = 0
                            mem[_4550 + 100] = address(ext_call.return_data[0])
                            mem[_4550 + 132] = 128
                            mem[_4550 + 164] = mem[_4550]
                            s = 0
                            while s < mem[_4550]:
                                mem[s + _4550 + 196] = mem[s + _4550 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4550] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4458, 0, address(ext_call.return_data[0]), 128, mem[_4550 + 164 len mem[_4550] + 32]
                            else:
                                mem[floor32(mem[_4550]) + _4550 + 196] = mem[floor32(mem[_4550]) + _4550 + -(mem[_4550] % 32) + 228 len mem[_4550] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4458, 0, address(ext_call.return_data[0]), 128, mem[_4550], mem[_4550 + 196 len floor32(mem[_4550]) + 32]
                        else:
                            _4554 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4554 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4554 + 36] = _4458
                            mem[_4554 + 68] = 0
                            mem[_4554 + 100] = address(cd[68])
                            mem[_4554 + 132] = 128
                            mem[_4554 + 164] = mem[_4554]
                            s = 0
                            while s < mem[_4554]:
                                mem[s + _4554 + 196] = mem[s + _4554 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4554] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4458, 0, address(cd[68]), 128, mem[_4554 + 164 len mem[_4554] + 32]
                            else:
                                mem[floor32(mem[_4554]) + _4554 + 196] = mem[floor32(mem[_4554]) + _4554 + -(mem[_4554] % 32) + 228 len mem[_4554] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4458, 0, address(cd[68]), 128, mem[_4554], mem[_4554 + 196 len floor32(mem[_4554]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4459 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20] == mem[(32 * idx + 1) + (32 * _3223) + _2559 + ceil32(return_data.size) + 204 len 20]:
                        if idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160] - 2:
                            _4558 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4558 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4558 + 36] = 0
                            mem[_4558 + 68] = _4459
                            mem[_4558 + 100] = address(ext_call.return_data[0])
                            mem[_4558 + 132] = 128
                            mem[_4558 + 164] = mem[_4558]
                            s = 0
                            while s < mem[_4558]:
                                mem[s + _4558 + 196] = mem[s + _4558 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4558] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4459, address(ext_call.return_data[0]), 128, mem[_4558 + 164 len mem[_4558] + 32]
                            else:
                                mem[floor32(mem[_4558]) + _4558 + 196] = mem[floor32(mem[_4558]) + _4558 + -(mem[_4558] % 32) + 228 len mem[_4558] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4459, address(ext_call.return_data[0]), 128, mem[_4558], mem[_4558 + 196 len floor32(mem[_4558]) + 32]
                        else:
                            _4562 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4562 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4562 + 36] = 0
                            mem[_4562 + 68] = _4459
                            mem[_4562 + 100] = address(cd[68])
                            mem[_4562 + 132] = 128
                            mem[_4562 + 164] = mem[_4562]
                            s = 0
                            while s < mem[_4562]:
                                mem[s + _4562 + 196] = mem[s + _4562 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4562] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4459, address(cd[68]), 128, mem[_4562 + 164 len mem[_4562] + 32]
                            else:
                                mem[floor32(mem[_4562]) + _4562 + 196] = mem[floor32(mem[_4562]) + _4562 + -(mem[_4562] % 32) + 228 len mem[_4562] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4459, address(cd[68]), 128, mem[_4562], mem[_4562 + 196 len floor32(mem[_4562]) + 32]
                    else:
                        if idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160] - 2:
                            _4566 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4566 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4566 + 36] = _4459
                            mem[_4566 + 68] = 0
                            mem[_4566 + 100] = address(ext_call.return_data[0])
                            mem[_4566 + 132] = 128
                            mem[_4566 + 164] = mem[_4566]
                            s = 0
                            while s < mem[_4566]:
                                mem[s + _4566 + 196] = mem[s + _4566 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4566] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4459, 0, address(ext_call.return_data[0]), 128, mem[_4566 + 164 len mem[_4566] + 32]
                            else:
                                mem[floor32(mem[_4566]) + _4566 + 196] = mem[floor32(mem[_4566]) + _4566 + -(mem[_4566] % 32) + 228 len mem[_4566] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4459, 0, address(ext_call.return_data[0]), 128, mem[_4566], mem[_4566 + 196 len floor32(mem[_4566]) + 32]
                        else:
                            _4570 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4570 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4570 + 36] = _4459
                            mem[_4570 + 68] = 0
                            mem[_4570 + 100] = address(cd[68])
                            mem[_4570 + 132] = 128
                            mem[_4570 + 164] = mem[_4570]
                            s = 0
                            while s < mem[_4570]:
                                mem[s + _4570 + 196] = mem[s + _4570 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4570] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4459, 0, address(cd[68]), 128, mem[_4570 + 164 len mem[_4570] + 32]
                            else:
                                mem[floor32(mem[_4570]) + _4570 + 196] = mem[floor32(mem[_4570]) + _4570 + -(mem[_4570] % 32) + 228 len mem[_4570] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4459, 0, address(cd[68]), 128, mem[_4570], mem[_4570 + 196 len floor32(mem[_4570]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 160] = return_data.size
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            35,
                            0x535472616e7366657248656c7065723a204554485f5452414e534645525f4641494c45,
                            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 264 len 29]
            require mem[96] - 1 < mem[96]
            _4055 = mem[(32 * mem[96] - 1) + 128]
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = _4055
            require ext_code.size(WETHAddress)
            call WETHAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), _4055
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            mem[64] = (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 193
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 161] = ('cd', 36).length
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 193 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 193] = 0
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 161]
                require idx + 1 < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 161]
                if mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20] == mem[(32 * idx + 1) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                    revert with 0, 32, 35, 0x2150616e63616b654c6962726172793a204944454e544943414c5f4144445245535345, mem[mem[64] + 103 len 29]
                if mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20] < mem[(32 * idx + 1) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                    if not mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4460 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20] == mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                        if idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 161] - 2:
                            _4574 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4574 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4574 + 36] = 0
                            mem[_4574 + 68] = _4460
                            mem[_4574 + 100] = address(ext_call.return_data[0])
                            mem[_4574 + 132] = 128
                            mem[_4574 + 164] = mem[_4574]
                            s = 0
                            while s < mem[_4574]:
                                mem[s + _4574 + 196] = mem[s + _4574 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4574] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4460, address(ext_call.return_data[0]), 128, mem[_4574 + 164 len mem[_4574] + 32]
                            else:
                                mem[floor32(mem[_4574]) + _4574 + 196] = mem[floor32(mem[_4574]) + _4574 + -(mem[_4574] % 32) + 228 len mem[_4574] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4460, address(ext_call.return_data[0]), 128, mem[_4574], mem[_4574 + 196 len floor32(mem[_4574]) + 32]
                        else:
                            _4578 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4578 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4578 + 36] = 0
                            mem[_4578 + 68] = _4460
                            mem[_4578 + 100] = address(cd[68])
                            mem[_4578 + 132] = 128
                            mem[_4578 + 164] = mem[_4578]
                            s = 0
                            while s < mem[_4578]:
                                mem[s + _4578 + 196] = mem[s + _4578 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4578] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4460, address(cd[68]), 128, mem[_4578 + 164 len mem[_4578] + 32]
                            else:
                                mem[floor32(mem[_4578]) + _4578 + 196] = mem[floor32(mem[_4578]) + _4578 + -(mem[_4578] % 32) + 228 len mem[_4578] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4460, address(cd[68]), 128, mem[_4578], mem[_4578 + 196 len floor32(mem[_4578]) + 32]
                    else:
                        if idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 161] - 2:
                            _4582 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4582 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4582 + 36] = _4460
                            mem[_4582 + 68] = 0
                            mem[_4582 + 100] = address(ext_call.return_data[0])
                            mem[_4582 + 132] = 128
                            mem[_4582 + 164] = mem[_4582]
                            s = 0
                            while s < mem[_4582]:
                                mem[s + _4582 + 196] = mem[s + _4582 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4582] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4460, 0, address(ext_call.return_data[0]), 128, mem[_4582 + 164 len mem[_4582] + 32]
                            else:
                                mem[floor32(mem[_4582]) + _4582 + 196] = mem[floor32(mem[_4582]) + _4582 + -(mem[_4582] % 32) + 228 len mem[_4582] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4460, 0, address(ext_call.return_data[0]), 128, mem[_4582], mem[_4582 + 196 len floor32(mem[_4582]) + 32]
                        else:
                            _4586 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4586 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4586 + 36] = _4460
                            mem[_4586 + 68] = 0
                            mem[_4586 + 100] = address(cd[68])
                            mem[_4586 + 132] = 128
                            mem[_4586 + 164] = mem[_4586]
                            s = 0
                            while s < mem[_4586]:
                                mem[s + _4586 + 196] = mem[s + _4586 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4586] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4460, 0, address(cd[68]), 128, mem[_4586 + 164 len mem[_4586] + 32]
                            else:
                                mem[floor32(mem[_4586]) + _4586 + 196] = mem[floor32(mem[_4586]) + _4586 + -(mem[_4586] % 32) + 228 len mem[_4586] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4460, 0, address(cd[68]), 128, mem[_4586], mem[_4586 + 196 len floor32(mem[_4586]) + 32]
                else:
                    if not mem[(32 * idx + 1) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                        revert with 0, 'PancakeLibrary: ZERO_ADDRESS'
                    require idx + 1 < mem[96]
                    _4461 = mem[(32 * idx + 1) + 128]
                    if mem[(32 * idx) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20] == mem[(32 * idx + 1) + (32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 205 len 20]:
                        if idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 161] - 2:
                            _4590 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4590 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4590 + 36] = 0
                            mem[_4590 + 68] = _4461
                            mem[_4590 + 100] = address(ext_call.return_data[0])
                            mem[_4590 + 132] = 128
                            mem[_4590 + 164] = mem[_4590]
                            s = 0
                            while s < mem[_4590]:
                                mem[s + _4590 + 196] = mem[s + _4590 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4590] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4461, address(ext_call.return_data[0]), 128, mem[_4590 + 164 len mem[_4590] + 32]
                            else:
                                mem[floor32(mem[_4590]) + _4590 + 196] = mem[floor32(mem[_4590]) + _4590 + -(mem[_4590] % 32) + 228 len mem[_4590] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4461, address(ext_call.return_data[0]), 128, mem[_4590], mem[_4590 + 196 len floor32(mem[_4590]) + 32]
                        else:
                            _4594 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4594 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4594 + 36] = 0
                            mem[_4594 + 68] = _4461
                            mem[_4594 + 100] = address(cd[68])
                            mem[_4594 + 132] = 128
                            mem[_4594 + 164] = mem[_4594]
                            s = 0
                            while s < mem[_4594]:
                                mem[s + _4594 + 196] = mem[s + _4594 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4594] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4461, address(cd[68]), 128, mem[_4594 + 164 len mem[_4594] + 32]
                            else:
                                mem[floor32(mem[_4594]) + _4594 + 196] = mem[floor32(mem[_4594]) + _4594 + -(mem[_4594] % 32) + 228 len mem[_4594] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4461, address(cd[68]), 128, mem[_4594], mem[_4594 + 196 len floor32(mem[_4594]) + 32]
                    else:
                        if idx < mem[(32 * _3223) + _2559 + ceil32(return_data.size) + ceil32(return_data.size) + 161] - 2:
                            _4598 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4598 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4598 + 36] = _4461
                            mem[_4598 + 68] = 0
                            mem[_4598 + 100] = address(ext_call.return_data[0])
                            mem[_4598 + 132] = 128
                            mem[_4598 + 164] = mem[_4598]
                            s = 0
                            while s < mem[_4598]:
                                mem[s + _4598 + 196] = mem[s + _4598 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4598] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4461, 0, address(ext_call.return_data[0]), 128, mem[_4598 + 164 len mem[_4598] + 32]
                            else:
                                mem[floor32(mem[_4598]) + _4598 + 196] = mem[floor32(mem[_4598]) + _4598 + -(mem[_4598] % 32) + 228 len mem[_4598] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4461, 0, address(ext_call.return_data[0]), 128, mem[_4598], mem[_4598 + 196 len floor32(mem[_4598]) + 32]
                        else:
                            _4602 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_4602 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_4602 + 36] = _4461
                            mem[_4602 + 68] = 0
                            mem[_4602 + 100] = address(cd[68])
                            mem[_4602 + 132] = 128
                            mem[_4602 + 164] = mem[_4602]
                            s = 0
                            while s < mem[_4602]:
                                mem[s + _4602 + 196] = mem[s + _4602 + 32]
                                s = s + 32
                                continue 
                            if not mem[_4602] % 32:
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4461, 0, address(cd[68]), 128, mem[_4602 + 164 len mem[_4602] + 32]
                            else:
                                mem[floor32(mem[_4602]) + _4602 + 196] = mem[floor32(mem[_4602]) + _4602 + -(mem[_4602] % 32) + 228 len mem[_4602] % 32]
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4461, 0, address(cd[68]), 128, mem[_4602], mem[_4602 + 196 len floor32(mem[_4602]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
}



}
