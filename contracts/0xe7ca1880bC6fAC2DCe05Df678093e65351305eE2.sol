contract main {




// =====================  Runtime code  =====================


#
#  - sub_298c6c51(?)
#  - sub_44c4de41(?)
#  - rare()
#  - sub_89627abe(?)
#  - sub_b7cd9cbb(?)
#  - legendary()
#
uint256 stor0;

function _fallback() payable {
    revert
}

function sub_64026ac0(?) payable {
    if 1 > !stor0:
        revert with 0, 17
    stor0++
    if stor0 > !uint8(sha3(block.timestamp, stor0 + 1, block.difficulty)):
        revert with 0, 17
    if sha3(block.timestamp, msg.sender, stor0 + uint8(sha3(block.timestamp, stor0 + 1, block.difficulty))) % 9999 > -1:
        revert with 0, 17
    return (sha3(block.timestamp, msg.sender, stor0 + uint8(sha3(block.timestamp, stor0 + 1, block.difficulty))) % 9999)
}

function sub_04cafb4a(?) payable {
    require calldata.size - 4 >= 96
    if arg3 > !uint8(sha3(block.timestamp, arg3, block.difficulty)):
        revert with 0, 17
    if arg2 < arg1:
        revert with 0, 17
    if not arg2 - arg1:
        revert with 0, 18
    if sha3(block.timestamp, msg.sender, arg3 + uint8(sha3(block.timestamp, arg3, block.difficulty))) % arg2 - arg1 > !arg1:
        revert with 0, 17
    return ((sha3(block.timestamp, msg.sender, arg3 + uint8(sha3(block.timestamp, arg3, block.difficulty))) % arg2 - arg1) + arg1)
}



}
