contract main {




// =====================  Runtime code  =====================


#
#  - sub_e4eb9e90(?)
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
