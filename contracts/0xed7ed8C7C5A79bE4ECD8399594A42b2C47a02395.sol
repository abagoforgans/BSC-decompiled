contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
address stor1;

function upgradeDelegate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor1
    address(stor0) = arg1
}

function _fallback() payable {
    delegate uint256(stor0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require delegate.return_code
    return ext_call.return_data[0 len return_data.size]
}



}
