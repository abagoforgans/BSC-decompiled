contract main {




// =====================  Runtime code  =====================


uint256 stor3608;
address storB531;

function _fallback() payable {
    if msg.sender == storB531:
        revert with 0, 'Cannot call fallback function from the proxy admin'
    delegate stor3608 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
