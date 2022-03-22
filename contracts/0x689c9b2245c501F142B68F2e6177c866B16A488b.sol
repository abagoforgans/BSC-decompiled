contract main {




// =====================  Runtime code  =====================


const PAYOUT_DIVIDER = 100

const MAX_BET_DIVIDER = 10000

const HOUSE_EDGE = 150

const RESULT_RANGE = 600

const HOUSE_EDGE_DIVISOR = 10000

const PROBABILITY_DIVISOR = 10000


mapping of uint16 mAX_BET;
mapping of uint16 stor1;

function PAYOUT(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 < uint256(stor1[arg1][arg2])
    return pAYOUT[uint8(arg3)]
}

function MAX_BET(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return mAX_BET[arg1][arg2]
}

function _fallback() payable {
    revert
}

function generateRandomNumber(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return sha3(arg1, arg2)
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

function resultNumber(bytes32 arg1, bytes32 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3 / 100 % 10 < 1:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg3 / 100 % 10 > 3:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg3 % 100 < 10:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg3 % 100 > 20:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg3 % 100 % 10:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    return (sha3(arg1, arg2) % 600)
}

function maxBet(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 / 100 % 10 < 1:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 / 100 % 10 > 3:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 < 10:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 > 20:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 % 10:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if not arg2:
        return 0
    require mAX_BET[arg1 / 100 % 10][arg1 % 100] * arg2 / arg2 == mAX_BET[arg1 / 100 % 10][arg1 % 100]
    return (mAX_BET[arg1 / 100 % 10][arg1 % 100] * arg2 / 10000)
}

function maxUserProfit(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 / 100 % 10 < 1:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 / 100 % 10 > 3:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 < 10:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 > 20:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 % 10:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    idx = 0
    s = 0
    while idx < uint256(stor1[arg1 / 100 % 10][arg1 % 100]):
        mem[0] = sha3(arg1 % 100, sha3(arg1 / 100 % 10, 1))
        if stor('array', ('div', 0.0625, ('var', 0)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(idx)] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < uint256(stor1[arg1 / 100 % 10][arg1 % 100])
        mem[0] = sha3(arg1 % 100, sha3(arg1 / 100 % 10, 1))
        idx = idx + 1
        s = stor('array', ('div', 0.0625, ('var', 0)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(idx)]
        continue 
    if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
        if not arg2:
            if arg2 < 0:
                if -arg2 > 0:
                    return -arg2
            else:
                if -arg2 <= 0:
                    return -arg2
                if arg2 < 0:
                    if -arg2 > 0:
                        return -arg2
        else:
            if s * arg2 / arg2 == s:
                if s * arg2 / 100 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if arg2 < 0:
                        if (s * arg2 / 100) - arg2 > s * arg2 / 100:
                            return ((s * arg2 / 100) - arg2)
                    else:
                        if (s * arg2 / 100) - arg2 <= s * arg2 / 100:
                            return ((s * arg2 / 100) - arg2)
                        if arg2 < 0:
                            if (s * arg2 / 100) - arg2 > s * arg2 / 100:
                                return ((s * arg2 / 100) - arg2)
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

function userProfit(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg1 / 100 % 10 < 1:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 / 100 % 10 > 3:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 < 10:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 > 20:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    if arg1 % 100 % 10:
        revert with 0, 32, 11, 0xfe496e76616c6964206e756d0000000000000000000000000000000000000000
    require arg3 >= 0
    require arg3 < 600
    if not arg3:
        if 0 < uint256(stor1[arg1 / 100 % 10][arg1 % 100]):
            if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                if not arg2:
                    if arg2 < 0:
                        if -arg2 > 0:
                            return -arg2
                    else:
                        if -arg2 <= 0:
                            return -arg2
                        if arg2 < 0:
                            if -arg2 > 0:
                                return -arg2
                else:
                    if uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / arg2 == uint16(stor1[arg1 / 100 % 10][arg1 % 100]):
                        if uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            if arg2 < 0:
                                if (uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100) - arg2 > uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100:
                                    return ((uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100) - arg2)
                            else:
                                if (uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100) - arg2 <= uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100:
                                    return ((uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100) - arg2)
                                if arg2 < 0:
                                    if (uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100) - arg2 > uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100:
                                        return ((uint16(stor1[arg1 / 100 % 10][arg1 % 100]) * arg2 / 100) - arg2)
    else:
        if uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / arg3 == uint256(stor1[arg1 / 100 % 10][arg1 % 100]):
            if uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600 < uint256(stor1[arg1 / 100 % 10][arg1 % 100]):
                if arg2 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if not arg2:
                        if arg2 < 0:
                            if -arg2 > 0:
                                return -arg2
                        else:
                            if -arg2 <= 0:
                                return -arg2
                            if arg2 < 0:
                                if -arg2 > 0:
                                    return -arg2
                    else:
                        if stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / arg2 == stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)]:
                            if stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                if arg2 < 0:
                                    if (stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100) - arg2 > stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100:
                                        return ((stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100) - arg2)
                                else:
                                    if (stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100) - arg2 <= stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100:
                                        return ((stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100) - arg2)
                                    if arg2 < 0:
                                        if (stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100) - arg2 > stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100:
                                            return ((stor('array', ('div', 0.0625, ('div', ('mul', ('stor', 256, 0, ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1)))), ('param', 'arg3')), 600)), ('map', ('mod', ('param', 'arg1'), 100), ('map', ('mod', ('div', ('param', 'arg1'), 100), 10), ('name', 'stor1', 1))))[uint8(uint256(stor1[arg1 / 100 % 10][arg1 % 100]) * arg3 / 600)] * arg2 / 100) - arg2)
    revert
}



}
