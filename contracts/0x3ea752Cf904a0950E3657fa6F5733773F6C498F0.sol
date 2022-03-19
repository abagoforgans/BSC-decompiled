contract main {




// =====================  Runtime code  =====================


const canCall(address arg1, address arg2, bytes4 arg3) = 1


function _fallback() payable {
    revert
}



}
