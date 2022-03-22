contract main {




// =====================  Runtime code  =====================


const sub_3a2a7e90(?) = ext_call.return_data[0]

const totalBurnt = (-ext_call.return_data[0] + 1098420 * 10^18)


function _fallback() payable {
    revert
}

function currentBurnPercent() payable {
    require ext_code.size(0x23b76d9037dc979ebeac1f19abc6df0c0d46d5d)
    staticcall 0x23b76d9037dc979ebeac1f19abc6df0c0d46d5d.getLastTwap() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 75 * 10^18:
        return 49
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if 75000000000000000000 * 10^18 / ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 75000000000000000000 * 10^18 / ext_call.return_data[0]
    if 49000000000 * 10^18 / 75000000000000000000 * 10^18 / ext_call.return_data[0] > 500 * 10^6:
        return (49000000000 * 10^18 / 75000000000000000000 * 10^18 / ext_call.return_data[0] / 10^9)
    else:
        return 0
}



}
