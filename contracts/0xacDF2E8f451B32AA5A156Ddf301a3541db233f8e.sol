contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getSelector(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return Mask(32, 224, sha3(arg1[all]))
}



}
