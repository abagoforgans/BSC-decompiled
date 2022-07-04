contract main {




// =====================  Runtime code  =====================


const sub_388655fb(?) = eth.balance(this.address)

const sub_4bc4e085(?) = 80

const getContractBalance = eth.balance(this.address)

const PERCENTS_DIVIDER = 1000

const TIME_STEP = (24 * 3600)

const CEO_FEE = 100


array of uint256 rEFERRAL_PERCENTS;
uint256 totalInvested;
array of address stor2;
uint256 INVEST_MIN_AMOUNT;
array of struct planInfo;
mapping of struct userReferralBonus;
uint256 startDate;
address ceoWalletAddress;

function startDate() {
    return startDate
}

function getUserAvailable(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor5[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 5)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
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
                        mem[0] = sha3(address(arg1), 5)
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
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor5[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor5[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 / planInfo[stor5[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 5)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor5[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    if userReferralBonus[address(arg1)].field_1280 < userReferralBonus[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)].field_1280
}

function getUserReferrer(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_512
}

function ceoWallet() {
    return ceoWalletAddress
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1536
}

function totalInvested() {
    return totalInvested
}

function REFERRAL_PERCENTS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < rEFERRAL_PERCENTS.length
    return rEFERRAL_PERCENTS[arg1]
}

function getUserAmountOfDeposits(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_0
}

function totalBonus() {
    return stor2.length
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

function INVEST_MIN_AMOUNT() {
    return INVEST_MIN_AMOUNT
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1280
}

function getUserTotalWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    return userReferralBonus[address(arg1)].field_1792
}

function _fallback() payable {
    revert
}

function sub_6e79a0b8(?) {
    require calldata.size - 4 >= 32
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    INVEST_MIN_AMOUNT = arg1
}

function getUserTotalReferrals(address arg1) {
    require calldata.size - 4 >= 32
    return (userReferralBonus[address(arg1)].field_768 + userReferralBonus[address(arg1)].field_1024)
}

function sub_1a6a2148(?) {
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_105ff198(?) {
    require calldata.size - 4 >= 32
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUserDownlineCount(address arg1) {
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

function sub_ccd620c7(?) {
    require calldata.size - 4 >= 32
    if ceoWalletAddress != msg.sender:
        revert with 0, 'only owner'
    call msg.sender with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if userReferralBonus[address(arg1)].field_1280 > userReferralBonus[address(arg1)].field_1536:
        revert with 0, 'SafeMath: subtraction overflow'
    return (userReferralBonus[address(arg1)].field_1536 - userReferralBonus[address(arg1)].field_1280)
}

function getTokenDecimals(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_28749814(?) {
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

function getSiteInfo() {
    if not totalInvested:
        return totalInvested, 0, stor2.length, eth.balance(this.address)
    require totalInvested
    if 80 * totalInvested / totalInvested != 80:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return totalInvested, 80 * totalInvested / 1000, stor2.length, eth.balance(this.address)
}

function sub_90bf53da(?) {
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

function withdrawTokens(address arg1, address arg2) {
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

function getUserDepositInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    require arg2 < userReferralBonus[address(arg1)].field_0
    require userReferralBonus[address(arg1)][arg2].field_0 < planInfo.length
    if not planInfo[stor5[address(arg1)][arg2].field_0].field_0:
        require arg2 < userReferralBonus[address(arg1)].field_0
        if userReferralBonus[address(arg1)][arg2].field_512 < userReferralBonus[address(arg1)][arg2].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return userReferralBonus[address(arg1)][arg2].field_0, 
               planInfo[stor5[address(arg1)][arg2].field_0].field_256,
               userReferralBonus[address(arg1)][arg2].field_256,
               userReferralBonus[address(arg1)][arg2].field_512,
               userReferralBonus[address(arg1)][arg2].field_512
    require planInfo[stor5[address(arg1)][arg2].field_0].field_0
    if 24 * 3600 * planInfo[stor5[address(arg1)][arg2].field_0].field_0 / planInfo[stor5[address(arg1)][arg2].field_0].field_0 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require arg2 < userReferralBonus[address(arg1)].field_0
    if userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][arg2].field_0].field_0) < userReferralBonus[address(arg1)][arg2].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return userReferralBonus[address(arg1)][arg2].field_0, 
           planInfo[stor5[address(arg1)][arg2].field_0].field_256,
           userReferralBonus[address(arg1)][arg2].field_256,
           userReferralBonus[address(arg1)][arg2].field_512,
           userReferralBonus[address(arg1)][arg2].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][arg2].field_0].field_0)
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
        mem[32] = 5
        idx = idx + 1
        s = s + userReferralBonus[address(arg1)][idx].field_256
        continue 
    return (s * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0 * userReferralBonus[address(arg1)].field_0)
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
        mem[32] = 5
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

function invest(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if block.timestamp <= startDate:
        revert with 0, 'contract does not launch yet'
    if msg.value < INVEST_MIN_AMOUNT:
        revert with 0, 'error min'
    if arg2 >= 3:
        revert with 0, 'Invalid plan'
    if ext_code.size(msg.sender) > 0:
        call ceoWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not msg.value:
            call ceoWalletAddress with:
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
            call ceoWalletAddress with:
               value 100 * msg.value / 1000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit FeePayed((100 * msg.value / 1000), msg.sender);
        mem[0] = msg.sender
        mem[32] = 5
        if userReferralBonus[address(msg.sender)].field_512:
            idx = 0
            s = stor2[sha3(mem[0 len 64])]
            while idx < 2:
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
                    emit NewDeposit(arg2 << 248, msg.value, block.timestamp, msg.sender);
                require idx < rEFERRAL_PERCENTS.length
                if not msg.value:
                    if userReferralBonus[address(s)].field_1280 < userReferralBonus[address(s)].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
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
                    if userReferralBonus[address(s)].field_1280 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    userReferralBonus[address(s)].field_1280 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                        revert with 0, 'SafeMath: addition overflow'
                    userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                    emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                mem[0] = address(s)
                mem[32] = 5
                idx = idx + 1
                s = userReferralBonus[address(s)].field_512
                continue 
        else:
            if userReferralBonus[address(arg1)].field_0 <= 0:
                userReferralBonus[address(msg.sender)].field_512 = ceoWalletAddress
            else:
                if arg1 == msg.sender:
                    userReferralBonus[address(msg.sender)].field_512 = ceoWalletAddress
                else:
                    userReferralBonus[address(msg.sender)].field_512 = arg1
            idx = 0
            s = userReferralBonus[address(msg.sender)].field_512
            while idx < 2:
                if address(s):
                    require idx < 2
                    if userReferralBonus[address(s)][idx].field_768 + 1 < userReferralBonus[address(s)][idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < 2
                    userReferralBonus[address(s)][idx].field_768++
                    mem[0] = address(s)
                    mem[32] = 5
                    idx = idx + 1
                    s = userReferralBonus[address(s)].field_512
                    continue 
                if userReferralBonus[address(msg.sender)].field_512:
                    idx = 0
                    s = userReferralBonus[address(msg.sender)].field_512
                    while idx < 2:
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
                            emit NewDeposit(arg2 << 248, msg.value, block.timestamp, msg.sender);
                        require idx < rEFERRAL_PERCENTS.length
                        if not msg.value:
                            if userReferralBonus[address(s)].field_1280 < userReferralBonus[address(s)].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
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
                            if userReferralBonus[address(s)].field_1280 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            userReferralBonus[address(s)].field_1280 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                                revert with 0, 'SafeMath: addition overflow'
                            userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                            emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                        mem[0] = address(s)
                        mem[32] = 5
                        idx = idx + 1
                        s = userReferralBonus[address(s)].field_512
                        continue 
                else:
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require msg.value
                        if 80 * msg.value / msg.value != 80:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        call ceoWalletAddress with:
                           value 80 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                emit NewDeposit(arg2 << 248, msg.value, block.timestamp, msg.sender);
            if userReferralBonus[address(msg.sender)].field_512:
                idx = 0
                s = userReferralBonus[address(msg.sender)].field_512
                while idx < 2:
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
                        emit NewDeposit(arg2 << 248, msg.value, block.timestamp, msg.sender);
                    require idx < rEFERRAL_PERCENTS.length
                    if not msg.value:
                        if userReferralBonus[address(s)].field_1280 < userReferralBonus[address(s)].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if userReferralBonus[address(s)].field_1536 < userReferralBonus[address(s)].field_1536:
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
                        if userReferralBonus[address(s)].field_1280 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_1280 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        if userReferralBonus[address(s)].field_1536 + (msg.value * rEFERRAL_PERCENTS[idx] / 1000) < userReferralBonus[address(s)].field_1536:
                            revert with 0, 'SafeMath: addition overflow'
                        userReferralBonus[address(s)].field_1536 += msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        mem[96] = msg.value * rEFERRAL_PERCENTS[idx] / 1000
                        emit RefBonus((msg.value * rEFERRAL_PERCENTS[idx] / 1000), address(s), msg.sender, idx);
                    mem[0] = address(s)
                    mem[32] = 5
                    idx = idx + 1
                    s = userReferralBonus[address(s)].field_512
                    continue 
            else:
                if not msg.value:
                    call ceoWalletAddress with:
                         gas 2300 wei
                else:
                    require msg.value
                    if 80 * msg.value / msg.value != 80:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    call ceoWalletAddress with:
                       value 80 * msg.value / 1000 wei
                         gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
        emit NewDeposit(arg2 << 248, msg.value, block.timestamp, msg.sender);
}

function getUserDividends(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < userReferralBonus[address(arg1)].field_0:
        require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
        if not planInfo[stor5[address(arg1)][idx].field_0].field_0:
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 5)
            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
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
                        mem[0] = sha3(address(arg1), 5)
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
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor5[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512:
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor5[address(arg1)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 / planInfo[stor5[address(arg1)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 5)
            if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < userReferralBonus[address(arg1)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                require idx < userReferralBonus[address(arg1)].field_0
                require userReferralBonus[address(arg1)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(arg1)].field_0
                if not userReferralBonus[address(arg1)][idx].field_256:
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(arg1)][idx].field_256
                    if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / userReferralBonus[address(arg1)][idx].field_256 != planInfo[stor5[address(arg1)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 5)
                    if userReferralBonus[address(arg1)][idx].field_512 <= userReferralBonus[address(arg1)].field_256:
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)].field_256 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)].field_256 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)].field_256 < block.timestamp:
                                if userReferralBonus[address(arg1)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)].field_256 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 5)
                        if userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(arg1)][idx].field_512 < userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                if userReferralBonus[address(arg1)][idx].field_512 > userReferralBonus[address(arg1)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(arg1)][idx].field_0].field_0 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(arg1)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(arg1)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(arg1)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(arg1)][idx].field_512 * userReferralBonus[address(arg1)][idx].field_256 * planInfo[stor5[address(arg1)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
    return 0
}

function withdraw() {
    if userReferralBonus[address(msg.sender)].field_256 + (24 * 3600) < userReferralBonus[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if userReferralBonus[address(msg.sender)].field_256 + (24 * 3600) >= block.timestamp:
        revert with 0, 'only once a day'
    idx = 0
    while idx < userReferralBonus[address(msg.sender)].field_0:
        require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
        if not planInfo[stor5[address(msg.sender)][idx].field_0].field_0:
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 5)
            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 5)
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
                        mem[0] = sha3(address(msg.sender), 5)
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
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor5[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
        else:
            require planInfo[stor5[address(msg.sender)][idx].field_0].field_0
            if 24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 / planInfo[stor5[address(msg.sender)][idx].field_0].field_0 != 24 * 3600:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require idx < userReferralBonus[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 5)
            if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < userReferralBonus[address(msg.sender)][idx].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                require idx < userReferralBonus[address(msg.sender)].field_0
                require userReferralBonus[address(msg.sender)][idx].field_0 < planInfo.length
                require idx < userReferralBonus[address(msg.sender)].field_0
                if not userReferralBonus[address(msg.sender)][idx].field_256:
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require userReferralBonus[address(msg.sender)][idx].field_256
                    if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / userReferralBonus[address(msg.sender)][idx].field_256 != planInfo[stor5[address(msg.sender)][idx].field_0].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require idx < userReferralBonus[address(msg.sender)].field_0
                    mem[0] = sha3(address(msg.sender), 5)
                    if userReferralBonus[address(msg.sender)][idx].field_512 <= userReferralBonus[address(msg.sender)].field_256:
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)].field_256 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)].field_256 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)].field_256 < block.timestamp:
                                if userReferralBonus[address(msg.sender)].field_256 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)].field_256:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)].field_256 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        require idx < userReferralBonus[address(msg.sender)].field_0
                        mem[0] = sha3(address(msg.sender), 5)
                        if userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0) < block.timestamp:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                if userReferralBonus[address(msg.sender)][idx].field_512 > userReferralBonus[address(msg.sender)][idx].field_512 + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != 24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) + (24 * 3600 * planInfo[stor5[address(msg.sender)][idx].field_0].field_0 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                        else:
                            if userReferralBonus[address(msg.sender)][idx].field_512 < block.timestamp:
                                if userReferralBonus[address(msg.sender)][idx].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000:
                                    require userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000 != block.timestamp - userReferralBonus[address(msg.sender)][idx].field_512:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (block.timestamp * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) - (userReferralBonus[address(msg.sender)][idx].field_512 * userReferralBonus[address(msg.sender)][idx].field_256 * planInfo[stor5[address(msg.sender)][idx].field_0].field_256 / 1000) / 24 * 3600 < 0:
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
    if eth.balance(this.address) >= userReferralBonus[address(msg.sender)].field_1280:
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        if userReferralBonus[address(msg.sender)].field_1792 + userReferralBonus[address(msg.sender)].field_1280 < userReferralBonus[address(msg.sender)].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_1792 += userReferralBonus[address(msg.sender)].field_1280
        call msg.sender with:
           value userReferralBonus[address(msg.sender)].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(userReferralBonus[address(msg.sender)].field_1280, block.timestamp, msg.sender);
    else:
        if eth.balance(this.address) > userReferralBonus[address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        userReferralBonus[address(msg.sender)].field_1280 -= eth.balance(this.address)
        userReferralBonus[address(msg.sender)].field_256 = block.timestamp
        if userReferralBonus[address(msg.sender)].field_1792 + eth.balance(this.address) < userReferralBonus[address(msg.sender)].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        userReferralBonus[address(msg.sender)].field_1792 += eth.balance(this.address)
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Withdrawn(eth.balance(this.address), block.timestamp, msg.sender);
}



}
