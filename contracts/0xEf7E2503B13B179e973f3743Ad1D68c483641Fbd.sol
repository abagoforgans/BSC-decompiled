contract main {




// =====================  Runtime code  =====================


#
#  - sub_8f781080(?)
#
function _fallback() payable {
    revert
}

function sub_c78c2642(?) payable {
    if block.number < 1:
        revert with 'NH{q', 17
    if sha3(block.hash(block.number - 1), msg.sender) % 100 < 1:
        return 4
    if sha3(block.hash(block.number - 1), msg.sender) % 100 < 6:
        return 3
    if sha3(block.hash(block.number - 1), msg.sender) % 100 < 21:
        return 2
    if sha3(block.hash(block.number - 1), msg.sender) % 100 >= 56:
        return 0
    return 1
}



}
