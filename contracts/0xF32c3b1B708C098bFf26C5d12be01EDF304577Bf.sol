contract main {




// =====================  Runtime code  =====================


function swap() payable {
  stop
}

function _fallback() payable {
    revert
}

function transferNotify(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}



}
