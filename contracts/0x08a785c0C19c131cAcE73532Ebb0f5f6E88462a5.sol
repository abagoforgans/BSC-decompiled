contract main {




// =====================  Runtime code  =====================


const name = 'fry.KetchupV2.VOTE'

const totalSupply = ext_call.return_data[0]

const decimals = 18

const symbol = ''

const votes = 0x15b3d410fcd0d695e1bbe4f717f8e1b6d0fb2d0c


function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x15b3d410fcd0d695e1bbe4f717f8e1b6d0fb2d0c)
    staticcall 0x15b3d410fcd0d695e1bbe4f717f8e1b6d0fb2d0c.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
