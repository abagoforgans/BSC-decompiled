contract main {




// =====================  Runtime code  =====================


uint256 myTotal;

function myTotal() payable {
    return myTotal
}

function _fallback() payable {
    revert
}

function addTotal(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if myTotal > -arg1 - 1:
        revert with 'NH{q', 17
    myTotal += arg1
}



}
