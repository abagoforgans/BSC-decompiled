contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function test(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > 100:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
