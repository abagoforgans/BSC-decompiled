contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getAllReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require 2 * arg1.length <= test266151307()
    if uint255(arg1.length):
        mem[128 len 64 * arg1.length] = call.data[calldata.size len 64 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * arg1.length) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < 2 * arg1.length
        require (2 * idx) + 1 < 2 * arg1.length
        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
        mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + 192 len 2 * Mask(251, 4, arg1.length)] = mem[128 len 2 * Mask(251, 4, arg1.length)]
    return Array(len=2 * arg1.length, data=mem[128 len 2 * Mask(251, 4, arg1.length)], mem[(64 * arg1.length) + (2 * Mask(251, 4, arg1.length)) + 192 len (64 * arg1.length) - (2 * Mask(251, 4, arg1.length))]), 
}

function sub_a67f9f8c(?) payable {
    require calldata.size - 4 >= 96
    require 2 * arg3 - arg2 <= test266151307()
    mem[96] = 2 * arg3 - arg2
    if uint255(arg3 - arg2):
        mem[128 len 64 * arg3 - arg2] = call.data[calldata.size len 64 * arg3 - arg2]
    idx = 0
    while idx < arg3 - arg2:
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args (arg2 + idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[(64 * arg3 - arg2) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < mem[96]
        require (2 * idx) + 1 < mem[96]
        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, ext_call.return_data[32])
        mem[(64 * idx) + 128] = Mask(112, 0, ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(64 * arg3 - arg2) + 128] = 32
    mem[(64 * arg3 - arg2) + 160] = mem[96]
    mem[(64 * arg3 - arg2) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(64 * arg3 - arg2) + 160 len (32 * mem[96]) + 32]
}

function getAllPairs(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require (3 * arg3) - (3 * arg2) <= test266151307()
    mem[96] = (3 * arg3) - (3 * arg2)
    if (3 * arg3) - (3 * arg2):
        mem[128 len 32 * (3 * arg3) - (3 * arg2)] = call.data[calldata.size len 32 * (3 * arg3) - (3 * arg2)]
    idx = 0
    while idx < arg3 - arg2:
        mem[(32 * (3 * arg3) - (3 * arg2)) + 132] = arg2 + idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args (arg2 + idx)
        mem[(32 * (3 * arg3) - (3 * arg2)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 3 * idx < mem[96]
        mem[(32 * 3 * idx) + 128] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(32 * (3 * arg3) - (3 * arg2)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (3 * idx) + 1 < mem[96]
        mem[(32 * (3 * idx) + 1) + 128] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(32 * (3 * arg3) - (3 * arg2)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (3 * idx) + 2 < mem[96]
        mem[(32 * (3 * idx) + 2) + 128] = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
    mem[(32 * (3 * arg3) - (3 * arg2)) + 128] = 32
    mem[(32 * (3 * arg3) - (3 * arg2)) + 160] = mem[96]
    mem[(32 * (3 * arg3) - (3 * arg2)) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * (3 * arg3) - (3 * arg2)) + 160 len (32 * mem[96]) + 32]
}



}
