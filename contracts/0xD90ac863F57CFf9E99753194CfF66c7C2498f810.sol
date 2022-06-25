contract main {




// =====================  Runtime code  =====================


#
#  - accept(address arg1, uint256 arg2, uint256 arg3)
#
address sub_772a6275Address;
address stor1;
mapping of uint8 stor2;

function sub_06de3386(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'invalid access'
    return bool(stor2[address(arg1)])
}

function sub_772a6275(?) payable {
    if stor1 != msg.sender:
        revert with 0, 'invalid access'
    return sub_772a6275Address
}

function _fallback() payable {
    revert
}

function addToWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'invalid access'
    stor2[address(arg1)] = 1
}



}
