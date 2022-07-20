contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
mapping of uint8 stor1;
uint256 sub_13c19779;
uint256 stor3;
uint256 stor4;
address owner;

function sub_13c19779(?) payable {
    return sub_13c19779
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_13c19779 and stor0[address(arg1)] > -1 / sub_13c19779:
        revert with 0, 17
    if stor0[address(arg1)] > !(sub_13c19779 * stor0[address(arg1)] / 100):
        revert with 0, 17
    return (stor0[address(arg1)] + (sub_13c19779 * stor0[address(arg1)] / 100))
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_13c19779 and stor0[address(msg.sender)] > -1 / sub_13c19779:
        revert with 0, 17
    if stor0[address(msg.sender)] > !(sub_13c19779 * stor0[address(msg.sender)] / 100):
        revert with 0, 17
    if stor0[address(msg.sender)] + (sub_13c19779 * stor0[address(msg.sender)] / 100) < arg2:
        revert with 0, 'Insuficient funds'
    if stor0[msg.sender] < arg2:
        revert with 0, 17
    stor0[msg.sender] -= arg2
    if stor0[arg1] > !arg2:
        revert with 0, 17
    if stor0[arg1] + arg2 < stor4:
        revert with 0, 17
    stor0[address(arg1)] = stor0[arg1] + arg2 - stor4
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        if stor3 == -1:
            revert with 0, 17
        stor3++
    if sub_13c19779 > !stor4:
        revert with 0, 17
    sub_13c19779 += stor4
}



}
