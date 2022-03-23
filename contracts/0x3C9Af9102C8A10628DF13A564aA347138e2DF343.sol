contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor3
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7c7e8137(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor0, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[160] = stor1
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = 32 * 10^17
    mem[228] = 10^17
    mem[292] = this.address
    mem[324] = arg2
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas 2 * 10^6 wei
        args 32 * 10^17, 10^17, 160, address(this.address), arg2, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], 745058059 <= 4294967296
    require mem[192 len 4], 745058059 + 32 <= return_data.size
    require mem[mem[192 len 4], 745058059 + 192] <= 4294967296 and mem[192 len 4], 745058059 + (32 * mem[mem[192 len 4], 745058059 + 192]) + 32 <= return_data.size
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
