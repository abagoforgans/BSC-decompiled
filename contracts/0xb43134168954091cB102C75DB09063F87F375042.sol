contract main {




// =====================  Runtime code  =====================


#
#  - sub_d4142b5f(?)
#
const sub_06693fec(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const sub_bb60aaa7(?) = 100000


uint256 FEE;
address registryAddress;
address routerAddress;
address devWalletAddress;

function registry() {
    return registryAddress
}

function devWallet() {
    return devWalletAddress
}

function FEE() {
    return FEE
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function currentBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
