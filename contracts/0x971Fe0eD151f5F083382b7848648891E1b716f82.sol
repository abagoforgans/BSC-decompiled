contract main {




// =====================  Runtime code  =====================


uint256 minAmount;

function minAmount() {
    return minAmount
}

function _fallback() payable {
    revert
}

function func2() payable {
    if msg.value < minAmount:
        emit 0xa1748cac: msg.value, minAmount
    else:
        emit 0xc79b8ed0: msg.value, minAmount
}

function func1() payable {
    if msg.value < minAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Msg value must be greater than minAmount'
}



}
