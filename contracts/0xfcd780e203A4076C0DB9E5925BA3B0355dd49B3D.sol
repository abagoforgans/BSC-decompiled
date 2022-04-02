contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function safeSub(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function safeMul(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}



}
