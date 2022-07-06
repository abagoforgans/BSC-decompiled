contract main {




// =====================  Runtime code  =====================


#
#  - checkManger(address arg1)
#  - sub_5abbd41e(?)
#  - setAddress(uint16 arg1, address arg2)
#
mapping of address view;

function viewAddress(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return view[arg1 << 240]
}

function _fallback() payable {
    revert
}



}
