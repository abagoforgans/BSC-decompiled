contract main {




// =====================  Runtime code  =====================


const name = 'SYRUPVOTE'

const totalSupply = ext_call.return_data[0]

const decimals = 18

const symbol = ''

const votes = 0x9cf7bc57584b7998236eff51b98a168dcea9b0


function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x9cf7bc57584b7998236eff51b98a168dcea9b0)
    staticcall 0x9cf7bc57584b7998236eff51b98a168dcea9b0.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
