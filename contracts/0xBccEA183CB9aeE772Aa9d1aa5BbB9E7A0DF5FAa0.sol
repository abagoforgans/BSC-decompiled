contract main {




// =====================  Runtime code  =====================


const pancakeFactory = 0xca143ce32fe78f1f7019d7d551a6402fc5350c73


function _fallback() payable {
    revert
}

function startArbitrage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
}



}
