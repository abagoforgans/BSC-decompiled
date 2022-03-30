contract main {




// =====================  Runtime code  =====================


const ETH_ADDRESS = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


address stor0;
uint32 stor1;
address stor1;
uint256 stor1;
address stor3;
address sub_94960646Address;

function sub_94960646(?) payable {
    return sub_94960646Address
}

function _fallback() payable {
    revert
}

function getExpectedReturn(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if arg1 == arg2:
        mem[288 len 0] = None
        return arg3, Array(len=2, data=mem[288 len 64])
    if bool(Mask(1, 50, arg5)) != bool(Mask(1, 32, arg5)):
        if arg1 == arg2:
            mem[288 len 0] = None
            return arg3, Array(len=2, data=mem[288 len 64])
        if address(stor1) == arg1:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _24 = mem[96 len 4], address(arg1) << 64
            require 0, address(arg2) << 64 <= 4294967296
            require 0, address(arg2) << 64 + 32 <= return_data.size
            require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
            _72 = mem[0, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
            mem[(32 * _72) + ceil32(return_data.size) + 128] = _24
            mem[(32 * _72) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _72) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _72) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _24, 64, mem[(32 * _72) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if address(stor1) == arg2:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _36 = mem[96 len 4], address(arg1) << 64
            require 0, address(arg2) << 64 <= 4294967296
            require 0, address(arg2) << 64 + 32 <= return_data.size
            require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
            _85 = mem[0, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
            mem[(32 * _85) + ceil32(return_data.size) + 128] = _36
            mem[(32 * _85) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _85) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _85) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _36, 64, mem[(32 * _85) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not arg1:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _105 = mem[96 len 4], address(arg1) << 64
            require 0, address(arg2) << 64 <= 4294967296
            require 0, address(arg2) << 64 + 32 <= return_data.size
            require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
            _149 = mem[0, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
            mem[(32 * _149) + ceil32(return_data.size) + 128] = _105
            mem[(32 * _149) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _149) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _149) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _105, 64, mem[(32 * _149) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _108 = mem[96 len 4], address(arg1) << 64
            require 0, address(arg2) << 64 <= 4294967296
            require 0, address(arg2) << 64 + 32 <= return_data.size
            require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
            _150 = mem[0, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
            mem[(32 * _150) + ceil32(return_data.size) + 128] = _108
            mem[(32 * _150) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _150) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _150) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _108, 64, mem[(32 * _150) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not arg2:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _162 = mem[96 len 4], address(arg1) << 64
            require 0, address(arg2) << 64 <= 4294967296
            require 0, address(arg2) << 64 + 32 <= return_data.size
            require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
            _196 = mem[0, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
            mem[(32 * _196) + ceil32(return_data.size) + 128] = _162
            mem[(32 * _196) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _196) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _196) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _162, 64, mem[(32 * _196) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _165 = mem[96 len 4], address(arg1) << 64
            require 0, address(arg2) << 64 <= 4294967296
            require 0, address(arg2) << 64 + 32 <= return_data.size
            require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
            _197 = mem[0, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
            mem[(32 * _197) + ceil32(return_data.size) + 128] = _165
            mem[(32 * _197) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _197) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _197) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _165, 64, mem[(32 * _197) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if bool(Mask(1, 50, arg5)) != bool(Mask(1, 33, arg5)):
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _220 = mem[96 len 4], address(arg1) << 64
            require 0, address(arg2) << 64 <= 4294967296
            require 0, address(arg2) << 64 + 32 <= return_data.size
            require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
            _240 = mem[0, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
            mem[(32 * _240) + ceil32(return_data.size) + 128] = _220
            mem[(32 * _240) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _240) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _240) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _220, 64, mem[(32 * _240) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        require ext_code.size(stor0)
        staticcall stor0.getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(arg1), address(stor1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            mem[132] = arg2
            mem[164] = arg3
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, 0, address(arg2), arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _262 = mem[96 len 4], address(arg1) << 64
            require 0, address(arg2) << 64 <= 4294967296
            require 0, address(arg2) << 64 + 32 <= return_data.size
            require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
            _301 = mem[0, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
            mem[(32 * _301) + ceil32(return_data.size) + 128] = _262
            mem[(32 * _301) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _301) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _301) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _262, 64, mem[(32 * _301) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not arg1:
            if not address(stor1):
                if not arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _965 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1437 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1437) + ceil32(return_data.size) + 128] = _965
                        mem[(32 * _1437) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1437) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1437) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _965, 64, mem[(32 * _1437) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1108 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1627 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1627) + ceil32(return_data.size) + 128] = _1108
                        mem[(32 * _1627) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1627) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1627) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1108, 64, mem[(32 * _1627) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2171 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2631 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2631) + ceil32(return_data.size) + 192] = _2171
                    mem[(32 * _2631) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2631) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2631) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2171, 64, mem[(32 * _2631) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                            mem[100] = address(stor1)
                            mem[132] = arg2
                            mem[164] = 0
                            mem[196] = arg4
                            mem[228] = arg5
                            require ext_code.size(sub_94960646Address)
                            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                    gas gas_remaining wei
                                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 64
                            _1104 = mem[96 len 4], Mask(224, 0, stor1)
                            require uint32(stor1), address(arg2) << 64 <= 4294967296
                            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                            _1624 = mem[uint32(stor1), address(arg2) << 64 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                            mem[(32 * _1624) + ceil32(return_data.size) + 128] = _1104
                            mem[(32 * _1624) + ceil32(return_data.size) + 160] = 64
                            mem[(32 * _1624) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                            mem[(32 * _1624) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                            return _1104, 64, mem[(32 * _1624) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                        mem[128] = 'SafeMath: division by zero'
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[164] = address(stor1)
                        mem[196] = arg2
                        mem[228] = 0 / 997 * arg3
                        mem[260] = arg4
                        mem[292] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 160
                        require return_data.size >= 64
                        _2168 = mem[160 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                        _2630 = mem[uint32(stor1), address(arg2) << 64 + 160]
                        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                        mem[(32 * _2630) + ceil32(return_data.size) + 192] = _2168
                        mem[(32 * _2630) + ceil32(return_data.size) + 224] = 64
                        mem[(32 * _2630) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                        mem[(32 * _2630) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                        return _2168, 64, mem[(32 * _2630) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1258 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1818 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1818) + ceil32(return_data.size) + 128] = _1258
                        mem[(32 * _1818) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1818) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1818) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1258, 64, mem[(32 * _1818) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2346 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2770 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2770) + ceil32(return_data.size) + 192] = _2346
                    mem[(32 * _2770) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2770) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2770) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2346, 64, mem[(32 * _2770) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1254 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1815 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1815) + ceil32(return_data.size) + 128] = _1254
                        mem[(32 * _1815) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1815) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1815) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1254, 64, mem[(32 * _1815) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2343 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2769 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2769) + ceil32(return_data.size) + 192] = _2343
                    mem[(32 * _2769) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2769) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2769) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2343, 64, mem[(32 * _2769) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1431 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _1993 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _1993) + ceil32(return_data.size) + 128] = _1431
                    mem[(32 * _1993) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _1993) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _1993) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1431, 64, mem[(32 * _1993) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2486 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2875 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2875) + ceil32(return_data.size) + 192] = _2486
                mem[(32 * _2875) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2875) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2875) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2486, 64, mem[(32 * _2875) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(stor1):
                if not arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _987 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1457 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1457) + ceil32(return_data.size) + 128] = _987
                        mem[(32 * _1457) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1457) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1457) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _987, 64, mem[(32 * _1457) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1133 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1650 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1650) + ceil32(return_data.size) + 128] = _1133
                        mem[(32 * _1650) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1650) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1650) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1133, 64, mem[(32 * _1650) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2189 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2645 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2645) + ceil32(return_data.size) + 192] = _2189
                    mem[(32 * _2645) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2645) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2645) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2189, 64, mem[(32 * _2645) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                            mem[100] = address(stor1)
                            mem[132] = arg2
                            mem[164] = 0
                            mem[196] = arg4
                            mem[228] = arg5
                            require ext_code.size(sub_94960646Address)
                            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                    gas gas_remaining wei
                                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 64
                            _1129 = mem[96 len 4], Mask(224, 0, stor1)
                            require uint32(stor1), address(arg2) << 64 <= 4294967296
                            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                            _1647 = mem[uint32(stor1), address(arg2) << 64 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                            mem[(32 * _1647) + ceil32(return_data.size) + 128] = _1129
                            mem[(32 * _1647) + ceil32(return_data.size) + 160] = 64
                            mem[(32 * _1647) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                            mem[(32 * _1647) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                            return _1129, 64, mem[(32 * _1647) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                        mem[128] = 'SafeMath: division by zero'
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[164] = address(stor1)
                        mem[196] = arg2
                        mem[228] = 0 / 997 * arg3
                        mem[260] = arg4
                        mem[292] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 160
                        require return_data.size >= 64
                        _2186 = mem[160 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                        _2644 = mem[uint32(stor1), address(arg2) << 64 + 160]
                        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                        mem[(32 * _2644) + ceil32(return_data.size) + 192] = _2186
                        mem[(32 * _2644) + ceil32(return_data.size) + 224] = 64
                        mem[(32 * _2644) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                        mem[(32 * _2644) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                        return _2186, 64, mem[(32 * _2644) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1280 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1838 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1838) + ceil32(return_data.size) + 128] = _1280
                        mem[(32 * _1838) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1838) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1838) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1280, 64, mem[(32 * _1838) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2362 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2781 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2781) + ceil32(return_data.size) + 192] = _2362
                    mem[(32 * _2781) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2781) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2781) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2362, 64, mem[(32 * _2781) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1276 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1835 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1835) + ceil32(return_data.size) + 128] = _1276
                        mem[(32 * _1835) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1835) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1835) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1276, 64, mem[(32 * _1835) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2359 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2780 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2780) + ceil32(return_data.size) + 192] = _2359
                    mem[(32 * _2780) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2780) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2780) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2359, 64, mem[(32 * _2780) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1451 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2007 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2007) + ceil32(return_data.size) + 128] = _1451
                    mem[(32 * _2007) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2007) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2007) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1451, 64, mem[(32 * _2007) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2498 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2883 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2883) + ceil32(return_data.size) + 192] = _2498
                mem[(32 * _2883) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2883) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2883) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2498, 64, mem[(32 * _2883) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            require ext_code.size(address(stor1))
            staticcall address(stor1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                if not eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1448 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2006 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2006) + ceil32(return_data.size) + 128] = _1448
                    mem[(32 * _2006) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2006) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2006) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1448, 64, mem[(32 * _2006) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1641 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2179 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2179) + ceil32(return_data.size) + 128] = _1641
                    mem[(32 * _2179) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2179) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2179) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1641, 64, mem[(32 * _2179) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2639 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2983 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2983) + ceil32(return_data.size) + 192] = _2639
                mem[(32 * _2983) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2983) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2983) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2639, 64, mem[(32 * _2983) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * arg3 / arg3 != 997:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 997 * arg3:
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1637 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _2176 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _2176) + ceil32(return_data.size) + 128] = _1637
                        mem[(32 * _2176) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _2176) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _2176) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1637, 64, mem[(32 * _2176) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2636 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2982 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2982) + ceil32(return_data.size) + 192] = _2636
                    mem[(32 * _2982) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2982) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2982) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2636, 64, mem[(32 * _2982) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1829 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2353 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2353) + ceil32(return_data.size) + 128] = _1829
                    mem[(32 * _2353) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2353) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2353) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1829, 64, mem[(32 * _2353) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2776 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3067 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3067) + ceil32(return_data.size) + 192] = _2776
                mem[(32 * _3067) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3067) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3067) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2776, 64, mem[(32 * _3067) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not eth.balance(ext_call.return_data[0]):
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1825 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2350 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2350) + ceil32(return_data.size) + 128] = _1825
                    mem[(32 * _2350) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2350) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2350) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1825, 64, mem[(32 * _2350) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * ext_call.return_data[0] * arg3 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2773 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3066 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3066) + ceil32(return_data.size) + 192] = _2773
                mem[(32 * _3066) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3066) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3066) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2773, 64, mem[(32 * _3066) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2000 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2491 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2491) + ceil32(return_data.size) + 128] = _2000
                mem[(32 * _2491) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2491) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2491) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2000, 64, mem[(32 * _2491) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2878 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3127 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3127) + ceil32(return_data.size) + 192] = _2878
            mem[(32 * _3127) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3127) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3127) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2878, 64, mem[(32 * _3127) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            if not address(stor1):
                if not arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1020 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1499 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1499) + ceil32(return_data.size) + 128] = _1020
                        mem[(32 * _1499) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1499) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1499) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1020, 64, mem[(32 * _1499) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1170 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1698 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1698) + ceil32(return_data.size) + 128] = _1170
                        mem[(32 * _1698) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1698) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1698) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1170, 64, mem[(32 * _1698) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2230 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2677 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2677) + ceil32(return_data.size) + 192] = _2230
                    mem[(32 * _2677) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2677) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2677) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2230, 64, mem[(32 * _2677) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                            mem[100] = address(stor1)
                            mem[132] = arg2
                            mem[164] = 0
                            mem[196] = arg4
                            mem[228] = arg5
                            require ext_code.size(sub_94960646Address)
                            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                    gas gas_remaining wei
                                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 64
                            _1166 = mem[96 len 4], Mask(224, 0, stor1)
                            require uint32(stor1), address(arg2) << 64 <= 4294967296
                            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                            _1695 = mem[uint32(stor1), address(arg2) << 64 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                            mem[(32 * _1695) + ceil32(return_data.size) + 128] = _1166
                            mem[(32 * _1695) + ceil32(return_data.size) + 160] = 64
                            mem[(32 * _1695) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                            mem[(32 * _1695) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                            return _1166, 64, mem[(32 * _1695) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                        mem[128] = 'SafeMath: division by zero'
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[164] = address(stor1)
                        mem[196] = arg2
                        mem[228] = 0 / 997 * arg3
                        mem[260] = arg4
                        mem[292] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 160
                        require return_data.size >= 64
                        _2227 = mem[160 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                        _2676 = mem[uint32(stor1), address(arg2) << 64 + 160]
                        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                        mem[(32 * _2676) + ceil32(return_data.size) + 192] = _2227
                        mem[(32 * _2676) + ceil32(return_data.size) + 224] = 64
                        mem[(32 * _2676) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                        mem[(32 * _2676) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                        return _2227, 64, mem[(32 * _2676) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1314 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1880 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1880) + ceil32(return_data.size) + 128] = _1314
                        mem[(32 * _1880) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1880) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1880) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1314, 64, mem[(32 * _1880) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2398 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2808 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2808) + ceil32(return_data.size) + 192] = _2398
                    mem[(32 * _2808) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2808) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2808) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2398, 64, mem[(32 * _2808) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1310 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1877 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1877) + ceil32(return_data.size) + 128] = _1310
                        mem[(32 * _1877) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1877) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1877) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1310, 64, mem[(32 * _1877) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2395 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2807 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2807) + ceil32(return_data.size) + 192] = _2395
                    mem[(32 * _2807) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2807) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2807) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2395, 64, mem[(32 * _2807) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1493 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2041 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2041) + ceil32(return_data.size) + 128] = _1493
                    mem[(32 * _2041) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2041) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2041) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1493, 64, mem[(32 * _2041) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2524 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2903 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2903) + ceil32(return_data.size) + 192] = _2524
                mem[(32 * _2903) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2903) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2903) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2524, 64, mem[(32 * _2903) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(stor1):
                if not arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1042 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1519 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1519) + ceil32(return_data.size) + 128] = _1042
                        mem[(32 * _1519) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1519) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1519) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1042, 64, mem[(32 * _1519) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1195 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1721 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1721) + ceil32(return_data.size) + 128] = _1195
                        mem[(32 * _1721) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1721) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1721) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1195, 64, mem[(32 * _1721) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2248 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2691 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2691) + ceil32(return_data.size) + 192] = _2248
                    mem[(32 * _2691) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2691) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2691) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2248, 64, mem[(32 * _2691) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 997 * arg3 / arg3 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * arg3:
                    if not eth.balance(ext_call.return_data[0]):
                        if 997 * arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 997 * arg3:
                            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                            mem[100] = address(stor1)
                            mem[132] = arg2
                            mem[164] = 0
                            mem[196] = arg4
                            mem[228] = arg5
                            require ext_code.size(sub_94960646Address)
                            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                    gas gas_remaining wei
                                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 96
                            require return_data.size >= 64
                            _1191 = mem[96 len 4], Mask(224, 0, stor1)
                            require uint32(stor1), address(arg2) << 64 <= 4294967296
                            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                            _1718 = mem[uint32(stor1), address(arg2) << 64 + 96]
                            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                            mem[(32 * _1718) + ceil32(return_data.size) + 128] = _1191
                            mem[(32 * _1718) + ceil32(return_data.size) + 160] = 64
                            mem[(32 * _1718) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                            mem[(32 * _1718) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                            return _1191, 64, mem[(32 * _1718) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                        mem[128] = 'SafeMath: division by zero'
                        if not 997 * arg3:
                            revert with 0, 'SafeMath: division by zero'
                        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[164] = address(stor1)
                        mem[196] = arg2
                        mem[228] = 0 / 997 * arg3
                        mem[260] = arg4
                        mem[292] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 160
                        require return_data.size >= 64
                        _2245 = mem[160 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                        _2690 = mem[uint32(stor1), address(arg2) << 64 + 160]
                        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                        mem[(32 * _2690) + ceil32(return_data.size) + 192] = _2245
                        mem[(32 * _2690) + ceil32(return_data.size) + 224] = 64
                        mem[(32 * _2690) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                        mem[(32 * _2690) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                        return _2245, 64, mem[(32 * _2690) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                    if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                        revert with 0, 'SafeMath: addition overflow'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1336 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1900 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1900) + ceil32(return_data.size) + 128] = _1336
                        mem[(32 * _1900) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1900) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1900) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1336, 64, mem[(32 * _1900) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2414 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2819 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2819) + ceil32(return_data.size) + 192] = _2414
                    mem[(32 * _2819) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2819) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2819) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2414, 64, mem[(32 * _2819) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1332 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _1897 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _1897) + ceil32(return_data.size) + 128] = _1332
                        mem[(32 * _1897) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _1897) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _1897) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1332, 64, mem[(32 * _1897) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2411 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2818 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2818) + ceil32(return_data.size) + 192] = _2411
                    mem[(32 * _2818) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2818) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2818) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2411, 64, mem[(32 * _2818) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1513 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2055 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2055) + ceil32(return_data.size) + 128] = _1513
                    mem[(32 * _2055) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2055) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2055) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1513, 64, mem[(32 * _2055) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2536 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2911 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2911) + ceil32(return_data.size) + 192] = _2536
                mem[(32 * _2911) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2911) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2911) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2536, 64, mem[(32 * _2911) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            require ext_code.size(address(stor1))
            staticcall address(stor1).0x70a08231 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                if not eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1510 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2054 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2054) + ceil32(return_data.size) + 128] = _1510
                    mem[(32 * _2054) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2054) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2054) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1510, 64, mem[(32 * _2054) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1712 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2238 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2238) + ceil32(return_data.size) + 128] = _1712
                    mem[(32 * _2238) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2238) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2238) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1712, 64, mem[(32 * _2238) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2685 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3009 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3009) + ceil32(return_data.size) + 192] = _2685
                mem[(32 * _3009) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3009) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3009) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2685, 64, mem[(32 * _3009) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * arg3 / arg3 != 997:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 997 * arg3:
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1708 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _2235 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _2235) + ceil32(return_data.size) + 128] = _1708
                        mem[(32 * _2235) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _2235) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _2235) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1708, 64, mem[(32 * _2235) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2682 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _3008 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _3008) + ceil32(return_data.size) + 192] = _2682
                    mem[(32 * _3008) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _3008) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _3008) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2682, 64, mem[(32 * _3008) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1891 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2405 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2405) + ceil32(return_data.size) + 128] = _1891
                    mem[(32 * _2405) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2405) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2405) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1891, 64, mem[(32 * _2405) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2814 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3086 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3086) + ceil32(return_data.size) + 192] = _2814
                mem[(32 * _3086) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3086) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3086) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2814, 64, mem[(32 * _3086) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not eth.balance(ext_call.return_data[0]):
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1887 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2402 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2402) + ceil32(return_data.size) + 128] = _1887
                    mem[(32 * _2402) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2402) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2402) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1887, 64, mem[(32 * _2402) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * ext_call.return_data[0] * arg3 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2811 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3085 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3085) + ceil32(return_data.size) + 192] = _2811
                mem[(32 * _3085) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3085) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3085) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2811, 64, mem[(32 * _3085) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2048 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2529 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2529) + ceil32(return_data.size) + 128] = _2048
                mem[(32 * _2529) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2529) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2529) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2048, 64, mem[(32 * _2529) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2906 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3141 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3141) + ceil32(return_data.size) + 192] = _2906
            mem[(32 * _3141) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3141) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3141) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2906, 64, mem[(32 * _3141) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(stor1):
            if not arg3:
                if not ext_call.return_data[0]:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1468 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2020 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2020) + ceil32(return_data.size) + 128] = _1468
                    mem[(32 * _2020) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2020) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2020) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1468, 64, mem[(32 * _2020) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * ext_call.return_data[0]:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1664 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2197 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2197) + ceil32(return_data.size) + 128] = _1664
                    mem[(32 * _2197) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2197) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2197) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1664, 64, mem[(32 * _2197) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 1000 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 1000 * ext_call.return_data[0]
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 1000 * ext_call.return_data[0], arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2653 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2989 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2989) + ceil32(return_data.size) + 192] = _2653
                mem[(32 * _2989) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2989) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2989) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2653, 64, mem[(32 * _2989) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * arg3 / arg3 != 997:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 997 * arg3:
                if not ext_call.return_data[0]:
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1660 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _2194 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _2194) + ceil32(return_data.size) + 128] = _1660
                        mem[(32 * _2194) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _2194) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _2194) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1660, 64, mem[(32 * _2194) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2650 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2988 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2988) + ceil32(return_data.size) + 192] = _2650
                    mem[(32 * _2988) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2988) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2988) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2650, 64, mem[(32 * _2988) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1849 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2369 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2369) + ceil32(return_data.size) + 128] = _1849
                    mem[(32 * _2369) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2369) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2369) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1849, 64, mem[(32 * _2369) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / (997 * arg3) + (1000 * ext_call.return_data[0])
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2787 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3071 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3071) + ceil32(return_data.size) + 192] = _2787
                mem[(32 * _3071) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3071) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3071) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2787, 64, mem[(32 * _3071) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1845 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2366 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2366) + ceil32(return_data.size) + 128] = _1845
                    mem[(32 * _2366) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2366) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2366) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1845, 64, mem[(32 * _2366) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2784 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3070 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3070) + ceil32(return_data.size) + 192] = _2784
                mem[(32 * _3070) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3070) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3070) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2784, 64, mem[(32 * _3070) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2014 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2503 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2503) + ceil32(return_data.size) + 128] = _2014
                mem[(32 * _2503) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2503) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2503) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2014, 64, mem[(32 * _2503) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0])
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2886 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3130 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3130) + ceil32(return_data.size) + 192] = _2886
            mem[(32 * _3130) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3130) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3130) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2886, 64, mem[(32 * _3130) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(stor1):
            if not arg3:
                if not ext_call.return_data[0]:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1490 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2040 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2040) + ceil32(return_data.size) + 128] = _1490
                    mem[(32 * _2040) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2040) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2040) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1490, 64, mem[(32 * _2040) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * ext_call.return_data[0]:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1689 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2220 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2220) + ceil32(return_data.size) + 128] = _1689
                    mem[(32 * _2220) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2220) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2220) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1689, 64, mem[(32 * _2220) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 1000 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 1000 * ext_call.return_data[0]
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 1000 * ext_call.return_data[0], arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2671 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3003 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3003) + ceil32(return_data.size) + 192] = _2671
                mem[(32 * _3003) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3003) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3003) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2671, 64, mem[(32 * _3003) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * arg3 / arg3 != 997:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 997 * arg3:
                if not ext_call.return_data[0]:
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1685 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _2217 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _2217) + ceil32(return_data.size) + 128] = _1685
                        mem[(32 * _2217) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _2217) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _2217) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1685, 64, mem[(32 * _2217) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2668 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _3002 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _3002) + ceil32(return_data.size) + 192] = _2668
                    mem[(32 * _3002) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _3002) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _3002) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2668, 64, mem[(32 * _3002) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1871 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2389 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2389) + ceil32(return_data.size) + 128] = _1871
                    mem[(32 * _2389) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2389) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2389) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1871, 64, mem[(32 * _2389) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / (997 * arg3) + (1000 * ext_call.return_data[0])
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2803 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3082 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3082) + ceil32(return_data.size) + 192] = _2803
                mem[(32 * _3082) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3082) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3082) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2803, 64, mem[(32 * _3082) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ext_call.return_data[0]:
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1867 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2386 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2386) + ceil32(return_data.size) + 128] = _1867
                    mem[(32 * _2386) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2386) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2386) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1867, 64, mem[(32 * _2386) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2800 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3081 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3081) + ceil32(return_data.size) + 192] = _2800
                mem[(32 * _3081) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3081) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3081) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2800, 64, mem[(32 * _3081) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2034 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2517 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2517) + ceil32(return_data.size) + 128] = _2034
                mem[(32 * _2517) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2517) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2517) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2034, 64, mem[(32 * _2517) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0])
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2898 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3138 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3138) + ceil32(return_data.size) + 192] = _2898
            mem[(32 * _3138) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3138) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3138) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2898, 64, mem[(32 * _3138) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        require ext_code.size(address(stor1))
        staticcall address(stor1).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if not ext_call.return_data[0]:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2031 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2516 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2516) + ceil32(return_data.size) + 128] = _2031
                mem[(32 * _2516) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2516) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2516) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2031, 64, mem[(32 * _2516) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 1000 * ext_call.return_data[0]:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2211 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2661 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2661) + ceil32(return_data.size) + 128] = _2211
                mem[(32 * _2661) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2661) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2661) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2211, 64, mem[(32 * _2661) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / 1000 * ext_call.return_data[0]
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / 1000 * ext_call.return_data[0], arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2997 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3185 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3185) + ceil32(return_data.size) + 192] = _2997
            mem[(32 * _3185) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3185) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3185) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2997, 64, mem[(32 * _3185) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * arg3 / arg3 != 997:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 997 * arg3:
            if not ext_call.return_data[0]:
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _2207 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2658 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2658) + ceil32(return_data.size) + 128] = _2207
                    mem[(32 * _2658) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2658) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2658) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _2207, 64, mem[(32 * _2658) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2994 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3184 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3184) + ceil32(return_data.size) + 192] = _2994
                mem[(32 * _3184) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3184) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3184) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2994, 64, mem[(32 * _3184) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2380 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2794 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2794) + ceil32(return_data.size) + 128] = _2380
                mem[(32 * _2794) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2794) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2794) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2380, 64, mem[(32 * _2794) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / (997 * arg3) + (1000 * ext_call.return_data[0])
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3077 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3218 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3218) + ceil32(return_data.size) + 192] = _3077
            mem[(32 * _3218) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3218) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3218) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3077, 64, mem[(32 * _3218) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            if 997 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg3:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2376 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2791 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2791) + ceil32(return_data.size) + 128] = _2376
                mem[(32 * _2791) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2791) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2791) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2376, 64, mem[(32 * _2791) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 997 * arg3:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * ext_call.return_data[0] * arg3 / 997 * arg3
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / 997 * arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3074 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3217 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3217) + ceil32(return_data.size) + 192] = _3074
            mem[(32 * _3217) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3217) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3217) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3074, 64, mem[(32 * _3217) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2510 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _2891 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _2891) + ceil32(return_data.size) + 128] = _2510
            mem[(32 * _2891) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _2891) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _2891) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2510, 64, mem[(32 * _2891) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        mem[128] = 'SafeMath: division by zero'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[164] = address(stor1)
        mem[196] = arg2
        mem[228] = 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0])
        mem[260] = arg4
        mem[292] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 64
        _3133 = mem[160 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
        _3244 = mem[uint32(stor1), address(arg2) << 64 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
        mem[(32 * _3244) + ceil32(return_data.size) + 192] = _3133
        mem[(32 * _3244) + ceil32(return_data.size) + 224] = 64
        mem[(32 * _3244) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _3244) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return _3133, 64, mem[(32 * _3244) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    if stor3 == arg1:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
            mem[288 len 0] = None
            return arg3, Array(len=2, data=mem[288 len 64])
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 4008636142, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        if address(stor1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            _41 = mem[96 len 4], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            require 4008636142, address(arg2) << 64 <= 4294967296
            require 4008636142, address(arg2) << 64 + 32 <= return_data.size
            require mem[4008636142, address(arg2) << 64 + 96] <= 4294967296 and 4008636142, address(arg2) << 64 + (32 * mem[4008636142, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[4008636142, address(arg2) << 64 + 96]
            _102 = mem[4008636142, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[4008636142, address(arg2) << 64 + 96])] = mem[4008636142, address(arg2) << 64 + 128 len floor32(mem[4008636142, address(arg2) << 64 + 96])]
            mem[(32 * _102) + ceil32(return_data.size) + 128] = _41
            mem[(32 * _102) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _102) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _102) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _41, 64, mem[(32 * _102) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if address(stor1) == arg2:
            _69 = mem[96 len 4], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
            require 4008636142, address(arg2) << 64 <= 4294967296
            require 4008636142, address(arg2) << 64 + 32 <= return_data.size
            require mem[4008636142, address(arg2) << 64 + 96] <= 4294967296 and 4008636142, address(arg2) << 64 + (32 * mem[4008636142, address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[4008636142, address(arg2) << 64 + 96]
            _115 = mem[4008636142, address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[4008636142, address(arg2) << 64 + 96])] = mem[4008636142, address(arg2) << 64 + 128 len floor32(mem[4008636142, address(arg2) << 64 + 96])]
            mem[(32 * _115) + ceil32(return_data.size) + 128] = _69
            mem[(32 * _115) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _115) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _115) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _69, 64, mem[(32 * _115) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        _129 = mem[96 len 4], 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        require 4008636142, address(arg2) << 64 <= 4294967296
        require 4008636142, address(arg2) << 64 + 32 <= return_data.size
        require mem[4008636142, address(arg2) << 64 + 96] <= 4294967296 and 4008636142, address(arg2) << 64 + (32 * mem[4008636142, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[4008636142, address(arg2) << 64 + 96]
        _172 = mem[4008636142, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[4008636142, address(arg2) << 64 + 96])] = mem[4008636142, address(arg2) << 64 + 128 len floor32(mem[4008636142, address(arg2) << 64 + 96])]
        mem[(32 * _172) + ceil32(return_data.size) + 128] = _129
        mem[(32 * _172) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _172) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _172) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _129, 64, mem[(32 * _172) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if stor3 == arg2:
        if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[288 len 0] = None
            return arg3, Array(len=2, data=mem[288 len 64])
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        if address(stor1) == arg1:
            _62 = mem[96 len 4], address(arg1) << 64
            require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee <= 4294967296
            require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 32 <= return_data.size
            require mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96] <= 4294967296 and 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + (32 * mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
            _113 = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])]
            mem[(32 * _113) + ceil32(return_data.size) + 128] = _62
            mem[(32 * _113) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _113) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _113) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _62, 64, mem[(32 * _113) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if address(stor1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            _77 = mem[96 len 4], address(arg1) << 64
            require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee <= 4294967296
            require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 32 <= return_data.size
            require mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96] <= 4294967296 and 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + (32 * mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
            _125 = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])]
            mem[(32 * _125) + ceil32(return_data.size) + 128] = _77
            mem[(32 * _125) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _125) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _125) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _77, 64, mem[(32 * _125) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if not arg1:
            _142 = mem[96 len 4], address(arg1) << 64
            require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee <= 4294967296
            require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 32 <= return_data.size
            require mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96] <= 4294967296 and 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + (32 * mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
            _179 = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])]
            mem[(32 * _179) + ceil32(return_data.size) + 128] = _142
            mem[(32 * _179) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _179) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _179) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _142, 64, mem[(32 * _179) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
            _145 = mem[96 len 4], address(arg1) << 64
            require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee <= 4294967296
            require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 32 <= return_data.size
            require mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96] <= 4294967296 and 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + (32 * mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
            _180 = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])]
            mem[(32 * _180) + ceil32(return_data.size) + 128] = _145
            mem[(32 * _180) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _180) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _180) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _145, 64, mem[(32 * _180) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        _192 = mem[96 len 4], address(arg1) << 64
        require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee <= 4294967296
        require 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 32 <= return_data.size
        require mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96] <= 4294967296 and 0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + (32 * mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
        _215 = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])] = mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 128 len floor32(mem[0, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee + 96])]
        mem[(32 * _215) + ceil32(return_data.size) + 128] = _192
        mem[(32 * _215) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _215) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _215) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _192, 64, mem[(32 * _215) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if arg1 == arg2:
        mem[288 len 0] = None
        return arg3, Array(len=2, data=mem[288 len 64])
    if address(stor1) == arg1:
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _55 = mem[96 len 4], address(arg1) << 64
        require 0, address(arg2) << 64 <= 4294967296
        require 0, address(arg2) << 64 + 32 <= return_data.size
        require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
        _111 = mem[0, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
        mem[(32 * _111) + ceil32(return_data.size) + 128] = _55
        mem[(32 * _111) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _111) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _111) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _55, 64, mem[(32 * _111) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if address(stor1) == arg2:
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _74 = mem[96 len 4], address(arg1) << 64
        require 0, address(arg2) << 64 <= 4294967296
        require 0, address(arg2) << 64 + 32 <= return_data.size
        require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
        _122 = mem[0, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
        mem[(32 * _122) + ceil32(return_data.size) + 128] = _74
        mem[(32 * _122) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _122) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _122) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _74, 64, mem[(32 * _122) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not arg1:
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _135 = mem[96 len 4], address(arg1) << 64
        require 0, address(arg2) << 64 <= 4294967296
        require 0, address(arg2) << 64 + 32 <= return_data.size
        require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
        _175 = mem[0, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
        mem[(32 * _175) + ceil32(return_data.size) + 128] = _135
        mem[(32 * _175) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _175) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _175) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _135, 64, mem[(32 * _175) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _138 = mem[96 len 4], address(arg1) << 64
        require 0, address(arg2) << 64 <= 4294967296
        require 0, address(arg2) << 64 + 32 <= return_data.size
        require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
        _176 = mem[0, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
        mem[(32 * _176) + ceil32(return_data.size) + 128] = _138
        mem[(32 * _176) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _176) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _176) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _138, 64, mem[(32 * _176) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not arg2:
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _186 = mem[96 len 4], address(arg1) << 64
        require 0, address(arg2) << 64 <= 4294967296
        require 0, address(arg2) << 64 + 32 <= return_data.size
        require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
        _213 = mem[0, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
        mem[(32 * _213) + ceil32(return_data.size) + 128] = _186
        mem[(32 * _213) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _213) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _213) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _186, 64, mem[(32 * _213) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg2:
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _189 = mem[96 len 4], address(arg1) << 64
        require 0, address(arg2) << 64 <= 4294967296
        require 0, address(arg2) << 64 + 32 <= return_data.size
        require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
        _214 = mem[0, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
        mem[(32 * _214) + ceil32(return_data.size) + 128] = _189
        mem[(32 * _214) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _214) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _214) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _189, 64, mem[(32 * _214) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if bool(Mask(1, 50, arg5)) != bool(Mask(1, 33, arg5)):
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _234 = mem[96 len 4], address(arg1) << 64
        require 0, address(arg2) << 64 <= 4294967296
        require 0, address(arg2) << 64 + 32 <= return_data.size
        require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
        _270 = mem[0, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
        mem[(32 * _270) + ceil32(return_data.size) + 128] = _234
        mem[(32 * _270) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _270) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _270) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _234, 64, mem[(32 * _270) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    require ext_code.size(stor0)
    staticcall stor0.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), address(stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg3
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, 0, address(arg2), arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _294 = mem[96 len 4], address(arg1) << 64
        require 0, address(arg2) << 64 <= 4294967296
        require 0, address(arg2) << 64 + 32 <= return_data.size
        require mem[0, address(arg2) << 64 + 96] <= 4294967296 and 0, address(arg2) << 64 + (32 * mem[0, address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[0, address(arg2) << 64 + 96]
        _325 = mem[0, address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[0, address(arg2) << 64 + 96])] = mem[0, address(arg2) << 64 + 128 len floor32(mem[0, address(arg2) << 64 + 96])]
        mem[(32 * _325) + ceil32(return_data.size) + 128] = _294
        mem[(32 * _325) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _325) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _325) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _294, 64, mem[(32 * _325) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    if not arg1:
        if not address(stor1):
            if not arg3:
                if not eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1351 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _1910 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _1910) + ceil32(return_data.size) + 128] = _1351
                    mem[(32 * _1910) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _1910) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _1910) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1351, 64, mem[(32 * _1910) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1531 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2067 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2067) + ceil32(return_data.size) + 128] = _1531
                    mem[(32 * _2067) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2067) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2067) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1531, 64, mem[(32 * _2067) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2548 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2917 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2917) + ceil32(return_data.size) + 192] = _2548
                mem[(32 * _2917) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2917) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2917) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2548, 64, mem[(32 * _2917) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * arg3 / arg3 != 997:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 997 * arg3:
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1527 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _2064 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _2064) + ceil32(return_data.size) + 128] = _1527
                        mem[(32 * _2064) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _2064) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _2064) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1527, 64, mem[(32 * _2064) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2545 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2916 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2916) + ceil32(return_data.size) + 192] = _2545
                    mem[(32 * _2916) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2916) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2916) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2545, 64, mem[(32 * _2916) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1731 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2255 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2255) + ceil32(return_data.size) + 128] = _1731
                    mem[(32 * _2255) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2255) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2255) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1731, 64, mem[(32 * _2255) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2697 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3014 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3014) + ceil32(return_data.size) + 192] = _2697
                mem[(32 * _3014) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3014) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3014) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2697, 64, mem[(32 * _3014) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not eth.balance(ext_call.return_data[0]):
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1727 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2252 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2252) + ceil32(return_data.size) + 128] = _1727
                    mem[(32 * _2252) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2252) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2252) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1727, 64, mem[(32 * _2252) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2694 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3013 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3013) + ceil32(return_data.size) + 192] = _2694
                mem[(32 * _3013) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3013) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3013) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2694, 64, mem[(32 * _3013) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _1904 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2417 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2417) + ceil32(return_data.size) + 128] = _1904
                mem[(32 * _2417) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2417) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2417) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _1904, 64, mem[(32 * _2417) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2820 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3088 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3088) + ceil32(return_data.size) + 192] = _2820
            mem[(32 * _3088) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3088) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3088) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2820, 64, mem[(32 * _3088) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(stor1):
            if not arg3:
                if not eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1373 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _1930 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _1930) + ceil32(return_data.size) + 128] = _1373
                    mem[(32 * _1930) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _1930) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _1930) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1373, 64, mem[(32 * _1930) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1556 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2090 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2090) + ceil32(return_data.size) + 128] = _1556
                    mem[(32 * _2090) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2090) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2090) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1556, 64, mem[(32 * _2090) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2566 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2931 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2931) + ceil32(return_data.size) + 192] = _2566
                mem[(32 * _2931) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2931) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2931) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2566, 64, mem[(32 * _2931) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * arg3 / arg3 != 997:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 997 * arg3:
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1552 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _2087 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _2087) + ceil32(return_data.size) + 128] = _1552
                        mem[(32 * _2087) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _2087) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _2087) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1552, 64, mem[(32 * _2087) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2563 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2930 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2930) + ceil32(return_data.size) + 192] = _2563
                    mem[(32 * _2930) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2930) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2930) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2563, 64, mem[(32 * _2930) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1753 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2275 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2275) + ceil32(return_data.size) + 128] = _1753
                    mem[(32 * _2275) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2275) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2275) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1753, 64, mem[(32 * _2275) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2713 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3025 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3025) + ceil32(return_data.size) + 192] = _2713
                mem[(32 * _3025) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3025) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3025) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2713, 64, mem[(32 * _3025) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not eth.balance(ext_call.return_data[0]):
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1749 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2272 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2272) + ceil32(return_data.size) + 128] = _1749
                    mem[(32 * _2272) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2272) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2272) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1749, 64, mem[(32 * _2272) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2710 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3024 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3024) + ceil32(return_data.size) + 192] = _2710
                mem[(32 * _3024) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3024) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3024) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2710, 64, mem[(32 * _3024) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _1924 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2431 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2431) + ceil32(return_data.size) + 128] = _1924
                mem[(32 * _2431) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2431) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2431) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _1924, 64, mem[(32 * _2431) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2832 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3096 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3096) + ceil32(return_data.size) + 192] = _2832
            mem[(32 * _3096) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3096) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3096) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2832, 64, mem[(32 * _3096) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        require ext_code.size(address(stor1))
        staticcall address(stor1).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if not eth.balance(ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _1921 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2430 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2430) + ceil32(return_data.size) + 128] = _1921
                mem[(32 * _2430) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2430) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2430) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _1921, 64, mem[(32 * _2430) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not 1000 * eth.balance(ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2081 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2556 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2556) + ceil32(return_data.size) + 128] = _2081
                mem[(32 * _2556) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2556) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2556) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2081, 64, mem[(32 * _2556) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2925 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3149 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3149) + ceil32(return_data.size) + 192] = _2925
            mem[(32 * _3149) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3149) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3149) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2925, 64, mem[(32 * _3149) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * arg3 / arg3 != 997:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 997 * arg3:
            if not eth.balance(ext_call.return_data[0]):
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _2077 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2553 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2553) + ceil32(return_data.size) + 128] = _2077
                    mem[(32 * _2553) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2553) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2553) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _2077, 64, mem[(32 * _2553) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2922 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3148 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3148) + ceil32(return_data.size) + 192] = _2922
                mem[(32 * _3148) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3148) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3148) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2922, 64, mem[(32 * _3148) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2266 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2704 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2704) + ceil32(return_data.size) + 128] = _2266
                mem[(32 * _2704) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2704) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2704) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2266, 64, mem[(32 * _2704) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3020 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3193 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3193) + ceil32(return_data.size) + 192] = _3020
            mem[(32 * _3193) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3193) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3193) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3020, 64, mem[(32 * _3193) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not eth.balance(ext_call.return_data[0]):
            if 997 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg3:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2262 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2701 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2701) + ceil32(return_data.size) + 128] = _2262
                mem[(32 * _2701) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2701) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2701) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2262, 64, mem[(32 * _2701) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 997 * arg3:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * ext_call.return_data[0] * arg3 / 997 * arg3
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / 997 * arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3017 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3192 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3192) + ceil32(return_data.size) + 192] = _3017
            mem[(32 * _3192) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3192) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3192) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3017, 64, mem[(32 * _3192) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2424 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _2825 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _2825) + ceil32(return_data.size) + 128] = _2424
            mem[(32 * _2825) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _2825) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _2825) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2424, 64, mem[(32 * _2825) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        mem[128] = 'SafeMath: division by zero'
        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[164] = address(stor1)
        mem[196] = arg2
        mem[228] = 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
        mem[260] = arg4
        mem[292] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 64
        _3091 = mem[160 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
        _3221 = mem[uint32(stor1), address(arg2) << 64 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
        mem[(32 * _3221) + ceil32(return_data.size) + 192] = _3091
        mem[(32 * _3221) + ceil32(return_data.size) + 224] = 64
        mem[(32 * _3221) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _3221) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return _3091, 64, mem[(32 * _3221) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if not address(stor1):
            if not arg3:
                if not eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1406 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _1972 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _1972) + ceil32(return_data.size) + 128] = _1406
                    mem[(32 * _1972) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _1972) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _1972) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1406, 64, mem[(32 * _1972) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1593 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2138 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2138) + ceil32(return_data.size) + 128] = _1593
                    mem[(32 * _2138) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2138) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2138) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1593, 64, mem[(32 * _2138) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2607 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2963 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2963) + ceil32(return_data.size) + 192] = _2607
                mem[(32 * _2963) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2963) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2963) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2607, 64, mem[(32 * _2963) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * arg3 / arg3 != 997:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 997 * arg3:
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1589 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _2135 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _2135) + ceil32(return_data.size) + 128] = _1589
                        mem[(32 * _2135) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _2135) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _2135) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1589, 64, mem[(32 * _2135) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2604 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2962 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2962) + ceil32(return_data.size) + 192] = _2604
                    mem[(32 * _2962) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2962) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2962) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2604, 64, mem[(32 * _2962) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1787 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2317 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2317) + ceil32(return_data.size) + 128] = _1787
                    mem[(32 * _2317) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2317) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2317) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1787, 64, mem[(32 * _2317) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2749 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3052 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3052) + ceil32(return_data.size) + 192] = _2749
                mem[(32 * _3052) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3052) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3052) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2749, 64, mem[(32 * _3052) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not eth.balance(ext_call.return_data[0]):
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1783 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2314 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2314) + ceil32(return_data.size) + 128] = _1783
                    mem[(32 * _2314) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2314) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2314) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1783, 64, mem[(32 * _2314) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2746 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3051 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3051) + ceil32(return_data.size) + 192] = _2746
                mem[(32 * _3051) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3051) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3051) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2746, 64, mem[(32 * _3051) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _1966 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2465 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2465) + ceil32(return_data.size) + 128] = _1966
                mem[(32 * _2465) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2465) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2465) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _1966, 64, mem[(32 * _2465) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2858 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3116 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3116) + ceil32(return_data.size) + 192] = _2858
            mem[(32 * _3116) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3116) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3116) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2858, 64, mem[(32 * _3116) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(stor1):
            if not arg3:
                if not eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1428 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _1992 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _1992) + ceil32(return_data.size) + 128] = _1428
                    mem[(32 * _1992) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _1992) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _1992) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1428, 64, mem[(32 * _1992) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1618 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2161 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2161) + ceil32(return_data.size) + 128] = _1618
                    mem[(32 * _2161) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2161) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2161) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1618, 64, mem[(32 * _2161) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2625 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _2977 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _2977) + ceil32(return_data.size) + 192] = _2625
                mem[(32 * _2977) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _2977) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _2977) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2625, 64, mem[(32 * _2977) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * arg3 / arg3 != 997:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 997 * arg3:
                if not eth.balance(ext_call.return_data[0]):
                    if 997 * arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 997 * arg3:
                        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                        mem[100] = address(stor1)
                        mem[132] = arg2
                        mem[164] = 0
                        mem[196] = arg4
                        mem[228] = arg5
                        require ext_code.size(sub_94960646Address)
                        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                                gas gas_remaining wei
                               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 96
                        require return_data.size >= 64
                        _1614 = mem[96 len 4], Mask(224, 0, stor1)
                        require uint32(stor1), address(arg2) << 64 <= 4294967296
                        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                        _2158 = mem[uint32(stor1), address(arg2) << 64 + 96]
                        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                        mem[(32 * _2158) + ceil32(return_data.size) + 128] = _1614
                        mem[(32 * _2158) + ceil32(return_data.size) + 160] = 64
                        mem[(32 * _2158) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                        mem[(32 * _2158) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                        return _1614, 64, mem[(32 * _2158) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                    mem[128] = 'SafeMath: division by zero'
                    if not 997 * arg3:
                        revert with 0, 'SafeMath: division by zero'
                    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[164] = address(stor1)
                    mem[196] = arg2
                    mem[228] = 0 / 997 * arg3
                    mem[260] = arg4
                    mem[292] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 160
                    require return_data.size >= 64
                    _2622 = mem[160 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                    _2976 = mem[uint32(stor1), address(arg2) << 64 + 160]
                    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                    mem[(32 * _2976) + ceil32(return_data.size) + 192] = _2622
                    mem[(32 * _2976) + ceil32(return_data.size) + 224] = 64
                    mem[(32 * _2976) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                    mem[(32 * _2976) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                    return _2622, 64, mem[(32 * _2976) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
                if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1809 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2337 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2337) + ceil32(return_data.size) + 128] = _1809
                    mem[(32 * _2337) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2337) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2337) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1809, 64, mem[(32 * _2337) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2765 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3063 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3063) + ceil32(return_data.size) + 192] = _2765
                mem[(32 * _3063) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3063) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3063) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2765, 64, mem[(32 * _3063) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not eth.balance(ext_call.return_data[0]):
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _1805 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2334 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2334) + ceil32(return_data.size) + 128] = _1805
                    mem[(32 * _2334) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2334) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2334) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _1805, 64, mem[(32 * _2334) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2762 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3062 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3062) + ceil32(return_data.size) + 192] = _2762
                mem[(32 * _3062) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3062) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3062) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2762, 64, mem[(32 * _3062) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _1986 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2479 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2479) + ceil32(return_data.size) + 128] = _1986
                mem[(32 * _2479) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2479) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2479) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _1986, 64, mem[(32 * _2479) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2870 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3124 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3124) + ceil32(return_data.size) + 192] = _2870
            mem[(32 * _3124) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3124) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3124) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2870, 64, mem[(32 * _3124) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        require ext_code.size(address(stor1))
        staticcall address(stor1).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if not eth.balance(ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _1983 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2478 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2478) + ceil32(return_data.size) + 128] = _1983
                mem[(32 * _2478) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2478) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2478) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _1983, 64, mem[(32 * _2478) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 1000 * eth.balance(ext_call.return_data[0]) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not 1000 * eth.balance(ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2152 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2615 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2615) + ceil32(return_data.size) + 128] = _2152
                mem[(32 * _2615) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2615) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2615) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2152, 64, mem[(32 * _2615) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / 1000 * eth.balance(ext_call.return_data[0])
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / 1000 * eth.balance(ext_call.return_data[0]), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2971 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3175 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3175) + ceil32(return_data.size) + 192] = _2971
            mem[(32 * _3175) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3175) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3175) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2971, 64, mem[(32 * _3175) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * arg3 / arg3 != 997:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 997 * arg3:
            if not eth.balance(ext_call.return_data[0]):
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _2148 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2612 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2612) + ceil32(return_data.size) + 128] = _2148
                    mem[(32 * _2612) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2612) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2612) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _2148, 64, mem[(32 * _2612) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2968 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3174 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3174) + ceil32(return_data.size) + 192] = _2968
                mem[(32 * _3174) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3174) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3174) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2968, 64, mem[(32 * _3174) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2328 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2756 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2756) + ceil32(return_data.size) + 128] = _2328
                mem[(32 * _2756) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2756) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2756) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2328, 64, mem[(32 * _2756) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3058 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3212 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3212) + ceil32(return_data.size) + 192] = _3058
            mem[(32 * _3212) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3212) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3212) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3058, 64, mem[(32 * _3212) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not eth.balance(ext_call.return_data[0]):
            if 997 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg3:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2324 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2753 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2753) + ceil32(return_data.size) + 128] = _2324
                mem[(32 * _2753) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2753) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2753) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2324, 64, mem[(32 * _2753) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 997 * arg3:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * ext_call.return_data[0] * arg3 / 997 * arg3
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / 997 * arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3055 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3211 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3211) + ceil32(return_data.size) + 192] = _3055
            mem[(32 * _3211) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3211) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3211) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3055, 64, mem[(32 * _3211) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 1000 * eth.balance(ext_call.return_data[0]) / eth.balance(ext_call.return_data[0]) != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])) < 1000 * eth.balance(ext_call.return_data[0]):
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2472 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _2863 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _2863) + ceil32(return_data.size) + 128] = _2472
            mem[(32 * _2863) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _2863) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _2863) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2472, 64, mem[(32 * _2863) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        mem[128] = 'SafeMath: division by zero'
        if not (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])):
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[164] = address(stor1)
        mem[196] = arg2
        mem[228] = 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0]))
        mem[260] = arg4
        mem[292] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * eth.balance(ext_call.return_data[0])), arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 64
        _3119 = mem[160 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
        _3235 = mem[uint32(stor1), address(arg2) << 64 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
        mem[(32 * _3235) + ceil32(return_data.size) + 192] = _3119
        mem[(32 * _3235) + ceil32(return_data.size) + 224] = 64
        mem[(32 * _3235) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _3235) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return _3119, 64, mem[(32 * _3235) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(stor1):
        if not arg3:
            if not ext_call.return_data[0]:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _1941 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2444 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2444) + ceil32(return_data.size) + 128] = _1941
                mem[(32 * _2444) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2444) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2444) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _1941, 64, mem[(32 * _2444) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 1000 * ext_call.return_data[0]:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2104 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2574 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2574) + ceil32(return_data.size) + 128] = _2104
                mem[(32 * _2574) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2574) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2574) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2104, 64, mem[(32 * _2574) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / 1000 * ext_call.return_data[0]
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / 1000 * ext_call.return_data[0], arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2939 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3155 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3155) + ceil32(return_data.size) + 192] = _2939
            mem[(32 * _3155) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3155) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3155) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2939, 64, mem[(32 * _3155) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * arg3 / arg3 != 997:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 997 * arg3:
            if not ext_call.return_data[0]:
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _2100 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2571 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2571) + ceil32(return_data.size) + 128] = _2100
                    mem[(32 * _2571) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2571) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2571) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _2100, 64, mem[(32 * _2571) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2936 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3154 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3154) + ceil32(return_data.size) + 192] = _2936
                mem[(32 * _3154) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3154) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3154) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2936, 64, mem[(32 * _3154) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2286 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2720 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2720) + ceil32(return_data.size) + 128] = _2286
                mem[(32 * _2720) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2720) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2720) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2286, 64, mem[(32 * _2720) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / (997 * arg3) + (1000 * ext_call.return_data[0])
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3031 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3197 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3197) + ceil32(return_data.size) + 192] = _3031
            mem[(32 * _3197) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3197) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3197) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3031, 64, mem[(32 * _3197) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            if 997 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg3:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2282 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2717 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2717) + ceil32(return_data.size) + 128] = _2282
                mem[(32 * _2717) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2717) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2717) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2282, 64, mem[(32 * _2717) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 997 * arg3:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3028 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3196 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3196) + ceil32(return_data.size) + 192] = _3028
            mem[(32 * _3196) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3196) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3196) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3028, 64, mem[(32 * _3196) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2438 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _2837 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _2837) + ceil32(return_data.size) + 128] = _2438
            mem[(32 * _2837) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _2837) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _2837) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2438, 64, mem[(32 * _2837) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        mem[128] = 'SafeMath: division by zero'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[164] = address(stor1)
        mem[196] = arg2
        mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0])
        mem[260] = arg4
        mem[292] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 64
        _3099 = mem[160 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
        _3224 = mem[uint32(stor1), address(arg2) << 64 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
        mem[(32 * _3224) + ceil32(return_data.size) + 192] = _3099
        mem[(32 * _3224) + ceil32(return_data.size) + 224] = 64
        mem[(32 * _3224) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _3224) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return _3099, 64, mem[(32 * _3224) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(stor1):
        if not arg3:
            if not ext_call.return_data[0]:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _1963 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2464 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2464) + ceil32(return_data.size) + 128] = _1963
                mem[(32 * _2464) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2464) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2464) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _1963, 64, mem[(32 * _2464) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not 1000 * ext_call.return_data[0]:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2129 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2597 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2597) + ceil32(return_data.size) + 128] = _2129
                mem[(32 * _2597) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2597) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2597) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2129, 64, mem[(32 * _2597) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / 1000 * ext_call.return_data[0]
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / 1000 * ext_call.return_data[0], arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _2957 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3169 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3169) + ceil32(return_data.size) + 192] = _2957
            mem[(32 * _3169) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3169) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3169) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _2957, 64, mem[(32 * _3169) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * arg3 / arg3 != 997:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 997 * arg3:
            if not ext_call.return_data[0]:
                if 997 * arg3 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not 997 * arg3:
                    mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                    mem[100] = address(stor1)
                    mem[132] = arg2
                    mem[164] = 0
                    mem[196] = arg4
                    mem[228] = arg5
                    require ext_code.size(sub_94960646Address)
                    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                            gas gas_remaining wei
                           args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 96
                    require return_data.size >= 64
                    _2125 = mem[96 len 4], Mask(224, 0, stor1)
                    require uint32(stor1), address(arg2) << 64 <= 4294967296
                    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                    require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                    _2594 = mem[uint32(stor1), address(arg2) << 64 + 96]
                    mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                    mem[(32 * _2594) + ceil32(return_data.size) + 128] = _2125
                    mem[(32 * _2594) + ceil32(return_data.size) + 160] = 64
                    mem[(32 * _2594) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                    mem[(32 * _2594) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                    return _2125, 64, mem[(32 * _2594) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
                mem[128] = 'SafeMath: division by zero'
                if not 997 * arg3:
                    revert with 0, 'SafeMath: division by zero'
                mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[164] = address(stor1)
                mem[196] = arg2
                mem[228] = 0 / 997 * arg3
                mem[260] = arg4
                mem[292] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 160
                require return_data.size >= 64
                _2954 = mem[160 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
                _3168 = mem[uint32(stor1), address(arg2) << 64 + 160]
                mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
                mem[(32 * _3168) + ceil32(return_data.size) + 192] = _2954
                mem[(32 * _3168) + ceil32(return_data.size) + 224] = 64
                mem[(32 * _3168) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
                mem[(32 * _3168) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
                return _2954, 64, mem[(32 * _3168) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
            if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2308 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2740 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2740) + ceil32(return_data.size) + 128] = _2308
                mem[(32 * _2740) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2740) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2740) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2308, 64, mem[(32 * _2740) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not (997 * arg3) + (1000 * ext_call.return_data[0]):
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / (997 * arg3) + (1000 * ext_call.return_data[0])
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3047 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3208 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3208) + ceil32(return_data.size) + 192] = _3047
            mem[(32 * _3208) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3208) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3208) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3047, 64, mem[(32 * _3208) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3 != eth.balance(ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            if 997 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg3:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2304 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2737 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2737) + ceil32(return_data.size) + 128] = _2304
                mem[(32 * _2737) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2737) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2737) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2304, 64, mem[(32 * _2737) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 997 * arg3:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / 997 * arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3044 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3207 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3207) + ceil32(return_data.size) + 192] = _3044
            mem[(32 * _3207) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3207) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3207) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3044, 64, mem[(32 * _3207) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2458 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _2851 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _2851) + ceil32(return_data.size) + 128] = _2458
            mem[(32 * _2851) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _2851) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _2851) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2458, 64, mem[(32 * _2851) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        mem[128] = 'SafeMath: division by zero'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[164] = address(stor1)
        mem[196] = arg2
        mem[228] = 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0])
        mem[260] = arg4
        mem[292] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(stor1), address(arg2), 997 * eth.balance(ext_call.return_data[0]) * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 64
        _3111 = mem[160 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
        _3232 = mem[uint32(stor1), address(arg2) << 64 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
        mem[(32 * _3232) + ceil32(return_data.size) + 192] = _3111
        mem[(32 * _3232) + ceil32(return_data.size) + 224] = 64
        mem[(32 * _3232) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _3232) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return _3111, 64, mem[(32 * _3232) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    require ext_code.size(address(stor1))
    staticcall address(stor1).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        if not ext_call.return_data[0]:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2455 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _2850 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _2850) + ceil32(return_data.size) + 128] = _2455
            mem[(32 * _2850) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _2850) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _2850) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2455, 64, mem[(32 * _2850) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 1000 * ext_call.return_data[0] < 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 1000 * ext_call.return_data[0]:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2588 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _2947 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _2947) + ceil32(return_data.size) + 128] = _2588
            mem[(32 * _2947) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _2947) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _2947) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2588, 64, mem[(32 * _2947) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        mem[128] = 'SafeMath: division by zero'
        if not 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[164] = address(stor1)
        mem[196] = arg2
        mem[228] = 0 / 1000 * ext_call.return_data[0]
        mem[260] = arg4
        mem[292] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(stor1), address(arg2), 0 / 1000 * ext_call.return_data[0], arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 64
        _3163 = mem[160 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
        _3260 = mem[uint32(stor1), address(arg2) << 64 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
        mem[(32 * _3260) + ceil32(return_data.size) + 192] = _3163
        mem[(32 * _3260) + ceil32(return_data.size) + 224] = 64
        mem[(32 * _3260) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _3260) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return _3163, 64, mem[(32 * _3260) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    if 997 * arg3 / arg3 != 997:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 997 * arg3:
        if not ext_call.return_data[0]:
            if 997 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not 997 * arg3:
                mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
                mem[100] = address(stor1)
                mem[132] = arg2
                mem[164] = 0
                mem[196] = arg4
                mem[228] = arg5
                require ext_code.size(sub_94960646Address)
                staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                        gas gas_remaining wei
                       args 0, uint32(stor1), address(arg2), 0, arg4, arg5
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 64
                _2584 = mem[96 len 4], Mask(224, 0, stor1)
                require uint32(stor1), address(arg2) << 64 <= 4294967296
                require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
                require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
                _2944 = mem[uint32(stor1), address(arg2) << 64 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
                mem[(32 * _2944) + ceil32(return_data.size) + 128] = _2584
                mem[(32 * _2944) + ceil32(return_data.size) + 160] = 64
                mem[(32 * _2944) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
                mem[(32 * _2944) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
                return _2584, 64, mem[(32 * _2944) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            mem[128] = 'SafeMath: division by zero'
            if not 997 * arg3:
                revert with 0, 'SafeMath: division by zero'
            mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[164] = address(stor1)
            mem[196] = arg2
            mem[228] = 0 / 997 * arg3
            mem[260] = arg4
            mem[292] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args address(stor1), address(arg2), 0 / 997 * arg3, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 160
            require return_data.size >= 64
            _3160 = mem[160 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
            _3259 = mem[uint32(stor1), address(arg2) << 64 + 160]
            mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
            mem[(32 * _3259) + ceil32(return_data.size) + 192] = _3160
            mem[(32 * _3259) + ceil32(return_data.size) + 224] = 64
            mem[(32 * _3259) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
            mem[(32 * _3259) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
            return _3160, 64, mem[(32 * _3259) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
        if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2731 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _3038 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _3038) + ceil32(return_data.size) + 128] = _2731
            mem[(32 * _3038) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _3038) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _3038) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2731, 64, mem[(32 * _3038) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        mem[128] = 'SafeMath: division by zero'
        if not (997 * arg3) + (1000 * ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[164] = address(stor1)
        mem[196] = arg2
        mem[228] = 0 / (997 * arg3) + (1000 * ext_call.return_data[0])
        mem[260] = arg4
        mem[292] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(stor1), address(arg2), 0 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 64
        _3203 = mem[160 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
        _3295 = mem[uint32(stor1), address(arg2) << 64 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
        mem[(32 * _3295) + ceil32(return_data.size) + 192] = _3203
        mem[(32 * _3295) + ceil32(return_data.size) + 224] = 64
        mem[(32 * _3295) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _3295) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return _3203, 64, mem[(32 * _3295) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    if 997 * ext_call.return_data[0] * arg3 / 997 * arg3 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        if 997 * arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not 997 * arg3:
            mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
            mem[100] = address(stor1)
            mem[132] = arg2
            mem[164] = 0
            mem[196] = arg4
            mem[228] = arg5
            require ext_code.size(sub_94960646Address)
            staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                    gas gas_remaining wei
                   args 0, uint32(stor1), address(arg2), 0, arg4, arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 64
            _2727 = mem[96 len 4], Mask(224, 0, stor1)
            require uint32(stor1), address(arg2) << 64 <= 4294967296
            require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
            require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
            _3035 = mem[uint32(stor1), address(arg2) << 64 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
            mem[(32 * _3035) + ceil32(return_data.size) + 128] = _2727
            mem[(32 * _3035) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _3035) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
            mem[(32 * _3035) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
            return _2727, 64, mem[(32 * _3035) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
        mem[128] = 'SafeMath: division by zero'
        if not 997 * arg3:
            revert with 0, 'SafeMath: division by zero'
        mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[164] = address(stor1)
        mem[196] = arg2
        mem[228] = 997 * ext_call.return_data[0] * arg3 / 997 * arg3
        mem[260] = arg4
        mem[292] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / 997 * arg3, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 64
        _3200 = mem[160 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
        _3294 = mem[uint32(stor1), address(arg2) << 64 + 160]
        mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
        mem[(32 * _3294) + ceil32(return_data.size) + 192] = _3200
        mem[(32 * _3294) + ceil32(return_data.size) + 224] = 64
        mem[(32 * _3294) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
        mem[(32 * _3294) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
        return _3200, 64, mem[(32 * _3294) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
    if 1000 * ext_call.return_data[0] / ext_call.return_data[0] != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (997 * arg3) + (1000 * ext_call.return_data[0]) < 1000 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
        mem[96] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
        mem[100] = address(stor1)
        mem[132] = arg2
        mem[164] = 0
        mem[196] = arg4
        mem[228] = arg5
        require ext_code.size(sub_94960646Address)
        staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
                gas gas_remaining wei
               args 0, uint32(stor1), address(arg2), 0, arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 64
        _2844 = mem[96 len 4], Mask(224, 0, stor1)
        require uint32(stor1), address(arg2) << 64 <= 4294967296
        require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
        require mem[uint32(stor1), address(arg2) << 64 + 96] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[uint32(stor1), address(arg2) << 64 + 96]
        _3104 = mem[uint32(stor1), address(arg2) << 64 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])] = mem[uint32(stor1), address(arg2) << 64 + 128 len floor32(mem[uint32(stor1), address(arg2) << 64 + 96])]
        mem[(32 * _3104) + ceil32(return_data.size) + 128] = _2844
        mem[(32 * _3104) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _3104) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _3104) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return _2844, 64, mem[(32 * _3104) + ceil32(return_data.size) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    mem[128] = 'SafeMath: division by zero'
    if not (997 * arg3) + (1000 * ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    mem[160] = 0x85e2c5b00000000000000000000000000000000000000000000000000000000
    mem[164] = address(stor1)
    mem[196] = arg2
    mem[228] = 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0])
    mem[260] = arg4
    mem[292] = arg5
    require ext_code.size(sub_94960646Address)
    staticcall sub_94960646Address.getExpectedReturn(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
            gas gas_remaining wei
           args address(stor1), address(arg2), 997 * ext_call.return_data[0] * arg3 / (997 * arg3) + (1000 * ext_call.return_data[0]), arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 64
    _3227 = mem[160 len 4], Mask(224, 0, stor1)
    require uint32(stor1), address(arg2) << 64 <= 4294967296
    require uint32(stor1), address(arg2) << 64 + 32 <= return_data.size
    require mem[uint32(stor1), address(arg2) << 64 + 160] <= 4294967296 and uint32(stor1), address(arg2) << 64 + (32 * mem[uint32(stor1), address(arg2) << 64 + 160]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 160] = mem[uint32(stor1), address(arg2) << 64 + 160]
    _3337 = mem[uint32(stor1), address(arg2) << 64 + 160]
    mem[ceil32(return_data.size) + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])] = mem[uint32(stor1), address(arg2) << 64 + 192 len floor32(mem[uint32(stor1), address(arg2) << 64 + 160])]
    mem[(32 * _3337) + ceil32(return_data.size) + 192] = _3227
    mem[(32 * _3337) + ceil32(return_data.size) + 224] = 64
    mem[(32 * _3337) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 160]
    mem[(32 * _3337) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 160])] = mem[ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 160])]
    return _3227, 64, mem[(32 * _3337) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 160]) + 32]
}



}
