contract main {




// =====================  Runtime code  =====================


uint256 retrieve;

function retrieve() payable {
    return retrieve
}

function _fallback() payable {
    revert
}

function store(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    retrieve = arg1
}



}
