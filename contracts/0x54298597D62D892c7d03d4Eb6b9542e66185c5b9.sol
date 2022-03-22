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
    if arg3 <= 0:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg3 >= 4095:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    return (sha3(arg1, arg2) % 12)
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
    if arg1 <= 0:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 >= 4095:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    idx = 0
    s = 0
    while idx < 12:
        if arg1 and 2^idx <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s:
        if 10000 * s / s == 10000:
            if 0 < 10000 * s / 12:
                if 10000 * s / 12 < 10000:
                    if 10000 * s / 12:
                        if 10000 * s / 12:
                            if 150 * arg2 / 150 == arg2:
                                if 1500000 / 10000 * s / 12 <= 100 * 10^6 / 10000 * s / 12:
                                    if 10000 <= (100 * 10^6 / 10000 * s / 12) - (1500000 / 10000 * s / 12):
                                        if (100 * 10^6 / 10000 * s / 12) + -(1500000 / 10000 * s / 12) - 10000:
                                            return (150 * arg2 / (100 * 10^6 / 10000 * s / 12) + -(1500000 / 10000 * s / 12) - 10000)
    revert
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
    if arg1 <= 0:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 >= 4095:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    idx = 0
    s = 0
    while idx < 12:
        if arg1 and 2^idx <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if not arg2:
        if s:
            if not 0 / s:
                if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if 0 / s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if 0 / s <= 0 / s:
                            if arg2 < 0:
                                if (0 / s) - arg2 > 0 / s:
                                    return ((0 / s) - arg2)
                            else:
                                if (0 / s) - arg2 <= 0 / s:
                                    return ((0 / s) - arg2)
                                if arg2 < 0:
                                    if (0 / s) - arg2 > 0 / s:
                                        return ((0 / s) - arg2)
            else:
                if 150 * 0 / s / 0 / s == 150:
                    if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if 150 * 0 / s / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 0 / s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if 150 * 0 / s / 10000 < 0:
                                    if (0 / s) - (150 * 0 / s / 10000) > 0 / s:
                                        if arg2 < 0:
                                            if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                        else:
                                            if (0 / s) - (150 * 0 / s / 10000) - arg2 <= (0 / s) - (150 * 0 / s / 10000):
                                                return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                            if arg2 < 0:
                                                if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                    return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                else:
                                    if (0 / s) - (150 * 0 / s / 10000) <= 0 / s:
                                        if arg2 < 0:
                                            if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                        else:
                                            if (0 / s) - (150 * 0 / s / 10000) - arg2 <= (0 / s) - (150 * 0 / s / 10000):
                                                return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                            if arg2 < 0:
                                                if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                    return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                    else:
                                        if 150 * 0 / s / 10000 < 0:
                                            if (0 / s) - (150 * 0 / s / 10000) > 0 / s:
                                                if arg2 < 0:
                                                    if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                        return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                                else:
                                                    if (0 / s) - (150 * 0 / s / 10000) - arg2 <= (0 / s) - (150 * 0 / s / 10000):
                                                        return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                                    if arg2 < 0:
                                                        if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                            return ((0 / s) - (150 * 0 / s / 10000) - arg2)
    else:
        if 12 * arg2 / arg2 == 12:
            if s:
                if not 12 * arg2 / s:
                    if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if 12 * arg2 / s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 12 * arg2 / s <= 12 * arg2 / s:
                                if arg2 < 0:
                                    if (12 * arg2 / s) - arg2 > 12 * arg2 / s:
                                        return ((12 * arg2 / s) - arg2)
                                else:
                                    if (12 * arg2 / s) - arg2 <= 12 * arg2 / s:
                                        return ((12 * arg2 / s) - arg2)
                                    if arg2 < 0:
                                        if (12 * arg2 / s) - arg2 > 12 * arg2 / s:
                                            return ((12 * arg2 / s) - arg2)
                else:
                    if 150 * 12 * arg2 / s / 12 * arg2 / s == 150:
                        if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 150 * 12 * arg2 / s / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if 12 * arg2 / s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    if 150 * 12 * arg2 / s / 10000 < 0:
                                        if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) > 12 * arg2 / s:
                                            if arg2 < 0:
                                                if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                    return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                            else:
                                                if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 <= (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                    return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                if arg2 < 0:
                                                    if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                        return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                    else:
                                        if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) <= 12 * arg2 / s:
                                            if arg2 < 0:
                                                if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                    return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                            else:
                                                if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 <= (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                    return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                if arg2 < 0:
                                                    if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                        return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                        else:
                                            if 150 * 12 * arg2 / s / 10000 < 0:
                                                if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) > 12 * arg2 / s:
                                                    if arg2 < 0:
                                                        if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                            return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                    else:
                                                        if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 <= (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                            return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                        if arg2 < 0:
                                                            if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                                return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
    revert
}

function userProfit(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 >= 4095:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    require arg3 >= 0
    require arg3 < 12
    if arg1 and 2^arg3 <= 0:
        if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
            return -arg2
    else:
        idx = 0
        s = 0
        while idx < 12:
            if arg1 and 2^idx <= 0:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if not arg2:
            if s:
                if not 0 / s:
                    if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        if 0 / s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 0 / s <= 0 / s:
                                if arg2 < 0:
                                    if (0 / s) - arg2 > 0 / s:
                                        return ((0 / s) - arg2)
                                else:
                                    if (0 / s) - arg2 <= 0 / s:
                                        return ((0 / s) - arg2)
                                    if arg2 < 0:
                                        if (0 / s) - arg2 > 0 / s:
                                            return ((0 / s) - arg2)
                else:
                    if 150 * 0 / s / 0 / s == 150:
                        if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 150 * 0 / s / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if 0 / s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    if 150 * 0 / s / 10000 < 0:
                                        if (0 / s) - (150 * 0 / s / 10000) > 0 / s:
                                            if arg2 < 0:
                                                if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                    return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                            else:
                                                if (0 / s) - (150 * 0 / s / 10000) - arg2 <= (0 / s) - (150 * 0 / s / 10000):
                                                    return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                                if arg2 < 0:
                                                    if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                        return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                    else:
                                        if (0 / s) - (150 * 0 / s / 10000) <= 0 / s:
                                            if arg2 < 0:
                                                if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                    return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                            else:
                                                if (0 / s) - (150 * 0 / s / 10000) - arg2 <= (0 / s) - (150 * 0 / s / 10000):
                                                    return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                                if arg2 < 0:
                                                    if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                        return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                        else:
                                            if 150 * 0 / s / 10000 < 0:
                                                if (0 / s) - (150 * 0 / s / 10000) > 0 / s:
                                                    if arg2 < 0:
                                                        if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                            return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                                    else:
                                                        if (0 / s) - (150 * 0 / s / 10000) - arg2 <= (0 / s) - (150 * 0 / s / 10000):
                                                            return ((0 / s) - (150 * 0 / s / 10000) - arg2)
                                                        if arg2 < 0:
                                                            if (0 / s) - (150 * 0 / s / 10000) - arg2 > (0 / s) - (150 * 0 / s / 10000):
                                                                return ((0 / s) - (150 * 0 / s / 10000) - arg2)
        else:
            if 12 * arg2 / arg2 == 12:
                if s:
                    if not 12 * arg2 / s:
                        if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if 12 * arg2 / s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if 12 * arg2 / s <= 12 * arg2 / s:
                                    if arg2 < 0:
                                        if (12 * arg2 / s) - arg2 > 12 * arg2 / s:
                                            return ((12 * arg2 / s) - arg2)
                                    else:
                                        if (12 * arg2 / s) - arg2 <= 12 * arg2 / s:
                                            return ((12 * arg2 / s) - arg2)
                                        if arg2 < 0:
                                            if (12 * arg2 / s) - arg2 > 12 * arg2 / s:
                                                return ((12 * arg2 / s) - arg2)
                    else:
                        if 150 * 12 * arg2 / s / 12 * arg2 / s == 150:
                            if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if 150 * 12 * arg2 / s / 10000 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    if 12 * arg2 / s < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                        if 150 * 12 * arg2 / s / 10000 < 0:
                                            if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) > 12 * arg2 / s:
                                                if arg2 < 0:
                                                    if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                        return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                else:
                                                    if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 <= (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                        return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                    if arg2 < 0:
                                                        if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                            return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                        else:
                                            if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) <= 12 * arg2 / s:
                                                if arg2 < 0:
                                                    if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                        return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                else:
                                                    if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 <= (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                        return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                    if arg2 < 0:
                                                        if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                            return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                            else:
                                                if 150 * 12 * arg2 / s / 10000 < 0:
                                                    if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) > 12 * arg2 / s:
                                                        if arg2 < 0:
                                                            if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                                return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                        else:
                                                            if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 <= (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                                return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
                                                            if arg2 < 0:
                                                                if (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2 > (12 * arg2 / s) - (150 * 12 * arg2 / s / 10000):
                                                                    return ((12 * arg2 / s) - (150 * 12 * arg2 / s / 10000) - arg2)
    revert
}



}
