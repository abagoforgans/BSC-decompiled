contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;

function _fallback() {
    idx = 0
    while idx < 128:
        mem[-idx + 255 len 1] = call.data[idx len 1]
        idx = idx + 1
        continue 
    mem[224] = mem[224] - mem[192]
    mem[192] = mem[192] - mem[160]
    staticcall mem[128] - this.address - Mask(166, 0, stor0).getReserves() with:
            gas -1 wei
    if ext_call.return_data[64] != mem[160] - mem[128]:
        revert with 0, ''
    require ext_code.size(address(mem[128] - this.address - Mask(166, 0, stor0)))
    call address(mem[128] - this.address - Mask(166, 0, stor0)).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args mem[192], mem[224], address(stor0), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
