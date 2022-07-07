contract main {




// =====================  Runtime code  =====================


#
#  - sub_1667180c(?)
#
address stor0;
address stor2;

function _fallback() payable {
    revert
}

function transferOut(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6c0f17d8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == uint8(arg2)
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'only owner allowed'
    require ext_code.size(stor2)
    call stor2.0x2680ac1e with:
       value arg3 wei
         gas gas_remaining wei
        args uint8(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}



}
