contract main {




// =====================  Runtime code  =====================


uint32 stor0; offset 160
uint128 payload; offset 160
address grantAddress;

function grant() {
    return grantAddress
}

function payload() {
    return (payload << 224)
}

function _fallback() payable {
    call grantAddress with:
       funct stor0
       value msg.value wei
         gas gas_remaining wei
        args 0
}



}
