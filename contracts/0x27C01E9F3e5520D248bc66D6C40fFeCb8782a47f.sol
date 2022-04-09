contract main {




// =====================  Runtime code  =====================


const name = 'SOAKVOTE'

const totalSupply = ext_call.return_data[0]

const decimals = 18

const symbol = ''

const votes = 0x849233ff1aea15d80ef658b2871664c9ca994063


function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x849233ff1aea15d80ef658b2871664c9ca994063)
    staticcall 0x849233ff1aea15d80ef658b2871664c9ca994063.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
