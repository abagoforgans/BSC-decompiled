contract main {




// =====================  Runtime code  =====================


const HOUSE_EDGE = 150

const HOUSE_EDGE_DIVISOR = 10000

const PROBABILITY_DIVISOR = 10000


function _fallback() payable {
    revert
}

function generateRandomNumber(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return sha3(arg1, arg2)
}

function resultNumber(bytes32 arg1, bytes32 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 < 0:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg3 >= 99:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    return (sha3(arg1, arg2) % 100)
}

function maxBetFromProbability(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require 0 < arg1
    require arg1 < 10000
    require arg1
    require arg1
    require 150 * arg2 / 150 == arg2
    require 1500000 / arg1 <= 100 * 10^6 / arg1
    require 10000 <= (100 * 10^6 / arg1) - (1500000 / arg1)
    require (100 * 10^6 / arg1) + -(1500000 / arg1) - 10000
    return (150 * arg2 / (100 * 10^6 / arg1) + -(1500000 / arg1) - 10000)
}

function maxBet(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 < 0:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 >= 99:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    require arg1 <= 100
    require 1 <= -arg1 + 100
    require -arg1 + 99
    require (-10000 * arg1) + (275 * 3600) / -arg1 + 99 == 10000
    require 0 < (-10000 * arg1) + (275 * 3600) / 100
    require (-10000 * arg1) + (275 * 3600) / 100 < 10000
    require (-10000 * arg1) + (275 * 3600) / 100
    require (-10000 * arg1) + (275 * 3600) / 100
    require 150 * arg2 / 150 == arg2
    require 1500000 / (-10000 * arg1) + (275 * 3600) / 100 <= 100 * 10^6 / (-10000 * arg1) + (275 * 3600) / 100
    require 10000 <= (100 * 10^6 / (-10000 * arg1) + (275 * 3600) / 100) - (1500000 / (-10000 * arg1) + (275 * 3600) / 100)
    require (100 * 10^6 / (-10000 * arg1) + (275 * 3600) / 100) + -(1500000 / (-10000 * arg1) + (275 * 3600) / 100) - 10000
    return (150 * arg2 / (100 * 10^6 / (-10000 * arg1) + (275 * 3600) / 100) + -(1500000 / (-10000 * arg1) + (275 * 3600) / 100) - 10000)
}

function calcProfitFromTotalWon(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                if arg1 <= arg1:
                    if arg2 < 0:
                        if arg1 - arg2 > arg1:
                            return (arg1 - arg2)
                    else:
                        if arg1 - arg2 <= arg1:
                            return (arg1 - arg2)
                        if arg2 < 0:
                            if arg1 - arg2 > arg1:
                                return (arg1 - arg2)
    else:
        if 150 * arg1 / arg1 == 150:
            if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                if 150 * arg1 / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if arg1 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if 150 * arg1 / 10000 < 0:
                            if arg1 - (150 * arg1 / 10000) > arg1:
                                if arg2 < 0:
                                    if arg1 - (150 * arg1 / 10000) - arg2 > arg1 - (150 * arg1 / 10000):
                                        return (arg1 - (150 * arg1 / 10000) - arg2)
                                else:
                                    if arg1 - (150 * arg1 / 10000) - arg2 <= arg1 - (150 * arg1 / 10000):
                                        return (arg1 - (150 * arg1 / 10000) - arg2)
                                    if arg2 < 0:
                                        if arg1 - (150 * arg1 / 10000) - arg2 > arg1 - (150 * arg1 / 10000):
                                            return (arg1 - (150 * arg1 / 10000) - arg2)
                        else:
                            if arg1 - (150 * arg1 / 10000) <= arg1:
                                if arg2 < 0:
                                    if arg1 - (150 * arg1 / 10000) - arg2 > arg1 - (150 * arg1 / 10000):
                                        return (arg1 - (150 * arg1 / 10000) - arg2)
                                else:
                                    if arg1 - (150 * arg1 / 10000) - arg2 <= arg1 - (150 * arg1 / 10000):
                                        return (arg1 - (150 * arg1 / 10000) - arg2)
                                    if arg2 < 0:
                                        if arg1 - (150 * arg1 / 10000) - arg2 > arg1 - (150 * arg1 / 10000):
                                            return (arg1 - (150 * arg1 / 10000) - arg2)
                            else:
                                if 150 * arg1 / 10000 < 0:
                                    if arg1 - (150 * arg1 / 10000) > arg1:
                                        if arg2 < 0:
                                            if arg1 - (150 * arg1 / 10000) - arg2 > arg1 - (150 * arg1 / 10000):
                                                return (arg1 - (150 * arg1 / 10000) - arg2)
                                        else:
                                            if arg1 - (150 * arg1 / 10000) - arg2 <= arg1 - (150 * arg1 / 10000):
                                                return (arg1 - (150 * arg1 / 10000) - arg2)
                                            if arg2 < 0:
                                                if arg1 - (150 * arg1 / 10000) - arg2 > arg1 - (150 * arg1 / 10000):
                                                    return (arg1 - (150 * arg1 / 10000) - arg2)
    revert
}

function maxUserProfit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 < 0:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 >= 99:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    require arg1 <= 100
    require 1 <= -arg1 + 100
    if not arg2:
        if -arg1 + 99:
            if not 0 / -arg1 + 99:
                if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if 0 / -arg1 + 99 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if 0 / -arg1 + 99 <= 0 / -arg1 + 99:
                            if arg2 < 0:
                                if (0 / -arg1 + 99) - arg2 > 0 / -arg1 + 99:
                                    return ((0 / -arg1 + 99) - arg2)
                            else:
                                if (0 / -arg1 + 99) - arg2 <= 0 / -arg1 + 99:
                                    return ((0 / -arg1 + 99) - arg2)
                                if arg2 < 0:
                                    if (0 / -arg1 + 99) - arg2 > 0 / -arg1 + 99:
                                        return ((0 / -arg1 + 99) - arg2)
            else:
                if 150 * 0 / -arg1 + 99 / 0 / -arg1 + 99 == 150:
                    if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if 150 * 0 / -arg1 + 99 / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 0 / -arg1 + 99 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if 150 * 0 / -arg1 + 99 / 10000 < 0:
                                    if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) > 0 / -arg1 + 99:
                                        if arg2 < 0:
                                            if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                        else:
                                            if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 <= (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                            if arg2 < 0:
                                                if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                    return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                else:
                                    if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) <= 0 / -arg1 + 99:
                                        if arg2 < 0:
                                            if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                        else:
                                            if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 <= (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                            if arg2 < 0:
                                                if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                    return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                    else:
                                        if 150 * 0 / -arg1 + 99 / 10000 < 0:
                                            if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) > 0 / -arg1 + 99:
                                                if arg2 < 0:
                                                    if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                        return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                else:
                                                    if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 <= (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                        return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                    if arg2 < 0:
                                                        if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                            return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
    else:
        if 100 * arg2 / arg2 == 100:
            if -arg1 + 99:
                if not 100 * arg2 / -arg1 + 99:
                    if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if 100 * arg2 / -arg1 + 99 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 100 * arg2 / -arg1 + 99 <= 100 * arg2 / -arg1 + 99:
                                if arg2 < 0:
                                    if (100 * arg2 / -arg1 + 99) - arg2 > 100 * arg2 / -arg1 + 99:
                                        return ((100 * arg2 / -arg1 + 99) - arg2)
                                else:
                                    if (100 * arg2 / -arg1 + 99) - arg2 <= 100 * arg2 / -arg1 + 99:
                                        return ((100 * arg2 / -arg1 + 99) - arg2)
                                    if arg2 < 0:
                                        if (100 * arg2 / -arg1 + 99) - arg2 > 100 * arg2 / -arg1 + 99:
                                            return ((100 * arg2 / -arg1 + 99) - arg2)
                else:
                    if 150 * 100 * arg2 / -arg1 + 99 / 100 * arg2 / -arg1 + 99 == 150:
                        if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 150 * 100 * arg2 / -arg1 + 99 / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if 100 * arg2 / -arg1 + 99 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    if 150 * 100 * arg2 / -arg1 + 99 / 10000 < 0:
                                        if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) > 100 * arg2 / -arg1 + 99:
                                            if arg2 < 0:
                                                if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                    return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                            else:
                                                if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 <= (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                    return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                if arg2 < 0:
                                                    if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                        return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                    else:
                                        if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) <= 100 * arg2 / -arg1 + 99:
                                            if arg2 < 0:
                                                if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                    return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                            else:
                                                if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 <= (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                    return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                if arg2 < 0:
                                                    if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                        return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                        else:
                                            if 150 * 100 * arg2 / -arg1 + 99 / 10000 < 0:
                                                if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) > 100 * arg2 / -arg1 + 99:
                                                    if arg2 < 0:
                                                        if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                            return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                    else:
                                                        if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 <= (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                            return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                        if arg2 < 0:
                                                            if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
    revert
}

function userProfit(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 < 0:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 >= 99:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    require arg3 >= 0
    require arg3 < 100
    if arg3 <= arg1:
        if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
            return -arg2
    else:
        if arg1 <= 100:
            if 1 <= -arg1 + 100:
                if not arg2:
                    if -arg1 + 99:
                        if not 0 / -arg1 + 99:
                            if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if 0 / -arg1 + 99 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    if 0 / -arg1 + 99 <= 0 / -arg1 + 99:
                                        if arg2 < 0:
                                            if (0 / -arg1 + 99) - arg2 > 0 / -arg1 + 99:
                                                return ((0 / -arg1 + 99) - arg2)
                                        else:
                                            if (0 / -arg1 + 99) - arg2 <= 0 / -arg1 + 99:
                                                return ((0 / -arg1 + 99) - arg2)
                                            if arg2 < 0:
                                                if (0 / -arg1 + 99) - arg2 > 0 / -arg1 + 99:
                                                    return ((0 / -arg1 + 99) - arg2)
                        else:
                            if 150 * 0 / -arg1 + 99 / 0 / -arg1 + 99 == 150:
                                if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    if 150 * 0 / -arg1 + 99 / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        if 0 / -arg1 + 99 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            if 150 * 0 / -arg1 + 99 / 10000 < 0:
                                                if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) > 0 / -arg1 + 99:
                                                    if arg2 < 0:
                                                        if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                            return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                    else:
                                                        if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 <= (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                            return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                        if arg2 < 0:
                                                            if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                                return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                            else:
                                                if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) <= 0 / -arg1 + 99:
                                                    if arg2 < 0:
                                                        if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                            return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                    else:
                                                        if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 <= (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                            return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                        if arg2 < 0:
                                                            if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                                return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                else:
                                                    if 150 * 0 / -arg1 + 99 / 10000 < 0:
                                                        if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) > 0 / -arg1 + 99:
                                                            if arg2 < 0:
                                                                if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                                    return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                            else:
                                                                if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 <= (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                                    return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                                                                if arg2 < 0:
                                                                    if (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2 > (0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000):
                                                                        return ((0 / -arg1 + 99) - (150 * 0 / -arg1 + 99 / 10000) - arg2)
                else:
                    if 100 * arg2 / arg2 == 100:
                        if -arg1 + 99:
                            if not 100 * arg2 / -arg1 + 99:
                                if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    if 100 * arg2 / -arg1 + 99 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        if 100 * arg2 / -arg1 + 99 <= 100 * arg2 / -arg1 + 99:
                                            if arg2 < 0:
                                                if (100 * arg2 / -arg1 + 99) - arg2 > 100 * arg2 / -arg1 + 99:
                                                    return ((100 * arg2 / -arg1 + 99) - arg2)
                                            else:
                                                if (100 * arg2 / -arg1 + 99) - arg2 <= 100 * arg2 / -arg1 + 99:
                                                    return ((100 * arg2 / -arg1 + 99) - arg2)
                                                if arg2 < 0:
                                                    if (100 * arg2 / -arg1 + 99) - arg2 > 100 * arg2 / -arg1 + 99:
                                                        return ((100 * arg2 / -arg1 + 99) - arg2)
                            else:
                                if 150 * 100 * arg2 / -arg1 + 99 / 100 * arg2 / -arg1 + 99 == 150:
                                    if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        if 150 * 100 * arg2 / -arg1 + 99 / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            if 100 * arg2 / -arg1 + 99 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                if 150 * 100 * arg2 / -arg1 + 99 / 10000 < 0:
                                                    if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) > 100 * arg2 / -arg1 + 99:
                                                        if arg2 < 0:
                                                            if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                        else:
                                                            if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 <= (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                            if arg2 < 0:
                                                                if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                    return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                else:
                                                    if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) <= 100 * arg2 / -arg1 + 99:
                                                        if arg2 < 0:
                                                            if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                        else:
                                                            if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 <= (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                            if arg2 < 0:
                                                                if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                    return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                    else:
                                                        if 150 * 100 * arg2 / -arg1 + 99 / 10000 < 0:
                                                            if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) > 100 * arg2 / -arg1 + 99:
                                                                if arg2 < 0:
                                                                    if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                        return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                                else:
                                                                    if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 <= (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                        return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
                                                                    if arg2 < 0:
                                                                        if (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2 > (100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000):
                                                                            return ((100 * arg2 / -arg1 + 99) - (150 * 100 * arg2 / -arg1 + 99 / 10000) - arg2)
    revert
}



}
