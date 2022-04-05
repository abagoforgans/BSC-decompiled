contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReserves(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    require 0 < arg2.length
    require 1 < arg2.length
    require ext_code.size(arg1)
    staticcall arg1.0xe6a43905 with:
            gas gas_remaining wei
           args address(mem[128]), mem[172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(32 * arg2.length) + 128 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 1 < arg2.length
    require 0 < arg2.length
    if mem[140 len 20] >= mem[172 len 20]:
        return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
}



}
