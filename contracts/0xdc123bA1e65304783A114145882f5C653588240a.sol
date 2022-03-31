contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function getResult() payable {
    stor0 = 1
    # nil
}



}
