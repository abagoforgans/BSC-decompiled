contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_df2d7bd1(?) payable {
    require ext_code.size(arg1)
    call arg1.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) >= 6 * eth.balance(this.address) / 10
}

function test(address arg1, address arg2) payable {
    require ext_code.size(arg1)
    call arg1.buy(address rg1) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) >= 6 * eth.balance(this.address) / 10
}



}
