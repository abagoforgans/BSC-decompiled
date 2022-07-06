contract main {




// =====================  Runtime code  =====================


uint256 val;

function getVal() payable {
    return val
}

function _fallback() payable {
    revert
}

function setVal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    val = arg1
}



}
