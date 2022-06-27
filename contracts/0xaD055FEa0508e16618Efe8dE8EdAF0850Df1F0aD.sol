contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)

const sub_852aa16b(?) = 20 * 10^18

const sub_950d91e9(?) = (24 * 3600)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const PROJECT_FEE = 100

const INVEST_MIN_AMOUNT = 5 * 10^17


array of uint256 rEFERRAL_PERCENTS;
uint256 totalInvested;
array of address stor2;
array of struct planInfo;
mapping of struct userReferralBonus;
uint8 stor5;
address commissionWalletAddress; offset 8

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor4[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
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
                        mem[0] = sha3(address(arg1), 4)
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
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor4[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor4[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 / planInfo[stor4[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor4[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(arg1)].field_1536 < userReferralBonus[address(arg1)].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)].field_1536
}

function started() {
    return bool(stor5)
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_512
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1792
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
        mem[32] = 4
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0, 
           userReferralBonus[address(arg1)].field_2048,
           userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024 + userReferralBonus[address(arg1)].field_1280
}

function totalRefBonus() {
    return stor2.length
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

function getUserCheckpoint(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_256
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1536
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_2048
}

function _fallback() payable {
    revert
}

function getSiteInfo() {
    return totalInvested, stor2.length
}

function getUserTotalReferrals(address arg1) {
    require calldata.size - 4 >= 32
    return (userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024 + userReferralBonus[address(arg1)].field_1280)
}

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    idx = 192
    s = 3
    while 288 > idx + 32:
        mem[idx + 32] = userReferralBonus[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return userReferralBonus[address(arg1)].field_768, mem[224 len 64]
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if userReferralBonus[address(arg1)].field_1536 > userReferralBonus[address(arg1)].field_1792:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userReferralBonus[address(arg1)].field_1792 - userReferralBonus[address(arg1)].field_1536)
}

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    if not planInfo[stor4[address(arg1)][arg2].field_0].field_0:
        require arg2 < userReferralBonus[address(arg1)].field_0
        if userReferralBonus[address(arg1)][arg2].field_512 < userReferralBonus[address(arg1)][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return userReferralBonus[address(arg1)][arg2].field_0, 
               planInfo[stor4[address(arg1)][arg2].field_0].field_256,
               userReferralBonus[address(arg1)][arg2].field_256,
               userReferralBonus[address(arg1)][arg2].field_512,
               userReferralBonus[address(arg1)][arg2].field_512
    require planInfo[stor4[address(arg1)][arg2].field_0].field_0
    if 24 * 3600 * planInfo[stor4[address(arg1)][arg2].field_0].field_0 / planInfo[stor4[address(arg1)][arg2].field_0].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg2 < userReferralBonus[address(arg1)].field_0
    if userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][arg2].field_0].field_0) < userReferralBonus[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)][arg2].field_0, 
           planInfo[stor4[address(arg1)][arg2].field_0].field_256,
           userReferralBonus[address(arg1)][arg2].field_256,
           userReferralBonus[address(arg1)][arg2].field_512,
           userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][arg2].field_0].field_0)
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
        mem[32] = 4
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return (s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0)
}

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor5:
        if commissionWalletAddress != msg.sender:
            revert with 0, 'Not started yet'
        stor5 = 1
    require msg.value >= 5 * 10^17
    if arg2 >= planInfo.length:
        revert with 0, 'Invalid plan'
    if not msg.value:
        call commissionWalletAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FeePayed(0, msg.sender);
    else:
        require msg.value
        if 100 * msg.value / msg.value != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call commissionWalletAddress with:
           value 100 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FeePayed((100 * msg.value / 1000), msg.sender);
    mem[0] = msg.sender
    mem[32] = 4
    if userReferralBonus[address(msg.sender)].field_512:
        idx = 0
        s = stor2[sha3(mem[0 len 64])]
        while idx < rEFERRAL_PERCENTS.length:
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
                if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                if userReferralBonus[address(s)].field_1792 < userReferralBonus[address(s)].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                if stor2.length < stor2.length:
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
                if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                if userReferralBonus[address(s)].field_1792 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(s)].field_1792 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                if stor2.length + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < stor2.length:
                    revert with 0, 'SafeMath: addition overflow'
                stor2.length += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
            mem[0] = address(s)
            mem[32] = 4
            idx = idx + 1
            s = userReferralBonus[address(s)].field_512
            continue 
    else:
        if userReferralBonus[address(arg1)].field_0 > 0:
            if arg1 != msg.sender:
                userReferralBonus[address(msg.sender)].field_512 = arg1
        idx = 0
        s = userReferralBonus[address(msg.sender)].field_512
        while idx < rEFERRAL_PERCENTS.length:
            if address(s):
                require idx < 3
                if userReferralBonus[address(s)][idx].field_768 + 1 < userReferralBonus[address(s)][idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < 3
                userReferralBonus[address(s)][idx].field_768++
                mem[0] = address(s)
                mem[32] = 4
                idx = idx + 1
                s = userReferralBonus[address(s)].field_512
                continue 
            if userReferralBonus[address(msg.sender)].field_512:
                idx = 0
                s = userReferralBonus[address(msg.sender)].field_512
                while idx < rEFERRAL_PERCENTS.length:
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
                        if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        if userReferralBonus[address(s)].field_1792 < userReferralBonus[address(s)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor2.length < stor2.length:
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
                        if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        if userReferralBonus[address(s)].field_1792 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_1792 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        if stor2.length + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < stor2.length:
                            revert with 0, 'SafeMath: addition overflow'
                        stor2.length += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                    mem[0] = address(s)
                    mem[32] = 4
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
        if userReferralBonus[address(msg.sender)].field_512:
            idx = 0
            s = userReferralBonus[address(msg.sender)].field_512
            while idx < rEFERRAL_PERCENTS.length:
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
                    if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    if userReferralBonus[address(s)].field_1792 < userReferralBonus[address(s)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor2.length < stor2.length:
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
                    if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    if userReferralBonus[address(s)].field_1792 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    userReferralBonus[address(s)].field_1792 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    if stor2.length + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < stor2.length:
                        revert with 0, 'SafeMath: addition overflow'
                    stor2.length += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                mem[0] = address(s)
                mem[32] = 4
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

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor4[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
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
                        mem[0] = sha3(address(arg1), 4)
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
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor4[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor4[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 / planInfo[stor4[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 4)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor4[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 4)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 4)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor4[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    idx = 0
    while idx < userReferralBonus[address(msg.sender)].field_0:
        require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
        if not planInfo[stor4[address(msg.sender)][idx].field_0].field_0:
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
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
                        mem[0] = sha3(address(msg.sender), 4)
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
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor4[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor4[address(msg.sender)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 / planInfo[stor4[address(msg.sender)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 4)
            if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(msg.sender)][idx].field_256
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor4[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 4)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 4)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor4[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor4[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(msg.sender)].field_1536 <= 0:
        revert with 0, 'User has no dividends'
    userReferralBonus[address(msg.sender)].field_1536 = 0
    if userReferralBonus[address(msg.sender)].field_1536 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if userReferralBonus[address(msg.sender)].field_1536 <= 0:
        revert with 0, 'User has no dividends'
    if eth.balance(this.address) >= userReferralBonus[address(msg.sender)].field_1536:
        if userReferralBonus[address(msg.sender)].field_256 + (24 * 3600) < userReferralBonus[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require userReferralBonus[address(msg.sender)].field_256 + (24 * 3600) <= block.timestamp
        if userReferralBonus[address(msg.sender)].field_1536 > 20 * 10^18:
            if 20 * 10^18 > userReferralBonus[address(msg.sender)].field_1536:
                revert with 0, 'SafeMath: subtraction overflow'
            userReferralBonus[address(msg.sender)].field_1536 -= 20 * 10^18
            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
            if userReferralBonus[address(msg.sender)].field_2048 + 16 * 10^18 < userReferralBonus[address(msg.sender)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            userReferralBonus[address(msg.sender)].field_2048 += 16 * 10^18
            if totalInvested + 4 * 10^18 < totalInvested:
                revert with 0, 'SafeMath: addition overflow'
            totalInvested += 4 * 10^18
            call msg.sender with:
               value 16 * 10^18 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(20 * 10^18, msg.sender);
        else:
            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
            if not userReferralBonus[address(msg.sender)].field_1536:
                if userReferralBonus[address(msg.sender)].field_2048 < userReferralBonus[address(msg.sender)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require userReferralBonus[address(msg.sender)].field_1536
                if 4 * userReferralBonus[address(msg.sender)].field_1536 / userReferralBonus[address(msg.sender)].field_1536 != 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userReferralBonus[address(msg.sender)].field_2048 + (4 * userReferralBonus[address(msg.sender)].field_1536 / 5) < userReferralBonus[address(msg.sender)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(msg.sender)].field_2048 += 4 * userReferralBonus[address(msg.sender)].field_1536 / 5
            if not userReferralBonus[address(msg.sender)].field_1536:
                if totalInvested < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require userReferralBonus[address(msg.sender)].field_1536
                if userReferralBonus[address(msg.sender)].field_1536 / userReferralBonus[address(msg.sender)].field_1536 != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalInvested + (userReferralBonus[address(msg.sender)].field_1536 / 5) < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
                totalInvested += userReferralBonus[address(msg.sender)].field_1536 / 5
            if not userReferralBonus[address(msg.sender)].field_1536:
                call msg.sender with:
                     gas 2300 wei
            else:
                require userReferralBonus[address(msg.sender)].field_1536
                if 4 * userReferralBonus[address(msg.sender)].field_1536 / userReferralBonus[address(msg.sender)].field_1536 != 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                call msg.sender with:
                   value 4 * userReferralBonus[address(msg.sender)].field_1536 / 5 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(userReferralBonus[address(msg.sender)].field_1536, msg.sender);
    else:
        if eth.balance(this.address) > userReferralBonus[address(msg.sender)].field_1536:
            revert with 0, 'SafeMath: subtraction overflow'
        userReferralBonus[address(msg.sender)].field_1536 -= eth.balance(this.address)
        if userReferralBonus[address(msg.sender)].field_1792 + userReferralBonus[address(msg.sender)].field_1536 < userReferralBonus[address(msg.sender)].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_1792 += userReferralBonus[address(msg.sender)].field_1536
        if userReferralBonus[address(msg.sender)].field_256 + (24 * 3600) < userReferralBonus[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require userReferralBonus[address(msg.sender)].field_256 + (24 * 3600) <= block.timestamp
        if eth.balance(this.address) > 20 * 10^18:
            if 20 * 10^18 > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            userReferralBonus[address(msg.sender)].field_1536 = eth.balance(this.address) - 20 * 10^18
            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
            if userReferralBonus[address(msg.sender)].field_2048 + 16 * 10^18 < userReferralBonus[address(msg.sender)].field_2048:
                revert with 0, 'SafeMath: addition overflow'
            userReferralBonus[address(msg.sender)].field_2048 += 16 * 10^18
            if totalInvested + 4 * 10^18 < totalInvested:
                revert with 0, 'SafeMath: addition overflow'
            totalInvested += 4 * 10^18
            call msg.sender with:
               value 16 * 10^18 wei
                 gas 0 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(20 * 10^18, msg.sender);
        else:
            userReferralBonus[address(msg.sender)].field_256 = block.timestamp
            if not eth.balance(this.address):
                if userReferralBonus[address(msg.sender)].field_2048 < userReferralBonus[address(msg.sender)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require eth.balance(this.address)
                if 4 * eth.balance(this.address) / eth.balance(this.address) != 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userReferralBonus[address(msg.sender)].field_2048 + (4 * eth.balance(this.address) / 5) < userReferralBonus[address(msg.sender)].field_2048:
                    revert with 0, 'SafeMath: addition overflow'
                userReferralBonus[address(msg.sender)].field_2048 += 4 * eth.balance(this.address) / 5
            if not eth.balance(this.address):
                if totalInvested < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require eth.balance(this.address)
                if eth.balance(this.address) / eth.balance(this.address) != 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalInvested + (eth.balance(this.address) / 5) < totalInvested:
                    revert with 0, 'SafeMath: addition overflow'
                totalInvested += eth.balance(this.address) / 5
            if not eth.balance(this.address):
                call msg.sender with:
                     gas 2300 wei
            else:
                require eth.balance(this.address)
                if 4 * eth.balance(this.address) / eth.balance(this.address) != 4:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                call msg.sender with:
                   value 4 * eth.balance(this.address) / 5 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdrawn(eth.balance(this.address), msg.sender);
}



}
