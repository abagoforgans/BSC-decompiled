contract main {




// =====================  Runtime code  =====================


address destinationWalletAddress;

function destinationWallet() {
    return destinationWalletAddress
}

function _fallback() payable {
    revert
}

function setDestinationWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    destinationWalletAddress = arg1
}

function sub_c3accdf9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    call destinationWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
