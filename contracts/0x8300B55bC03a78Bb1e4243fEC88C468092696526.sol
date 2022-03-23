contract main {




// =====================  Runtime code  =====================


#
#  - sub_465581c6(?)
#
address stor0;

function kill() payable {
    if stor0 != msg.sender:
        revert with 0, 'HELLO FROM THE OTHER SIDE'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}



}
