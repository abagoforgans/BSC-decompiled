contract main {




// =====================  Runtime code  =====================


const sub_3a2a7e90(?) = ext_call.return_data[0]

const totalBurnt = (-ext_call.return_data[0] + 1098420 * 10^18)


function _fallback() payable {
    revert
}

function sub_f873f82d(?) payable {
    require ext_code.size(0xe10e9822a5de22f8761919310dda35cd997d63c0)
    staticcall 0xe10e9822a5de22f8761919310dda35cd997d63c0.getLastTwap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 75 * 10^18:
        return 50
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not 75000000000000000000 * 10^18 / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if 50000000000 * 10^18 / 75000000000000000000 * 10^18 / ext_call.return_data[0] > 500 * 10^6:
        return (50000000000 * 10^18 / 75000000000000000000 * 10^18 / ext_call.return_data[0] / 10^9)
    else:
        return 0
}

function currentBurnPercent() payable {
    require ext_code.size(0xe10e9822a5de22f8761919310dda35cd997d63c0)
    staticcall 0xe10e9822a5de22f8761919310dda35cd997d63c0.getLastTwap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 75 * 10^18:
        return 50 * 10^18
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not 75000000000000000000 * 10^18 / ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if 50000000000 * 10^18 / 75000000000000000000 * 10^18 / ext_call.return_data[0] > 500 * 10^6:
        return (50000000000 * 10^18 / 75000000000000000000 * 10^18 / ext_call.return_data[0])
    return 500 * 10^6
}



}
