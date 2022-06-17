contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function sub_7012a5c9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2 = address(arg1)
}

function sub_b574b72f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    if stor3 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(stor1)
    call stor1.offers(uint256 arg1) with:
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
    if ext_call.return_data[108 len 20] != address(arg4):
        revert with 0, 'Offer is not expect nft'
    if ext_call.return_data[76 len 20] != stor0:
        revert with 0, 'Offer is not expect dealToken'
    if ext_call.return_data[0] != arg2:
        revert with 0, 'Offer is not expect tokenId'
    if ext_call.return_data[32] != arg3:
        revert with 0, 'Offer is not expect price'
    require ext_code.size(address(arg4))
    staticcall address(arg4).0xe985e9c5 with:
            gas gas_remaining wei
           args ext_call.return_data[140 len 20], stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Offer is closed.'
    require ext_code.size(stor0)
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args stor2, msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
