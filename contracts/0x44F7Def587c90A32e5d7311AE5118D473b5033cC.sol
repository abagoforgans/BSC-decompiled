contract main {




// =====================  Runtime code  =====================


const maxBalance = 20 * 10^18

const conflictEndFine = 10^15

const MIN_BET_VALUE = 10^13

const CONFLICT_END_FINE = 10^15

const NOT_ENDED_FINE = 10^15

const MIN_BANKROLL = 40 * 10^18

const USER_TIMEOUT = (6 * 3600)

const SERVER_TIMEOUT = (6 * 3600)

const MAX_BALANCE = 20 * 10^18


mapping of address games;

function games(uint256 arg1) {
    require calldata.size - 4 >= 32
    return games[arg1]
}

function _fallback() payable {
    revert
}

function minHouseStake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 1:
        return (40 * 10^18 * arg1)
    return 40 * 10^18
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

function isValidBet(uint8 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0x704b452a with:
            gas gas_remaining wei
           args arg2, 40 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]
    if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
        if arg3 < 10^13:
            return arg3 >= 10^13
        return arg3 <= 0
    require 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15
    if arg3 < 10^13:
        return arg3 >= 10^13
    return arg3 <= 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15
}

function processBet(uint8 arg1, uint256 arg2, uint256 arg3, int256 arg4, bytes32 arg5, bytes32 arg6) {
    require calldata.size - 4 >= 192
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0xe3968d58 with:
            gas gas_remaining wei
           args arg5, arg6, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0xcd2ff0da with:
            gas gas_remaining wei
           args arg2, arg3 / 10^9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if arg4 >= arg4:
            return arg4
    else:
        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
            if 10^9 * ext_call.return_data[0] < 0:
                if (10^9 * ext_call.return_data[0]) + arg4 < arg4:
                    return ((10^9 * ext_call.return_data[0]) + arg4)
            else:
                if (10^9 * ext_call.return_data[0]) + arg4 >= arg4:
                    return ((10^9 * ext_call.return_data[0]) + arg4)
                if 10^9 * ext_call.return_data[0] < 0:
                    if (10^9 * ext_call.return_data[0]) + arg4 < arg4:
                        return ((10^9 * ext_call.return_data[0]) + arg4)
    revert
}

function endGameConflict(uint8 arg1, uint256 arg2, uint256 arg3, int256 arg4, uint256 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0x704b452a with:
            gas gas_remaining wei
           args arg2, 40 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]
    if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
        if arg3 < 10^13:
            revert with 0, 'inv bet'
        if arg3 > 0:
            revert with 0, 'inv bet'
    else:
        require 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15
        if arg3 < 10^13:
            revert with 0, 'inv bet'
        if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
            revert with 0, 'inv bet'
    require arg5 < 0x8000000000000000000000000000000000000000000000000000000000000000
    if -arg5 > arg4:
        revert with 0, 'inv balance'
    if arg4 > 20 * 10^18:
        revert with 0, 'inv balance'
    if not arg6:
        revert with 0, 'inv seeds'
    if not arg7:
        revert with 0, 'inv seeds'
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0xe3968d58 with:
            gas gas_remaining wei
           args arg6, arg7, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not games[arg1 << 248]:
        revert with 0, 'Invalid game type'
    require ext_code.size(games[arg1 << 248])
    staticcall games[arg1 << 248].0xcd2ff0da with:
            gas gas_remaining wei
           args arg2, arg3 / 10^9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require arg4 >= arg4
        require arg4 - 10^15 <= arg4
        require arg5 < 0x8000000000000000000000000000000000000000000000000000000000000000
        if arg4 - 10^15 >= -arg5:
            return (arg4 - 10^15)
    else:
        require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9
        if 10^9 * ext_call.return_data[0] < 0:
            require (10^9 * ext_call.return_data[0]) + arg4 < arg4
        else:
            if (10^9 * ext_call.return_data[0]) + arg4 < arg4:
                require 10^9 * ext_call.return_data[0] < 0
                require (10^9 * ext_call.return_data[0]) + arg4 < arg4
        require (10^9 * ext_call.return_data[0]) + arg4 - 10^15 <= (10^9 * ext_call.return_data[0]) + arg4
        require arg5 < 0x8000000000000000000000000000000000000000000000000000000000000000
        if (10^9 * ext_call.return_data[0]) + arg4 - 10^15 >= -arg5:
            return ((10^9 * ext_call.return_data[0]) + arg4 - 10^15)
    return -arg5
}

function serverForceGameEnd(uint8 arg1, uint256 arg2, uint256 arg3, int256 arg4, uint256 arg5, bytes32 arg6, bytes32 arg7, uint256 arg8) {
    require calldata.size - 4 >= 256
    require arg5 < 0x8000000000000000000000000000000000000000000000000000000000000000
    if -arg5 > arg4:
        revert with 0, 'inv balance'
    if arg4 > 20 * 10^18:
        revert with 0, 'inv balance'
    if arg8 + (6 * 3600) > block.timestamp:
        revert with 0, 'too low timeout'
    if arg1:
        if not games[arg1 << 248]:
            revert with 0, 'Invalid game type'
        require ext_code.size(games[arg1 << 248])
        staticcall games[arg1 << 248].0x704b452a with:
                gas gas_remaining wei
               args arg2, 40 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]
        if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
            if arg3 < 10^13:
                revert with 0, 'inv bet'
            if arg3 > 0:
                revert with 0, 'inv bet'
        else:
            require 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15
            if arg3 < 10^13:
                revert with 0, 'inv bet'
            if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
                revert with 0, 'inv bet'
    else:
        if arg2:
            if not games[arg1 << 248]:
                revert with 0, 'Invalid game type'
            require ext_code.size(games[arg1 << 248])
            staticcall games[arg1 << 248].0x704b452a with:
                    gas gas_remaining wei
                   args arg2, 40 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]
            if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
                if arg3 < 10^13:
                    revert with 0, 'inv bet'
                if arg3 > 0:
                    revert with 0, 'inv bet'
            else:
                require 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15
                if arg3 < 10^13:
                    revert with 0, 'inv bet'
                if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
                    revert with 0, 'inv bet'
        else:
            if arg3:
                if not games[arg1 << 248]:
                    revert with 0, 'Invalid game type'
                require ext_code.size(games[arg1 << 248])
                staticcall games[arg1 << 248].0x704b452a with:
                        gas gas_remaining wei
                       args arg2, 40 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]
                if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
                    if arg3 < 10^13:
                        revert with 0, 'inv bet'
                    if arg3 > 0:
                        revert with 0, 'inv bet'
                else:
                    require 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15
                    if arg3 < 10^13:
                        revert with 0, 'inv bet'
                    if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
                        revert with 0, 'inv bet'
            else:
                if arg4:
                    if not games[arg1 << 248]:
                        revert with 0, 'Invalid game type'
                    require ext_code.size(games[arg1 << 248])
                    staticcall games[arg1 << 248].0x704b452a with:
                            gas gas_remaining wei
                           args arg2, 40 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]
                    if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
                        if arg3 < 10^13:
                            revert with 0, 'inv bet'
                        if arg3 > 0:
                            revert with 0, 'inv bet'
                    else:
                        require 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15
                        if arg3 < 10^13:
                            revert with 0, 'inv bet'
                        if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
                            revert with 0, 'inv bet'
    if not arg1:
        require arg5 < 0x8000000000000000000000000000000000000000000000000000000000000000
        if -1 * 10^15 >= -arg5:
            return -1 * 10^15
    else:
        if not games[arg1 << 248]:
            revert with 0, 'Invalid game type'
        require ext_code.size(games[arg1 << 248])
        staticcall games[arg1 << 248].0xe3968d58 with:
                gas gas_remaining wei
               args arg6, arg7, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not games[arg1 << 248]:
            revert with 0, 'Invalid game type'
        require ext_code.size(games[arg1 << 248])
        staticcall games[arg1 << 248].0xcd2ff0da with:
                gas gas_remaining wei
               args arg2, arg3 / 10^9, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require arg4 >= arg4
            require arg4 - 10^15 <= arg4
            require arg5 < 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg4 - 10^15 >= -arg5:
                return (arg4 - 10^15)
        else:
            require 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9
            if 10^9 * ext_call.return_data[0] < 0:
                require (10^9 * ext_call.return_data[0]) + arg4 < arg4
            else:
                if (10^9 * ext_call.return_data[0]) + arg4 < arg4:
                    require 10^9 * ext_call.return_data[0] < 0
                    require (10^9 * ext_call.return_data[0]) + arg4 < arg4
            require (10^9 * ext_call.return_data[0]) + arg4 - 10^15 <= (10^9 * ext_call.return_data[0]) + arg4
            require arg5 < 0x8000000000000000000000000000000000000000000000000000000000000000
            if (10^9 * ext_call.return_data[0]) + arg4 - 10^15 >= -arg5:
                return ((10^9 * ext_call.return_data[0]) + arg4 - 10^15)
    return -arg5
}

function userForceGameEnd(uint8 arg1, uint256 arg2, uint256 arg3, int256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require arg5 < 0x8000000000000000000000000000000000000000000000000000000000000000
    if -arg5 > arg4:
        revert with 0, 'inv balance'
    if arg4 > 20 * 10^18:
        revert with 0, 'inv balance'
    if arg6 + (6 * 3600) > block.timestamp:
        revert with 0, 'too low timeout'
    if arg1:
        if not games[arg1 << 248]:
            revert with 0, 'Invalid game type'
        require ext_code.size(games[arg1 << 248])
        staticcall games[arg1 << 248].0x704b452a with:
                gas gas_remaining wei
               args arg2, 40 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]:
            if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
                if arg3 < 10^13:
                    revert with 0, 'inv bet'
                if arg3 > 0:
                    revert with 0, 'inv bet'
                if arg1:
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
                        if arg4 + 10^15 >= arg4:
                            return (arg4 + 10^15)
                    else:
                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                else:
                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                else:
                    if arg2:
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
                            if arg4 + 10^15 >= arg4:
                                return (arg4 + 10^15)
                        else:
                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                    else:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                    else:
                        if arg3:
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
                                if arg4 + 10^15 >= arg4:
                                    return (arg4 + 10^15)
                            else:
                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        else:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                        else:
                            if not arg4:
                                if arg4 + 10^15 >= arg4:
                                    return (arg4 + 10^15)
                            else:
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
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            else:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
            else:
                if 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15:
                    if arg3 < 10^13:
                        revert with 0, 'inv bet'
                    if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
                        revert with 0, 'inv bet'
                    if arg1:
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
                            if arg4 + 10^15 >= arg4:
                                return (arg4 + 10^15)
                        else:
                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                    else:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                    else:
                        if arg2:
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
                                if arg4 + 10^15 >= arg4:
                                    return (arg4 + 10^15)
                            else:
                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        else:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                        else:
                            if arg3:
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
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            else:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                            else:
                                if not arg4:
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
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
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
                                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                else:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
    else:
        if arg2:
            if not games[arg1 << 248]:
                revert with 0, 'Invalid game type'
            require ext_code.size(games[arg1 << 248])
            staticcall games[arg1 << 248].0x704b452a with:
                    gas gas_remaining wei
                   args arg2, 40 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]:
                if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
                    if arg3 < 10^13:
                        revert with 0, 'inv bet'
                    if arg3 > 0:
                        revert with 0, 'inv bet'
                    if arg1:
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
                            if arg4 + 10^15 >= arg4:
                                return (arg4 + 10^15)
                        else:
                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                    else:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                    else:
                        if arg2:
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
                                if arg4 + 10^15 >= arg4:
                                    return (arg4 + 10^15)
                            else:
                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        else:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                        else:
                            if arg3:
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
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            else:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                            else:
                                if not arg4:
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
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
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
                                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                else:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                else:
                    if 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15:
                        if arg3 < 10^13:
                            revert with 0, 'inv bet'
                        if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
                            revert with 0, 'inv bet'
                        if arg1:
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
                                if arg4 + 10^15 >= arg4:
                                    return (arg4 + 10^15)
                            else:
                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        else:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                        else:
                            if arg2:
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
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            else:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                            else:
                                if arg3:
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
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
                                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                else:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                else:
                                    if not arg4:
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
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
                                            if arg4 + 10^15 >= arg4:
                                                return (arg4 + 10^15)
                                        else:
                                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    else:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
        else:
            if arg3:
                if not games[arg1 << 248]:
                    revert with 0, 'Invalid game type'
                require ext_code.size(games[arg1 << 248])
                staticcall games[arg1 << 248].0x704b452a with:
                        gas gas_remaining wei
                       args arg2, 40 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]:
                    if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
                        if arg3 < 10^13:
                            revert with 0, 'inv bet'
                        if arg3 > 0:
                            revert with 0, 'inv bet'
                        if arg1:
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
                                if arg4 + 10^15 >= arg4:
                                    return (arg4 + 10^15)
                            else:
                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        else:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                        else:
                            if arg2:
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
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            else:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                            else:
                                if arg3:
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
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
                                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                else:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                else:
                                    if not arg4:
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
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
                                            if arg4 + 10^15 >= arg4:
                                                return (arg4 + 10^15)
                                        else:
                                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    else:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                    else:
                        if 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15:
                            if arg3 < 10^13:
                                revert with 0, 'inv bet'
                            if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
                                revert with 0, 'inv bet'
                            if arg1:
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
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            else:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                            else:
                                if arg2:
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
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
                                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                else:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                else:
                                    if arg3:
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
                                            if arg4 + 10^15 >= arg4:
                                                return (arg4 + 10^15)
                                        else:
                                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    else:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                    else:
                                        if not arg4:
                                            if arg4 + 10^15 >= arg4:
                                                return (arg4 + 10^15)
                                        else:
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
                                                if arg4 + 10^15 >= arg4:
                                                    return (arg4 + 10^15)
                                            else:
                                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                        else:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
            else:
                if not arg4:
                    if arg1:
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
                            if arg4 + 10^15 >= arg4:
                                return (arg4 + 10^15)
                        else:
                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                    else:
                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                    else:
                        if arg2:
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
                                if arg4 + 10^15 >= arg4:
                                    return (arg4 + 10^15)
                            else:
                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        else:
                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                        else:
                            if arg3:
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
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            else:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                            else:
                                if not arg4:
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
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
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
                                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                else:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                else:
                    if not games[arg1 << 248]:
                        revert with 0, 'Invalid game type'
                    require ext_code.size(games[arg1 << 248])
                    staticcall games[arg1 << 248].0x704b452a with:
                            gas gas_remaining wei
                           args arg2, 40 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + 5 * 10^14 >= ext_call.return_data[0]:
                        if not ext_call.return_data[0] + 5 * 10^14 / 10^15:
                            if arg3 < 10^13:
                                revert with 0, 'inv bet'
                            if arg3 > 0:
                                revert with 0, 'inv bet'
                            if arg1:
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
                                    if arg4 + 10^15 >= arg4:
                                        return (arg4 + 10^15)
                                else:
                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                            else:
                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                            else:
                                if arg2:
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
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
                                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                else:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                else:
                                    if arg3:
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
                                            if arg4 + 10^15 >= arg4:
                                                return (arg4 + 10^15)
                                        else:
                                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    else:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                    else:
                                        if not arg4:
                                            if arg4 + 10^15 >= arg4:
                                                return (arg4 + 10^15)
                                        else:
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
                                                if arg4 + 10^15 >= arg4:
                                                    return (arg4 + 10^15)
                                            else:
                                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                        else:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                        else:
                            if 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15 / ext_call.return_data[0] + 5 * 10^14 / 10^15 == 10^15:
                                if arg3 < 10^13:
                                    revert with 0, 'inv bet'
                                if arg3 > 10^15 * ext_call.return_data[0] + 5 * 10^14 / 10^15:
                                    revert with 0, 'inv bet'
                                if arg1:
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
                                        if arg4 + 10^15 >= arg4:
                                            return (arg4 + 10^15)
                                    else:
                                        if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                            if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                else:
                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                else:
                                    if arg2:
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
                                            if arg4 + 10^15 >= arg4:
                                                return (arg4 + 10^15)
                                        else:
                                            if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                    else:
                                                        if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                            return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                    else:
                                        if arg3:
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
                                                if arg4 + 10^15 >= arg4:
                                                    return (arg4 + 10^15)
                                            else:
                                                if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                    if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                        else:
                                                            if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                                return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                        else:
                                            if not arg4:
                                                if arg4 + 10^15 >= arg4:
                                                    return (arg4 + 10^15)
                                            else:
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
                                                    if arg4 + 10^15 >= arg4:
                                                        return (arg4 + 10^15)
                                                else:
                                                    if 10^9 * ext_call.return_data[0] / ext_call.return_data[0] == 10^9:
                                                        if (10^9 * ext_call.return_data[0]) + 10^15 >= 10^9 * ext_call.return_data[0]:
                                                            if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                            else:
                                                                if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 >= arg4:
                                                                    return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
                                                                if (10^9 * ext_call.return_data[0]) + 10^15 < 0:
                                                                    if (10^9 * ext_call.return_data[0]) + arg4 + 10^15 < arg4:
                                                                        return ((10^9 * ext_call.return_data[0]) + arg4 + 10^15)
    revert
}



}
