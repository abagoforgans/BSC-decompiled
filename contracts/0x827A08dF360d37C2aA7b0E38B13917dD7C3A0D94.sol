contract main {




// =====================  Runtime code  =====================


#
#  - setWhiteList(address[] arg1, bool arg2)
#
address stor0;
address stor1;
address stor2;
mapping of uint8 stor3;

function whiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function sub_7012a5c9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor1 = address(arg1)
}

function sub_56c76c45(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'Caller is not a good man'
    require ext_code.size(stor0)
    call stor0.offers(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    if not bool(ceil32(return_data.size) + 352 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[76 len 20]
    require ext_call.return_data[96] == ext_call.return_data[108 len 20]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    require ext_call.return_data[160] == ext_call.return_data[172 len 20]
    require ext_call.return_data[192] < 3
    require ext_call.return_data[224] < 2
    if ext_call.return_data[192] > 2:
        revert with 'NH{q', 33
    if ext_call.return_data[192]:
        revert with 0, 'Offer is closed'
    if ext_call.return_data[224] > 1:
        revert with 'NH{q', 33
    if ext_call.return_data[224]:
        revert with 0, 'Offer is not sell side'
    if ext_call.return_data[108 len 20] != address(arg5):
        revert with 0, 'Offer is not expect nft'
    if ext_call.return_data[76 len 20] != address(arg4):
        revert with 0, 'Offer is not expect dealToken'
    if ext_call.return_data[0] != arg2:
        revert with 0, 'Offer is not expect tokenId'
    if ext_call.return_data[32] != arg3:
        revert with 0, 'Offer is not expect price'
    require ext_code.size(address(arg5))
    staticcall address(arg5).0xe985e9c5 with:
            gas gas_remaining wei
           args ext_call.return_data[140 len 20], stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Offer is invalid'
    require ext_code.size(address(arg4))
    call address(arg4).0x23b872dd with:
         gas gas_remaining wei
        args stor1, msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
