contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function log() payable {
    stor0 = 4
}

function join() payable {
    stor0 = 2
}

function _fallback() payable {
    revert
}



}
