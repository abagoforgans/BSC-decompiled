contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = arg4
            mem[132] = 0
            mem[196] = msg.sender
            mem[228] = arg5
            mem[164] = 160
            mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000] = uint32(arg4), 0, 160, msg.sender, arg5, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e71fffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, address(arg2), 160, msg.sender, arg5, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _125 = mem[96 len 4], Mask(224, 32, arg4) >> 32
            require mem[96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96]
            mem[64] = (32 * mem[_125 + 96]) + ceil32(return_data.size) + 128
        else:
            require ext_code.size(arg3)
            call arg3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = arg4
            mem[132] = 0
            mem[196] = msg.sender
            mem[228] = arg5
            mem[164] = 160
            mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000] = uint32(arg4), 0, 160, msg.sender, arg5, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e71fffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, address(arg2), 160, msg.sender, arg5, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _127 = mem[96 len 4], Mask(224, 32, arg4) >> 32
            require mem[96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96]
            mem[64] = (32 * mem[_127 + 96]) + ceil32(return_data.size) + 128
    else:
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), 10000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = arg4
            mem[132] = 0
            mem[196] = msg.sender
            mem[228] = arg5
            mem[164] = 160
            mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000] = uint32(arg4), 0, 160, msg.sender, arg5, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e71fffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, address(arg2), 160, msg.sender, arg5, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _129 = mem[96 len 4], Mask(224, 32, arg4) >> 32
            require mem[96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96]
            mem[64] = (32 * mem[_129 + 96]) + ceil32(return_data.size) + 128
        else:
            require ext_code.size(arg3)
            call arg3.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg1), 10000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.0xad5c4648 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0 < ext_call.return_data[0]
            require 1 < ext_call.return_data[0]
            mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[100] = arg4
            mem[132] = 0
            mem[196] = msg.sender
            mem[228] = arg5
            mem[164] = 160
            mem[260] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000] = uint32(arg4), 0, 160, msg.sender, arg5, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e71fffffffffffffffffffffffffffffffffffffffffffffffffffffff5c]
            require ext_code.size(arg1)
            call arg1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, uint32(arg4), 0, address(arg2), 160, msg.sender, arg5, 0x38ed173900000000000000000000000000000000000000000000000000000000, mem[292 len 0x1da2e72000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _131 = mem[96 len 4], Mask(224, 32, arg4) >> 32
            require mem[96 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg4) >> 32 + 96]
            mem[64] = (32 * mem[_131 + 96]) + ceil32(return_data.size) + 128
    require mem[ceil32(return_data.size) + 96] - 1 < mem[ceil32(return_data.size) + 96]
    emit 0xa52ab43b: arg4, mem[(32 * mem[ceil32(return_data.size) + 96] - 1) + ceil32(return_data.size) + 128], address(ext_call.return_data[0]), arg2
}



}
