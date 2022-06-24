contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)

const sub_f05ba39b(?) = 10000

const PERCENTS_DIVIDER = 10000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 1000

const PERCENT_STEP = 10

const INVEST_MIN_AMOUNT = 10^17


array of uint256 rEFERRAL_PERCENTS;
array of uint256 sub_c9923f68;
uint256 totalInvested;
uint256 totalRefBonus;
address stor4;
mapping of struct sub_43360a8e;
mapping of uint256 sub_e5deb304;
mapping of address stor105;
array of struct planInfo;
mapping of struct userReferralBonus;
uint8 started;
address commissionWalletAddress; offset 8

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor206[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 206)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 206)
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
                        mem[0] = sha3(address(arg1), 206)
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
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor206[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 206)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 206)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor206[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 / planInfo[stor206[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 206)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 206)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 206)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor206[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 206)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 206)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != 24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(arg1)].field_3328 < userReferralBonus[address(arg1)].field_3328:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)].field_3328
}

function started() {
    return bool(started)
}

function getDownlineRef(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return sub_43360a8e[address(arg1)][arg2].field_0, sub_43360a8e[address(arg1)][arg2].field_256
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_512
}

function sub_43360a8e(?) {
    require calldata.size - 4 >= 64
    return sub_43360a8e[arg1][arg2].field_0, sub_43360a8e[arg1][arg2].field_256
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_3584
}

function sub_4fae0d76(?) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_4352
}

function totalInvested() {
    return totalInvested
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require idx < userReferralBonus[address(arg1)].field_0
        if s + userReferralBonus[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 206
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0, 
           userReferralBonus[address(arg1)].field_4096,
           userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024 + userReferralBonus[address(arg1)].field_1280 + userReferralBonus[address(arg1)].field_1536 + userReferralBonus[address(arg1)].field_1792 + userReferralBonus[address(arg1)].field_2048 + userReferralBonus[address(arg1)].field_2304 + userReferralBonus[address(arg1)].field_2560 + userReferralBonus[address(arg1)].field_2816 + userReferralBonus[address(arg1)].field_3072
}

function totalRefBonus() {
    return totalRefBonus
}

function commissionWallet() {
    return commissionWalletAddress
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_0
}

function getPlanInfo(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < planInfo.length
    return planInfo[2 * uint8(arg1)].field_0, planInfo[2 * uint8(arg1)].field_256
}

function sub_c9923f68(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_c9923f68.length
    return sub_c9923f68[arg1]
}

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_256
}

function sub_e5deb304(?) {
    require calldata.size - 4 >= 32
    return sub_e5deb304[arg1]
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_3328
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_4096
}

function _fallback() payable {
    revert
}

function getSiteInfo() {
    return totalInvested, totalRefBonus
}

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    idx = 416
    s = 3
    while 736 > idx + 32:
        mem[idx + 32] = userReferralBonus[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return userReferralBonus[address(arg1)].field_768, mem[448 len 288]
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if userReferralBonus[address(arg1)].field_3328 > userReferralBonus[address(arg1)].field_3584:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userReferralBonus[address(arg1)].field_3584 - userReferralBonus[address(arg1)].field_3328)
}

function sub_198b2eae(?) {
    require calldata.size - 4 >= 32
    if msg.sender == commissionWalletAddress:
        if arg1 > eth.balance(this.address):
            revert with 0, 'SafeMath: subtraction overflow'
        totalInvested = eth.balance(this.address) - arg1
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getUserTotalReferrals(address arg1) {
    require calldata.size - 4 >= 32
    return (userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024 + userReferralBonus[address(arg1)].field_1280 + userReferralBonus[address(arg1)].field_1536 + userReferralBonus[address(arg1)].field_1792 + userReferralBonus[address(arg1)].field_2048 + userReferralBonus[address(arg1)].field_2304 + userReferralBonus[address(arg1)].field_2560 + userReferralBonus[address(arg1)].field_2816 + userReferralBonus[address(arg1)].field_3072)
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    if not planInfo[stor206[address(arg1)][arg2].field_0].field_0:
        require arg2 < userReferralBonus[address(arg1)].field_0
        if userReferralBonus[address(arg1)][arg2].field_512 < userReferralBonus[address(arg1)][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return userReferralBonus[address(arg1)][arg2].field_0, 
               planInfo[stor206[address(arg1)][arg2].field_0].field_256,
               userReferralBonus[address(arg1)][arg2].field_256,
               userReferralBonus[address(arg1)][arg2].field_512,
               userReferralBonus[address(arg1)][arg2].field_512
    require planInfo[stor206[address(arg1)][arg2].field_0].field_0
    if 24 * 3600 * planInfo[stor206[address(arg1)][arg2].field_0].field_0 / planInfo[stor206[address(arg1)][arg2].field_0].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg2 < userReferralBonus[address(arg1)].field_0
    if userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][arg2].field_0].field_0) < userReferralBonus[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)][arg2].field_0, 
           planInfo[stor206[address(arg1)][arg2].field_0].field_256,
           userReferralBonus[address(arg1)][arg2].field_256,
           userReferralBonus[address(arg1)][arg2].field_512,
           userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][arg2].field_0].field_0)
}

function getUserTotalDeposits(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require idx < userReferralBonus[address(arg1)].field_0
        if s + userReferralBonus[address(arg1)][idx].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = arg1
        mem[32] = 206
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return (s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0)
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if not started:
        if commissionWalletAddress != msg.sender:
            revert with 0, 'Not started yet'
        started = 1
    require msg.value >= 10^17
    if arg2 >= 3:
        revert with 0, 'Invalid plan'
    if not msg.value:
        call commissionWalletAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FeePayed(0, msg.sender);
    else:
        require msg.value
        if 1000 * msg.value / msg.value != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call commissionWalletAddress with:
           value 1000 * msg.value / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FeePayed((1000 * msg.value / 10000), msg.sender);
    if not userReferralBonus[address(msg.sender)].field_512:
        if userReferralBonus[address(arg1)].field_0 > 0:
            if arg1 != msg.sender:
                userReferralBonus[address(msg.sender)].field_512 = arg1
        idx = 0
        s = userReferralBonus[address(msg.sender)].field_512
        while idx < 10:
            if address(s):
                require idx < 10
                if userReferralBonus[address(s)][idx].field_768 + 1 < userReferralBonus[address(s)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 10
                userReferralBonus[address(s)][idx].field_768++
                mem[0] = address(s)
                mem[32] = 206
                idx = idx + 1
                s = userReferralBonus[address(s)].field_512
                continue 
            if stor105[address(msg.sender)]:
                stor105[address(msg.sender)] = stor105[address(msg.sender)]
                stor4 = stor105[stor105[address(msg.sender)]]
            else:
                stor105[address(msg.sender)] = arg1
                sub_e5deb304[address(arg1)]++
                sub_43360a8e[address(arg1)][stor104[address(arg1)]].field_0 = msg.sender
                sub_43360a8e[address(arg1)][stor104[address(arg1)]].field_256 = 1
                stor4 = stor105[address(arg1)]
            if userReferralBonus[address(msg.sender)].field_512:
                idx = 0
                s = userReferralBonus[address(msg.sender)].field_512
                while idx < 10:
                    if not address(s):
                        if not userReferralBonus[address(msg.sender)].field_0:
                            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                            emit Newbie(msg.sender);
                        userReferralBonus[address(msg.sender)].field_0++
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                        userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                        if totalInvested + msg.value < totalInvested:
                            revert with 0, 'SafeMath: addition overflow'
                        totalInvested += msg.value
                        emit NewDeposit(arg2 << 248, msg.value, msg.sender);
                    require idx < rEFERRAL_PERCENTS.length
                    if not msg.value:
                        if userReferralBonus[address(s)].field_3328 < userReferralBonus[address(s)].field_3328:
                            revert with 0, 'SafeMath: addition overflow'
                        if userReferralBonus[address(s)].field_3584 < userReferralBonus[address(s)].field_3584:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[96] = 0
                        emit RefBonus(0, address(s), msg.sender, idx);
                    else:
                        require msg.value
                        if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userReferralBonus[address(s)].field_3328 + (msg.value * rEFERRAL_PERCENTS[idx] / 10000) < userReferralBonus[address(s)].field_3328:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_3328 += msg.value * rEFERRAL_PERCENTS[idx] / 10000
                        if userReferralBonus[address(s)].field_3584 + (msg.value * rEFERRAL_PERCENTS[idx] / 10000) < userReferralBonus[address(s)].field_3584:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_3584 += msg.value * rEFERRAL_PERCENTS[idx] / 10000
                        mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 10000
                        emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 10000), address(s), msg.sender, idx);
                    mem[0] = address(s)
                    mem[32] = 206
                    idx = idx + 1
                    s = userReferralBonus[address(s)].field_512
                    continue 
            if not userReferralBonus[address(msg.sender)].field_0:
                userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                emit Newbie(msg.sender);
            userReferralBonus[address(msg.sender)].field_0++
            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
            userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
            if totalInvested + msg.value < totalInvested:
                revert with 0, 'SafeMath: addition overflow'
            totalInvested += msg.value
            emit NewDeposit(arg2 << 248, msg.value, msg.sender);
    if stor105[address(msg.sender)]:
        stor105[address(msg.sender)] = stor105[address(msg.sender)]
        stor4 = stor105[stor105[address(msg.sender)]]
    else:
        stor105[address(msg.sender)] = arg1
        sub_e5deb304[address(arg1)]++
        sub_43360a8e[address(arg1)][stor104[address(arg1)]].field_0 = msg.sender
        sub_43360a8e[address(arg1)][stor104[address(arg1)]].field_256 = 1
        stor4 = stor105[address(arg1)]
    if userReferralBonus[address(msg.sender)].field_512:
        idx = 0
        s = userReferralBonus[address(msg.sender)].field_512
        while idx < 10:
            if not address(s):
                if not userReferralBonus[address(msg.sender)].field_0:
                    userReferralBonus[address(msg.sender)].field_256 = block.timestamp
                    emit Newbie(msg.sender);
                userReferralBonus[address(msg.sender)].field_0++
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
                userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
                if totalInvested + msg.value < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
                totalInvested += msg.value
                emit NewDeposit(arg2 << 248, msg.value, msg.sender);
            require idx < rEFERRAL_PERCENTS.length
            if not msg.value:
                if userReferralBonus[address(s)].field_3328 < userReferralBonus[address(s)].field_3328:
                    revert with 0, 'SafeMath: addition overflow'
                if userReferralBonus[address(s)].field_3584 < userReferralBonus[address(s)].field_3584:
                    revert with 0, 'SafeMath: addition overflow'
                mem[96] = 0
                emit RefBonus(0, address(s), msg.sender, idx);
            else:
                require msg.value
                if msg.value * rEFERRAL_PERCENTS[idx] / msg.value != rEFERRAL_PERCENTS[idx]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userReferralBonus[address(s)].field_3328 + (msg.value * rEFERRAL_PERCENTS[idx] / 10000) < userReferralBonus[address(s)].field_3328:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(s)].field_3328 += msg.value * rEFERRAL_PERCENTS[idx] / 10000
                if userReferralBonus[address(s)].field_3584 + (msg.value * rEFERRAL_PERCENTS[idx] / 10000) < userReferralBonus[address(s)].field_3584:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(s)].field_3584 += msg.value * rEFERRAL_PERCENTS[idx] / 10000
                mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 10000
                emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 10000), address(s), msg.sender, idx);
            mem[0] = address(s)
            mem[32] = 206
            idx = idx + 1
            s = userReferralBonus[address(s)].field_512
            continue 
    if not userReferralBonus[address(msg.sender)].field_0:
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        emit Newbie(msg.sender);
    userReferralBonus[address(msg.sender)].field_0++
    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_0 = arg2
    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_256 = msg.value
    userReferralBonus[address(msg.sender)][userReferralBonus[address(msg.sender)].field_0].field_512 = block.timestamp
    if totalInvested + msg.value < totalInvested:
        revert with 0, 'SafeMath: addition overflow'
    totalInvested += msg.value
    emit NewDeposit(arg2 << 248, msg.value, msg.sender);
}

function getUserSeedIncome(address arg1) {
    require calldata.size - 4 >= 32
    idx = 1
    while idx <= userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024 + userReferralBonus[address(arg1)].field_1280 + userReferralBonus[address(arg1)].field_1536 + userReferralBonus[address(arg1)].field_1792 + userReferralBonus[address(arg1)].field_2048 + userReferralBonus[address(arg1)].field_2304 + userReferralBonus[address(arg1)].field_2560 + userReferralBonus[address(arg1)].field_2816 + userReferralBonus[address(arg1)].field_3072:
        mem[0] = sub_43360a8e[address(arg1)][idx].field_0
        mem[32] = 206
        s = 0
        while s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0:
            require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_0 < planInfo.length
            if not planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0:
                require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                mem[0] = sha3(sub_43360a8e[address(arg1)][idx].field_0, 206)
                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                    require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                    require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_0 < planInfo.length
                    require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                    if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256:
                        require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                        require sub_43360a8e[address(arg1)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                            if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 != planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                        require sub_43360a8e[address(arg1)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                            if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(arg1)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000
                                        if (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(arg1)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000
                                        if (block.timestamp * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000 != block.timestamp - userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (block.timestamp * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            else:
                require planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0
                if 24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0 / planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0 != 24 * 3600:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0) < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                mem[0] = sha3(sub_43360a8e[address(arg1)][idx].field_0, 206)
                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                    require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                    require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_0 < planInfo.length
                    require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                    if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256:
                        require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                        require sub_43360a8e[address(arg1)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0) < block.timestamp:
                            if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 != planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                        require sub_43360a8e[address(arg1)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0) < block.timestamp:
                            if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(arg1)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000
                                        if (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000 != 24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(arg1)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000
                                        if (block.timestamp * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000 != block.timestamp - userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (block.timestamp * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    return 0
}

function sub_f54b6a21(?) {
    require calldata.size - 4 >= 32
    idx = 1
    while idx <= userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024 + userReferralBonus[address(arg1)].field_1280 + userReferralBonus[address(arg1)].field_1536 + userReferralBonus[address(arg1)].field_1792 + userReferralBonus[address(arg1)].field_2048 + userReferralBonus[address(arg1)].field_2304 + userReferralBonus[address(arg1)].field_2560 + userReferralBonus[address(arg1)].field_2816 + userReferralBonus[address(arg1)].field_3072:
        mem[0] = sub_43360a8e[address(arg1)][idx].field_0
        mem[32] = 206
        s = 0
        while s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0:
            require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_0 < planInfo.length
            if not planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0:
                require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                mem[0] = sha3(sub_43360a8e[address(arg1)][idx].field_0, 206)
                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                    require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                    require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_0 < planInfo.length
                    require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                    if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256:
                        require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                        require sub_43360a8e[address(arg1)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                            if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 != planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                        require sub_43360a8e[address(arg1)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                            if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(arg1)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000
                                        if (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(arg1)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000
                                        if (block.timestamp * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000 != block.timestamp - userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (block.timestamp * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            else:
                require planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0
                if 24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0 / planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0 != 24 * 3600:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0) < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                mem[0] = sha3(sub_43360a8e[address(arg1)][idx].field_0, 206)
                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                    require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                    require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_0 < planInfo.length
                    require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                    if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256:
                        require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                        require sub_43360a8e[address(arg1)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0) < block.timestamp:
                            if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 != planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        require s < userReferralBonus[stor103[address(arg1)][idx].field_0].field_0
                        require sub_43360a8e[address(arg1)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0) < block.timestamp:
                            if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(arg1)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000
                                        if (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000 != 24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) + (24 * 3600 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_0 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(arg1)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000
                                        if (block.timestamp * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000 != block.timestamp - userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (block.timestamp * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(arg1)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(arg1)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(arg1)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    if userReferralBonus[address(arg1)].field_4352 > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    return -userReferralBonus[address(arg1)].field_4352
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor206[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 206)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 206)
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
                        mem[0] = sha3(address(arg1), 206)
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
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor206[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 206)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 206)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor206[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 / planInfo[stor206[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 206)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 206)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 206)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor206[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 206)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 206)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != 24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor206[address(arg1)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    idx = 0
    while idx < userReferralBonus[address(msg.sender)].field_0:
        require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
        if not planInfo[stor206[address(msg.sender)][idx].field_0].field_0:
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 206)
            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 206)
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
                        mem[0] = sha3(address(msg.sender), 206)
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
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor206[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 206)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000 != userReferralBonus[address(msg.sender)][idx].field_512 - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 206)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor206[address(msg.sender)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0 / planInfo[stor206[address(msg.sender)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 206)
            if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 206)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 206)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(msg.sender)][idx].field_256
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor206[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 206)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000 != userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0) - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 206)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000 != 24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) + (24 * 3600 * planInfo[stor206[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor206[address(msg.sender)][idx].field_0].field_256 / 10000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    idx = 1
    while idx <= userReferralBonus[address(msg.sender)].field_768 + userReferralBonus[address(msg.sender)].field_1024 + userReferralBonus[address(msg.sender)].field_1280 + userReferralBonus[address(msg.sender)].field_1536 + userReferralBonus[address(msg.sender)].field_1792 + userReferralBonus[address(msg.sender)].field_2048 + userReferralBonus[address(msg.sender)].field_2304 + userReferralBonus[address(msg.sender)].field_2560 + userReferralBonus[address(msg.sender)].field_2816 + userReferralBonus[address(msg.sender)].field_3072:
        mem[0] = sub_43360a8e[address(msg.sender)][idx].field_0
        mem[32] = 206
        s = 0
        while s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0:
            require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_0 < planInfo.length
            if not planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0:
                require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                mem[0] = sha3(sub_43360a8e[address(msg.sender)][idx].field_0, 206)
                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                    require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                    require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_0 < planInfo.length
                    require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                    if not userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256:
                        require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                        require sub_43360a8e[address(msg.sender)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < block.timestamp:
                            if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < block.timestamp:
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256
                        if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 != planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                        require sub_43360a8e[address(msg.sender)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < block.timestamp:
                            if not userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(msg.sender)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000
                                        if (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(msg.sender)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000
                                        if (block.timestamp * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000 != block.timestamp - userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (block.timestamp * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            else:
                require planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0
                if 24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0 / planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0 != 24 * 3600:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0) < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                mem[0] = sha3(sub_43360a8e[address(msg.sender)][idx].field_0, 206)
                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0):
                    require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                    require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_0 < planInfo.length
                    require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                    if not userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256:
                        require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                        require sub_43360a8e[address(msg.sender)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0) < block.timestamp:
                            if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0):
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < block.timestamp:
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256
                        if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 != planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        require s < userReferralBonus[stor103[address(msg.sender)][idx].field_0].field_0
                        require sub_43360a8e[address(msg.sender)][idx].field_256 - 1 < sub_c9923f68.length
                        mem[0] = 1
                        if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0) < block.timestamp:
                            if not userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0):
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0):
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(msg.sender)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0):
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000
                                        if (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000 != 24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) + (24 * 3600 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_0 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            if not userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000:
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 != sub_c9923f68[stor103[address(msg.sender)][idx].field_256]:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 < block.timestamp:
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000:
                                        require userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000
                                        if (block.timestamp * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) / userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000 != block.timestamp - userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (block.timestamp * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) - (userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_512 * userReferralBonus[stor103[address(msg.sender)][idx].field_0][s].field_256 * planInfo[stor206[stor103[address(msg.sender)][idx].field_0][s].field_0].field_256 / 10000 * sub_c9923f68[stor103[address(msg.sender)][idx].field_256] / 10000) / 24 * 3600 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    if userReferralBonus[address(msg.sender)].field_4352 > 0:
        revert with 0, 'SafeMath: subtraction overflow'
    if userReferralBonus[address(msg.sender)].field_3328 <= 0:
        if -userReferralBonus[address(msg.sender)].field_4352 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 0 < userReferralBonus[address(msg.sender)].field_4352:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_4352 = 0
        if -userReferralBonus[address(msg.sender)].field_4352 <= 0:
            revert with 0, 'User has no dividends'
        if eth.balance(this.address) >= -userReferralBonus[address(msg.sender)].field_4352:
            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
            if userReferralBonus[address(msg.sender)].field_4096 - userReferralBonus[address(msg.sender)].field_4352 < userReferralBonus[address(msg.sender)].field_4096:
                revert with 0, 'SafeMath: addition overflow'
            userReferralBonus[address(msg.sender)].field_4096 -= userReferralBonus[address(msg.sender)].field_4352
            call msg.sender with:
               value -userReferralBonus[address(msg.sender)].field_4352 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(-userReferralBonus[address(msg.sender)].field_4352, msg.sender);
        else:
            if eth.balance(this.address) > -userReferralBonus[address(msg.sender)].field_4352:
                revert with 0, 'SafeMath: subtraction overflow'
            userReferralBonus[address(msg.sender)].field_3328 = -userReferralBonus[address(msg.sender)].field_4352 - eth.balance(this.address)
            if userReferralBonus[address(msg.sender)].field_3584 + userReferralBonus[address(msg.sender)].field_3328 < userReferralBonus[address(msg.sender)].field_3584:
                revert with 0, 'SafeMath: addition overflow'
            userReferralBonus[address(msg.sender)].field_3584 += userReferralBonus[address(msg.sender)].field_3328
            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
            if userReferralBonus[address(msg.sender)].field_4096 + eth.balance(this.address) < userReferralBonus[address(msg.sender)].field_4096:
                revert with 0, 'SafeMath: addition overflow'
            userReferralBonus[address(msg.sender)].field_4096 += eth.balance(this.address)
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(eth.balance(this.address), msg.sender);
    else:
        userReferralBonus[address(msg.sender)].field_3328 = 0
        if userReferralBonus[address(msg.sender)].field_3328 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352 < userReferralBonus[address(msg.sender)].field_3328:
            revert with 0, 'SafeMath: addition overflow'
        if 0 < userReferralBonus[address(msg.sender)].field_4352:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_4352 = 0
        if userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352 <= 0:
            revert with 0, 'User has no dividends'
        if eth.balance(this.address) >= userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352:
            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
            if userReferralBonus[address(msg.sender)].field_4096 + userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352 < userReferralBonus[address(msg.sender)].field_4096:
                revert with 0, 'SafeMath: addition overflow'
            userReferralBonus[address(msg.sender)].field_4096 = userReferralBonus[address(msg.sender)].field_4096 + userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352
            call msg.sender with:
               value userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn((userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352), msg.sender);
        else:
            if eth.balance(this.address) > userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352:
                revert with 0, 'SafeMath: subtraction overflow'
            userReferralBonus[address(msg.sender)].field_3328 = userReferralBonus[address(msg.sender)].field_3328 - userReferralBonus[address(msg.sender)].field_4352 - eth.balance(this.address)
            if userReferralBonus[address(msg.sender)].field_3584 + userReferralBonus[address(msg.sender)].field_3328 < userReferralBonus[address(msg.sender)].field_3584:
                revert with 0, 'SafeMath: addition overflow'
            userReferralBonus[address(msg.sender)].field_3584 += userReferralBonus[address(msg.sender)].field_3328
            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
            if userReferralBonus[address(msg.sender)].field_4096 + eth.balance(this.address) < userReferralBonus[address(msg.sender)].field_4096:
                revert with 0, 'SafeMath: addition overflow'
            userReferralBonus[address(msg.sender)].field_4096 += eth.balance(this.address)
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(eth.balance(this.address), msg.sender);
}



}
