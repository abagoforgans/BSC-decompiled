contract main {




// =====================  Runtime code  =====================


#
#  - invest(address arg1, uint8 arg2, uint256 arg3)
#
const sub_388655fb(?) = eth.balance(this.address)

const sub_4bc4e085(?) = 80

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const CEO_FEE = 100


address tokenAddress;
array of uint256 rEFERRAL_PERCENTS;
uint256 totalInvested;
uint256 totalBonus;
uint256 INVEST_MIN_AMOUNT;
array of struct planInfo;
mapping of struct userReferralBonus;
uint256 startDate;
address ceoWalletAddress;

function startDate() payable {
    return startDate
}

function getUserAvailable(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor7[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 7)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor7[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor7[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 / planInfo[stor7[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 7)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor7[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(arg1)].field_1280 < userReferralBonus[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)].field_1280
}

function getUserReferrer(address arg1) payable {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_512
}

function ceoWallet() payable {
    return ceoWalletAddress
}

function getUserReferralTotalBonus(address arg1) payable {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1536
}

function totalInvested() payable {
    return totalInvested
}

function REFERRAL_PERCENTS(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function getUserAmountOfDeposits(address arg1) payable {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_0
}

function totalBonus() payable {
    return totalBonus
}

function getPlanInfo(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < planInfo.length
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
}

function getUserCheckpoint(address arg1) payable {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_256
}

function INVEST_MIN_AMOUNT() payable {
    return INVEST_MIN_AMOUNT
}

function getUserReferralBonus(address arg1) payable {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1280
}

function getUserTotalWithdrawn(address arg1) payable {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1792
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_6e79a0b8(?) payable {
    require calldata.size - 4 >= 32
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    INVEST_MIN_AMOUNT = arg1
}

function getUserTotalReferrals(address arg1) payable {
    require calldata.size - 4 >= 32
    return (userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024)
}

function sub_1a6a2148(?) payable {
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_105ff198(?) payable {
    require calldata.size - 4 >= 32
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUserDownlineCount(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 160
    s = 3
    while 224 > idx + 32:
        mem[idx + 32] = userReferralBonus[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return userReferralBonus[address(arg1)].field_768, mem[192]
}

function sub_ccd620c7(?) payable {
    require calldata.size - 4 >= 32
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUserReferralWithdrawn(address arg1) payable {
    require calldata.size - 4 >= 32
    if userReferralBonus[address(arg1)].field_1280 > userReferralBonus[address(arg1)].field_1536:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userReferralBonus[address(arg1)].field_1536 - userReferralBonus[address(arg1)].field_1280)
}

function getContractBalance() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTokenDecimals(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_28749814(?) payable {
    require calldata.size - 4 >= 96
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_90bf53da(?) payable {
    require calldata.size - 4 >= 96
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3 * 10^ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getSiteInfo() payable {
    if not totalInvested:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return totalInvested, 0, totalBonus, ext_call.return_data[0]
    require totalInvested
    if 80 * totalInvested / totalInvested != 80:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return totalInvested, 80 * totalInvested / 1000, totalBonus, ext_call.return_data[0]
}

function getUserDepositInfo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    if not planInfo[stor7[address(arg1)][arg2].field_0].field_0:
        require arg2 < userReferralBonus[address(arg1)].field_0
        if userReferralBonus[address(arg1)][arg2].field_512 < userReferralBonus[address(arg1)][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return userReferralBonus[address(arg1)][arg2].field_0, 
               planInfo[stor7[address(arg1)][arg2].field_0].field_256,
               userReferralBonus[address(arg1)][arg2].field_256,
               userReferralBonus[address(arg1)][arg2].field_512,
               userReferralBonus[address(arg1)][arg2].field_512
    require planInfo[stor7[address(arg1)][arg2].field_0].field_0
    if 24 * 3600 * planInfo[stor7[address(arg1)][arg2].field_0].field_0 / planInfo[stor7[address(arg1)][arg2].field_0].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg2 < userReferralBonus[address(arg1)].field_0
    if userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][arg2].field_0].field_0) < userReferralBonus[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)][arg2].field_0, 
           planInfo[stor7[address(arg1)][arg2].field_0].field_256,
           userReferralBonus[address(arg1)][arg2].field_256,
           userReferralBonus[address(arg1)][arg2].field_512,
           userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][arg2].field_0].field_0)
}

function getUserTotalDeposits(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require idx < userReferralBonus[address(arg1)].field_0
        if s + userReferralBonus[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return (s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0)
}

function getUserInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require idx < userReferralBonus[address(arg1)].field_0
        if s + userReferralBonus[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 7
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    idx = 224
    t = 3
    while 288 > idx + 32:
        mem[idx + 32] = userReferralBonus[address(arg1)][t].field_256
        idx = idx + 32
        t = t + 1
        continue 
    return s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0, 
           userReferralBonus[address(arg1)].field_1792,
           userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024,
           userReferralBonus[address(arg1)].field_768,
           mem[256]
}

function getUserDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor7[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 7)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor7[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor7[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 / planInfo[stor7[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 7)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor7[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 7)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 7)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor7[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() payable {
    if userReferralBonus[address(msg.sender)].field_256 + (24 * 3600) < userReferralBonus[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if userReferralBonus[address(msg.sender)].field_256 + (24 * 3600) >= block.timestamp:
        revert with 0, 'only once a day'
    idx = 0
    while idx < userReferralBonus[address(msg.sender)].field_0:
        require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
        if not planInfo[stor7[address(msg.sender)][idx].field_0].field_0:
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 7)
            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 7)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 7)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(msg.sender)][idx].field_256
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor7[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 7)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 7)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor7[address(msg.sender)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 / planInfo[stor7[address(msg.sender)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 7)
            if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 7)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 7)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(msg.sender)][idx].field_256
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor7[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 7)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 7)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor7[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor7[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(msg.sender)].field_1280 <= 0:
        revert with 0, 'User has no dividends'
    userReferralBonus[address(msg.sender)].field_1280 = 0
    if userReferralBonus[address(msg.sender)].field_1280 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userReferralBonus[address(msg.sender)].field_1280 <= 0:
        revert with 0, 'User has no dividends'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= userReferralBonus[address(msg.sender)].field_1280:
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        if userReferralBonus[address(msg.sender)].field_1792 + userReferralBonus[address(msg.sender)].field_1280 < userReferralBonus[address(msg.sender)].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_1792 += userReferralBonus[address(msg.sender)].field_1280
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, userReferralBonus[address(msg.sender)].field_1312
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args userReferralBonus[address(msg.sender)].field_1280, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit Withdrawn(userReferralBonus[address(msg.sender)].field_1280, block.timestamp, msg.sender);
    else:
        if ext_call.return_data[0] > userReferralBonus[address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        userReferralBonus[address(msg.sender)].field_1280 -= ext_call.return_data[0]
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        if userReferralBonus[address(msg.sender)].field_1792 + ext_call.return_data[0] < userReferralBonus[address(msg.sender)].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_1792 += ext_call.return_data[0]
        if ext_code.size(tokenAddress) <= 0:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit Withdrawn(ext_call.return_data[0], block.timestamp, msg.sender);
}



}
