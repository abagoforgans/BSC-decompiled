contract main {




// =====================  Runtime code  =====================


mapping of address games;

function games(uint256 arg1) {
    require calldata.size - 4 >= 32
    return games[arg1]
}

function _fallback() payable {
    revert
}

function resultNumber(uint8 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0xe3968d58 with:
            gas gas_remaining wei
           args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function maxUserProfit(uint8 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0x66503888 with:
            gas gas_remaining wei
           args arg2, arg3 / 10^9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9
    return (10^9 * ext_call.return_data[0])
}

function userProfit(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0xcd2ff0da with:
            gas gas_remaining wei
           args arg2, arg3 / 10^9, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9
    return (10^9 * ext_call.return_data[0])
}

function maxBet(uint8 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0x704b452a with:
            gas gas_remaining wei
           args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]
    if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
        return 0
    require 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15
    return (10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15)
}



}
