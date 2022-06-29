contract main {




// =====================  Runtime code  =====================


const ape = 0xcf0febd3f17cef5b47b0cd257acf6025c5bff3b7

const sub_a14ea3ad(?) = 0x10ed43c718714eb63d5aa57b78b54704e256024e

const pancakeFactory = 0xca143ce32fe78f1f7019d7d551a6402fc5350c73


address bakeryRouterAddress;
address sub_92f68778Address;

function sub_92f68778(?) {
    return sub_92f68778Address
}

function bakeryRouter() {
    return bakeryRouterAddress
}

function _fallback() payable {
    revert
}

function startArbitrage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xae13d989dac2f0debff460ac112a837c89baa7cd, 0x78867bbeef44f2326bf8ddd1941a4439382ef2a7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
}



}
