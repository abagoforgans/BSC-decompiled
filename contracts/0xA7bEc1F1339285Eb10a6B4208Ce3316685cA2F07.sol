contract main {




// =====================  Runtime code  =====================


#
#  - settleBetUncleMerkleProof(uint256 arg1, uint40 arg2)
#
address owner;
address stor1;
uint256 maxProfit;
address secretSignerAddress;
uint128 jackpotSize;
uint128 lockedInBets; offset 128
mapping of struct stor5;
address croupierAddress;

function secretSigner() {
    return secretSignerAddress
}

function jackpotSize() {
    return jackpotSize
}

function croupier() {
    return croupierAddress
}

function owner() {
    return owner
}

function maxProfit() {
    return maxProfit
}

function lockedInBets() {
    return lockedInBets
}

function kill() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if lockedInBets:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'All bets should be processed (settled or refunded) before self-destruct.'
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function acceptNextOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor1
}

function setCroupier(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    croupierAddress = arg1
}

function setSecretSigner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    secretSignerAddress = arg1
}

function approveNextOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 == owner:
        revert with 0, 'Cannot approve current owner.'
    stor1 = arg1
}

function setMaxProfit(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 >= 3000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'maxProfit should be a sane number.'
    maxProfit = arg1
}

function increaseJackpot(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if uint128(jackpotSize + lockedInBets) + arg1 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    jackpotSize = uint128(jackpotSize + arg1)
}

function withdrawFunds(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if uint128(jackpotSize + lockedInBets) + arg2 > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        emit Payment(arg2, arg1);
}

function refundBet(uint256 arg1) {
    if not stor5[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in an 'active' state'
    if block.number <= stor5[arg1].field_272 + 250:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blockhash can't be queried by EVM.'
    stor5[arg1].field_0 = 0
    if 0 >= stor5[arg1].field_264:
        revert with 0, 'Win probability out of range.'
    if stor5[arg1].field_264 > stor5[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if stor5[arg1].field_0 < 12 * 10^17:
        if stor5[arg1].field_0 / 100 >= 3 * 10^15:
            if stor5[arg1].field_0 / 100 > stor5[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor5[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264))
        else:
            if 3 * 10^15 > stor5[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor5[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264))
    else:
        if stor5[arg1].field_0 / 100 >= 3 * 10^15:
            if (stor5[arg1].field_0 / 100) + 10^16 > stor5[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor5[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264))
        else:
            if 13 * 10^15 > stor5[arg1].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet doesn't even cover house edge.'
            require stor5[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264))
        jackpotSize = uint128(jackpotSize - 10^16)
    call stor5[arg1].field_352 with:
       value stor5[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(stor5[arg1].field_0, stor5[arg1].field_352);
    else:
        emit Payment(stor5[arg1].field_0, stor5[arg1].field_352);
}

function placeBet(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes32 arg6) payable {
    if stor5[arg4].field_352:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet should be in a 'clean' state.'
    if arg2 <= 1:
        revert with 0, 'Modulo should be within range.'
    if arg2 > 100:
        revert with 0, 'Modulo should be within range.'
    if msg.value < 15 * 10^16:
        revert with 0, 'Amount should be within range.'
    if msg.value > 3000000 * 10^18:
        revert with 0, 'Amount should be within range.'
    if arg1 <= 0:
        revert with 0, 'Mask should be within range.'
    if arg1 >= 1099511627776:
        revert with 0, 'Mask should be within range.'
    if block.number > arg3:
        revert with 0, 'Commit has expired.'
    signer = erecover(sha3(arg3 % 1099511627776, Mask(216, 40, arg4) >> 40, mem[197 len 5]), 27, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if secretSignerAddress != address(signer):
        revert with 0, 'ECDSA signature is not valid.'
    if arg2 <= 40:
        if 0 >= 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63:
            revert with 0, 'Win probability out of range.'
        if 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > arg2:
            revert with 0, 'Win probability out of range.'
        if msg.value < 12 * 10^17:
            if msg.value / 100 >= 3 * 10^15:
                if msg.value / 100 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (msg.value * arg2) - (msg.value / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((msg.value * arg2) - (msg.value / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63))
            else:
                if 3 * 10^15 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-3 * 10^15 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-3 * 10^15 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63))
        else:
            if msg.value / 100 >= 3 * 10^15:
                if (msg.value / 100) + 10^16 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-1 * 10^16 * arg2) + (msg.value * arg2) - (msg.value / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-1 * 10^16 * arg2) + (msg.value * arg2) - (msg.value / 100 * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63))
            else:
                if 13 * 10^15 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63
                if (-13 * 10^15 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-13 * 10^15 * arg2) + (msg.value * arg2) / 0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63))
            jackpotSize = uint128(jackpotSize + 10^16)
        if uint128(jackpotSize + lockedInBets) > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
        emit Commit(arg4);
        stor5[arg4].field_0 = msg.value
        stor5[arg4].field_256 = uint8(arg2)
        stor5[arg4].field_264 = uint8(0x1041041041041041041041041041041041041041041041041041041041041 and 0x2000000000100000000008000000000400000000020000000001 * arg1 % 63)
        stor5[arg4].field_272 = block.number % 1099511627776
        stor5[arg4].field_312 = arg1 % 1099511627776
    else:
        if arg1 <= 0:
            revert with 0, 'High modulo range, betMask larger than modulo.'
        if arg1 > arg2:
            revert with 0, 'High modulo range, betMask larger than modulo.'
        if 0 >= arg1:
            revert with 0, 'Win probability out of range.'
        if arg1 > arg2:
            revert with 0, 'Win probability out of range.'
        if msg.value < 12 * 10^17:
            if msg.value / 100 >= 3 * 10^15:
                if msg.value / 100 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require arg1
                if (msg.value * arg2) - (msg.value / 100 * arg2) / arg1 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((msg.value * arg2) - (msg.value / 100 * arg2) / arg1))
            else:
                if 3 * 10^15 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require arg1
                if (-3 * 10^15 * arg2) + (msg.value * arg2) / arg1 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-3 * 10^15 * arg2) + (msg.value * arg2) / arg1))
        else:
            if msg.value / 100 >= 3 * 10^15:
                if (msg.value / 100) + 10^16 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require arg1
                if (-1 * 10^16 * arg2) + (msg.value * arg2) - (msg.value / 100 * arg2) / arg1 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-1 * 10^16 * arg2) + (msg.value * arg2) - (msg.value / 100 * arg2) / arg1))
            else:
                if 13 * 10^15 > msg.value:
                    revert with 0, 'Bet doesn't even cover house edge.'
                require arg1
                if (-13 * 10^15 * arg2) + (msg.value * arg2) / arg1 > msg.value + maxProfit:
                    revert with 0, 'maxProfit limit violation.'
                lockedInBets = uint128(lockedInBets + ((-13 * 10^15 * arg2) + (msg.value * arg2) / arg1))
            jackpotSize = uint128(jackpotSize + 10^16)
        if uint128(jackpotSize + lockedInBets) > eth.balance(this.address):
            revert with 0, 'Cannot afford to lose this bet.'
        emit Commit(arg4);
        stor5[arg4].field_0 = msg.value
        stor5[arg4].field_256 = uint8(arg2)
        stor5[arg4].field_264 = uint8(arg1)
        stor5[arg4].field_272 = block.number % 1099511627776
        stor5[arg4].field_312 = 0
    stor5[arg4].field_352 = msg.sender
}

function settleBet(uint256 arg1, bytes32 arg2) {
    if croupierAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyCroupier methods called by non-croupier.'
    if block.number <= stor5[arg1].field_272:
        revert with 0, 'settleBet in the same block as placeBet, or before.'
    if block.number > stor5[arg1].field_272 + 250:
        revert with 0, 'Blockhash can't be queried by EVM.'
    require block.hash(stor5[arg1].field_272) == arg2
    if not stor5[arg1].field_0:
        revert with 0, 'Bet should be in an 'active' state'
    stor5[arg1].field_0 = 0
    require stor5[arg1].field_256
    if 0 >= stor5[arg1].field_264:
        revert with 0, 'Win probability out of range.'
    if stor5[arg1].field_264 > stor5[arg1].field_256:
        revert with 0, 'Win probability out of range.'
    if stor5[arg1].field_0 >= 12 * 10^17:
        if stor5[arg1].field_0 / 100 >= 3 * 10^15:
            if (stor5[arg1].field_0 / 100) + 10^16 > stor5[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor5[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264))
            if stor5[arg1].field_256 > 40:
                if sha3(arg1, 0, arg2) % stor5[arg1].field_256 >= stor5[arg1].field_264:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(0, stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                else:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        if not (-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            call stor5[arg1].field_352 with:
                               value (-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            if not (-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value (-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not ((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value ((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
            else:
                if not 2^(sha3(arg1, 0, arg2) % stor5[arg1].field_256) or not stor5[arg1].field_312:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(0, stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                else:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        if not (-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            call stor5[arg1].field_352 with:
                               value (-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            if not (-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value (-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not ((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value ((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-1 * 10^16 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
        else:
            if 13 * 10^15 > stor5[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor5[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264))
            if stor5[arg1].field_256 > 40:
                if sha3(arg1, 0, arg2) % stor5[arg1].field_256 >= stor5[arg1].field_264:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(0, stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                else:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        if not (-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            call stor5[arg1].field_352 with:
                               value (-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            if not (-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value (-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not ((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value ((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
            else:
                if not 2^(sha3(arg1, 0, arg2) % stor5[arg1].field_256) or not stor5[arg1].field_312:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(0, stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                else:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        if not (-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            call stor5[arg1].field_352 with:
                               value (-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            if not (-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value (-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not ((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value ((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-13 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
    else:
        if stor5[arg1].field_0 / 100 >= 3 * 10^15:
            if stor5[arg1].field_0 / 100 > stor5[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor5[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264))
            if stor5[arg1].field_256 > 40:
                if sha3(arg1, 0, arg2) % stor5[arg1].field_256 >= stor5[arg1].field_264:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(0, stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                else:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        if not (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            call stor5[arg1].field_352 with:
                               value (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            if not (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                                else:
                                    emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not ((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value ((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize), stor5[arg1].field_352);
                                else:
                                    emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
            else:
                if not 2^(sha3(arg1, 0, arg2) % stor5[arg1].field_256) or not stor5[arg1].field_312:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(0, stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                else:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        if not (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            call stor5[arg1].field_352 with:
                               value (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            if not (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value (stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                                else:
                                    emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not ((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value ((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize), stor5[arg1].field_352);
                                else:
                                    emit Payment(((stor5[arg1].field_0 * stor5[arg1].field_256) - (stor5[arg1].field_0 / 100 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
        else:
            if 3 * 10^15 > stor5[arg1].field_0:
                revert with 0, 'Bet doesn't even cover house edge.'
            require stor5[arg1].field_264
            lockedInBets = uint128(lockedInBets - ((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264))
            if stor5[arg1].field_256 > 40:
                if sha3(arg1, 0, arg2) % stor5[arg1].field_256 >= stor5[arg1].field_264:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(0, stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                else:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        if not (-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            call stor5[arg1].field_352 with:
                               value (-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            if not (-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value (-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not ((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value ((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
            else:
                if not 2^(sha3(arg1, 0, arg2) % stor5[arg1].field_256) or not stor5[arg1].field_312:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        call stor5[arg1].field_352 with:
                           value 1 wei
                             gas 0 wei
                        if not ext_call.success:
                            emit FailedPayment(1, stor5[arg1].field_352);
                        else:
                            emit Payment(0, stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(0, stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(jackpotSize, stor5[arg1].field_352);
                                else:
                                    emit Payment(0, stor5[arg1].field_352);
                else:
                    if stor5[arg1].field_0 < 12 * 10^17:
                        if not (-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264:
                            call stor5[arg1].field_352 with:
                               value 1 wei
                                 gas 0 wei
                            if not ext_call.success:
                                emit FailedPayment(1, stor5[arg1].field_352);
                            else:
                                emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            call stor5[arg1].field_352 with:
                               value (-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                emit FailedPayment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                    else:
                        require stor5[arg1].field_256
                        if sha3(arg1, 0, arg2) / stor5[arg1].field_256 % 1000:
                            if not (-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value (-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                        else:
                            jackpotSize = 0
                            if jackpotSize > 0:
                                emit JackpotPayment(jackpotSize, stor5[arg1].field_352);
                            if not ((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize:
                                call stor5[arg1].field_352 with:
                                   value 1 wei
                                     gas 0 wei
                                if not ext_call.success:
                                    emit FailedPayment(1, stor5[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
                            else:
                                call stor5[arg1].field_352 with:
                                   value ((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    emit FailedPayment((((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264) + jackpotSize), stor5[arg1].field_352);
                                else:
                                    emit Payment(((-3 * 10^15 * stor5[arg1].field_256) + (stor5[arg1].field_0 * stor5[arg1].field_256) / stor5[arg1].field_264), stor5[arg1].field_352);
}



}
