contract main {




// =====================  Runtime code  =====================


#
#  - sub_c1de1343(?)
#  - sub_e6c14c43(?)
#
uint32 stor0;
address operatorAddress;
uint256 stor0;
address stor1;
uint256 sub_8de942a9;
uint256 sub_a0fca166;
uint8 stor4;
uint256 HOUSE_EDGE;
uint256 sub_11fffbdd;
uint256 sub_17142f9f;
uint256 sub_40f31801;
uint256 sub_418de3f6;
address liquidityAdderAddress;
address referralContractAddress;
uint256 sub_d8a62bdf;
uint256 totalWinAmountOfGame;
bool stor14; offset 255
uint256 stor14;
uint256 sub_00f308d2;
uint256 sub_840e0b63;
array of uint256 commitments;
array of struct bets;
array of uint256 sub_6fcc5628;
mapping of struct amountOf;
mapping of uint8 stor20;

function sub_00f308d2(?) {
    return sub_00f308d2
}

function amountOf(address arg1) {
    require calldata.size - 4 >= 32
    return amountOf[arg1].field_0, amountOf[arg1].field_256
}

function sub_11fffbdd(?) {
    return sub_11fffbdd
}

function sub_17142f9f(?) {
    return sub_17142f9f
}

function bets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < bets.length
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bool(bets[arg1].field_512),
           bets[arg1].field_768,
           bets[arg1].field_1024,
           bets[arg1].field_1280,
           bets[arg1].field_1536,
           bets[arg1].field_1792,
           bool(bets[arg1].field_2048)
}

function sub_40f31801(?) {
    return sub_40f31801
}

function sub_418de3f6(?) {
    return sub_418de3f6
}

function commitments(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < commitments.length
    return commitments[arg1]
}

function liquidityAdder() {
    return liquidityAdderAddress
}

function operator() {
    return address(operatorAddress)
}

function sub_6fcc5628(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_6fcc5628[arg1]
    return sub_6fcc5628[arg1][arg2]
}

function stopped() {
    return bool(stor4)
}

function referralContract() {
    return referralContractAddress
}

function sub_833fa77d(?) {
    require calldata.size - 4 >= 32
    return bool(stor20[arg1])
}

function sub_840e0b63(?) {
    return sub_840e0b63
}

function HOUSE_EDGE() {
    return HOUSE_EDGE
}

function sub_8de942a9(?) {
    return sub_8de942a9
}

function sub_a0fca166(?) {
    return sub_a0fca166
}

function sub_d8a62bdf(?) {
    return sub_d8a62bdf
}

function sub_da3d56da(?) {
    return commitments.length
}

function totalWinAmountOfGame() {
    return totalWinAmountOfGame
}

function _fallback() payable {
    revert
}

function sub_cff2037c(?) {
    if stor1 != msg.sender:
        revert with 0, 'Invalid sender'
    address(operatorAddress) = stor1
    stor1 = 0
}

function totalNumberOfBets(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return bets.length
    return sub_6fcc5628[address(arg1)]
}

function changeOperator(address arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    stor1 = arg1
}

function addCroupier(address arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    stor20[address(arg1)] = 1
}

function removeCroupier(address arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    stor20[address(arg1)] = 0
}

function setReferral(address arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    referralContractAddress = arg1
}

function setLiquidityAdder(address arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    liquidityAdderAddress = arg1
}

function sub_c80fa68c(?) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    require sub_17142f9f <= 1000
    sub_17142f9f = arg1
}

function setHouseEdge(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    require arg1 >= 5
    require arg1 <= 100
    HOUSE_EDGE = arg1
}

function sub_8c288b46(?) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    require arg1 >= 5 * 10^16
    require arg1 <= 10 * 10^18
    sub_418de3f6 = arg1
}

function setReferralReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    require arg1 >= 10
    require arg1 <= 50
    sub_40f31801 = arg1
}

function forceStopGame(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    if arg1 != 1:
        revert with 0, 'Enter confirm code'
    stor4 = 1
}

function setMinBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    require arg1 >= 5 * 10^16
    require arg1 <= 10 * 10^18
    sub_11fffbdd = arg1
}

function sub_a6ff26af(?) {
    require calldata.size - 4 >= 32
    if not sub_6fcc5628[address(arg1)]:
        return 0
    require sub_6fcc5628[address(arg1)] - 1 < sub_6fcc5628[address(arg1)]
    return sub_6fcc5628[address(arg1)][sub_6fcc5628[address(arg1)]]
}

function commit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor20[msg.sender]:
        revert with 0, 'not croupier'
    require arg1
    require arg1 != 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    commitments.length++
    commitments[commitments.length] = arg1
}

function sub_1e8140db(?) {
    require calldata.size - 4 >= 32
    if arg1 > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_8de942a9 > eth.balance(this.address) - arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    return (eth.balance(this.address) - arg1 - sub_8de942a9)
}

function withdrawAllBalance() {
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    if not stor4:
        revert with 0, 'not stopped'
    call address(operatorAddress) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    if sub_a0fca166 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if sub_a0fca166 + arg1 > eth.balance(this.address):
        revert with 0, 'over available balance'
    call address(operatorAddress) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa35a368(?) {
    if sub_00f308d2 > eth.balance(this.address) / 2:
        uint255(stor14.field_0) = eth.balance(this.address) / 2
        bool(stor14.field_255) = 0
    require ext_code.size(liquidityAdderAddress)
    call liquidityAdderAddress.earn() with:
       value sub_00f308d2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_00f308d2 + sub_840e0b63 < sub_840e0b63:
        revert with 0, 'SafeMath: addition overflow'
    sub_840e0b63 += sub_00f308d2
    sub_00f308d2 = 0
}

function emergencyToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_43b8a200(?) {
    require calldata.size - 4 >= 32
    if arg1 > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_8de942a9 > eth.balance(this.address) - arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) - arg1 - sub_8de942a9 >= 10000 * 10^18:
        if sub_17142f9f < 10:
            return 500 * 10^18
        if 500 * 10^18 * sub_17142f9f / 500 * 10^18 != sub_17142f9f:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (500 * 10^18 * sub_17142f9f / 10)
    if eth.balance(this.address) - arg1 - sub_8de942a9 >= 5000 * 10^18:
        if sub_17142f9f < 10:
            return 200 * 10^18
        if 200 * 10^18 * sub_17142f9f / 200 * 10^18 != sub_17142f9f:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (200 * 10^18 * sub_17142f9f / 10)
    if eth.balance(this.address) - arg1 - sub_8de942a9 >= 2000 * 10^18:
        if sub_17142f9f < 10:
            return 100 * 10^18
        if 100 * 10^18 * sub_17142f9f / 100 * 10^18 != sub_17142f9f:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (100 * 10^18 * sub_17142f9f / 10)
    if eth.balance(this.address) - arg1 - sub_8de942a9 >= 1000 * 10^18:
        if sub_17142f9f < 10:
            return 50 * 10^18
        if 50 * 10^18 * sub_17142f9f / 50 * 10^18 != sub_17142f9f:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (50 * 10^18 * sub_17142f9f / 10)
    if eth.balance(this.address) - arg1 - sub_8de942a9 >= 500 * 10^18:
        if sub_17142f9f < 10:
            return 20 * 10^18
        if 20 * 10^18 * sub_17142f9f / 20 * 10^18 != sub_17142f9f:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (20 * 10^18 * sub_17142f9f / 10)
    if eth.balance(this.address) - arg1 - sub_8de942a9 < 200 * 10^18:
        if sub_17142f9f < 10:
            return 5 * 10^18
        if 5 * 10^18 * sub_17142f9f / 5 * 10^18 != sub_17142f9f:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return (5 * 10^18 * sub_17142f9f / 10)
    if sub_17142f9f < 10:
        return 10 * 10^18
    if 10 * 10^18 * sub_17142f9f / 10 * 10^18 != sub_17142f9f:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    return (10 * 10^18 * sub_17142f9f / 10)
}

function refundBet(address arg1) {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0, 'only operator can do this action'
    if not sub_6fcc5628[address(arg1)]:
        require 0 < bets.length
        if uint8(bets.field_2048):
            revert with 0, 'bet is finished'
        if address(bets.field_1024) != arg1:
            revert with 0, 'add is not player'
        if block.number - uint256(bets.field_1280) <= 10000:
            revert with 0, 'refund too early'
        if uint8(bets.field_512):
            if not uint256(bets.field_768):
                if not -uint256(bets.field_256) + 99:
                    revert with 0, 'SafeMath: division by zero'
                call arg1 with:
                   value uint256(bets.field_768) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 / -uint256(bets.field_256) + 99 > sub_a0fca166:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a0fca166 -= 0 / -uint256(bets.field_256) + 99
            else:
                if (1000 * uint256(bets.field_768)) - (HOUSE_EDGE * uint256(bets.field_768)) / uint256(bets.field_768) != -HOUSE_EDGE + 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not -uint256(bets.field_256) + 99:
                    revert with 0, 'SafeMath: division by zero'
                call arg1 with:
                   value uint256(bets.field_768) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (1000 * uint256(bets.field_768)) - (HOUSE_EDGE * uint256(bets.field_768)) / 10 / -uint256(bets.field_256) + 99 > sub_a0fca166:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a0fca166 -= (1000 * uint256(bets.field_768)) - (HOUSE_EDGE * uint256(bets.field_768)) / 10 / -uint256(bets.field_256) + 99
        else:
            if not uint256(bets.field_768):
                if not uint256(bets.field_256):
                    revert with 0, 'SafeMath: division by zero'
                call arg1 with:
                   value uint256(bets.field_768) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 / uint256(bets.field_256) > sub_a0fca166:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a0fca166 -= 0 / uint256(bets.field_256)
            else:
                if (1000 * uint256(bets.field_768)) - (HOUSE_EDGE * uint256(bets.field_768)) / uint256(bets.field_768) != -HOUSE_EDGE + 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not uint256(bets.field_256):
                    revert with 0, 'SafeMath: division by zero'
                call arg1 with:
                   value uint256(bets.field_768) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (1000 * uint256(bets.field_768)) - (HOUSE_EDGE * uint256(bets.field_768)) / 10 / uint256(bets.field_256) > sub_a0fca166:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a0fca166 -= (1000 * uint256(bets.field_768)) - (HOUSE_EDGE * uint256(bets.field_768)) / 10 / uint256(bets.field_256)
        if uint256(bets.field_768) > sub_8de942a9:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_8de942a9 -= uint256(bets.field_768)
        uint8(bets.field_2048) = 1
        uint256(bets.field_768) = 0
    else:
        require sub_6fcc5628[address(arg1)] - 1 < sub_6fcc5628[address(arg1)]
        require sub_6fcc5628[address(arg1)][sub_6fcc5628[address(arg1)]] < bets.length
        if bets[stor18[address(arg1)][stor18[address(arg1)]]].field_2048:
            revert with 0, 'bet is finished'
        if bets[stor18[address(arg1)][stor18[address(arg1)]]].field_1024 != arg1:
            revert with 0, 'add is not player'
        if block.number - bets[stor18[address(arg1)][stor18[address(arg1)]]].field_1280 <= 10000:
            revert with 0, 'refund too early'
        if bets[stor18[address(arg1)][stor18[address(arg1)]]].field_512:
            if not bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768:
                if not -bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256 + 99:
                    revert with 0, 'SafeMath: division by zero'
                call arg1 with:
                   value bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 / -bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256 + 99 > sub_a0fca166:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a0fca166 -= 0 / -bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256 + 99
            else:
                if (1000 * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) - (HOUSE_EDGE * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) / bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768 != -HOUSE_EDGE + 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not -bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256 + 99:
                    revert with 0, 'SafeMath: division by zero'
                call arg1 with:
                   value bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (1000 * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) - (HOUSE_EDGE * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) / 10 / -bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256 + 99 > sub_a0fca166:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a0fca166 -= (1000 * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) - (HOUSE_EDGE * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) / 10 / -bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256 + 99
        else:
            if not bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768:
                if not bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256:
                    revert with 0, 'SafeMath: division by zero'
                call arg1 with:
                   value bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 / bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256 > sub_a0fca166:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a0fca166 -= 0 / bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256
            else:
                if (1000 * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) - (HOUSE_EDGE * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) / bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768 != -HOUSE_EDGE + 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256:
                    revert with 0, 'SafeMath: division by zero'
                call arg1 with:
                   value bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (1000 * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) - (HOUSE_EDGE * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) / 10 / bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256 > sub_a0fca166:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_a0fca166 -= (1000 * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) - (HOUSE_EDGE * bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768) / 10 / bets[stor18[address(arg1)][stor18[address(arg1)]]].field_256
        if bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768 > sub_8de942a9:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_8de942a9 -= bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768
        bets[stor18[address(arg1)][stor18[address(arg1)]]].field_2048 = 1
        bets[stor18[address(arg1)][stor18[address(arg1)]]].field_768 = 0
}

function sub_2857b4fb(?) {
    require calldata.size - 4 >= 96
    if arg3 > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_8de942a9 > eth.balance(this.address) - arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2:
        if eth.balance(this.address) - arg3 - sub_8de942a9 >= 10000 * 10^18:
            if sub_17142f9f < 10:
                if (-500 * 10^18 * arg1) + (1375 * 10^16 * 3600) / 500 * 10^18 != -arg1 + 99:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if (-500 * 10^18 * arg1) + (1375 * 10^16 * 3600) / 100 >= sub_11fffbdd:
                    return sub_11fffbdd, (-500 * 10^18 * arg1) + (1375 * 10^16 * 3600) / 100
            else:
                if 500 * 10^18 * sub_17142f9f / 500 * 10^18 != sub_17142f9f:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 500 * 10^18 * sub_17142f9f / 10:
                    if 0 >= sub_11fffbdd:
                        return sub_11fffbdd, 0
                else:
                    if (99 * 500 * 10^18 * sub_17142f9f / 10) - (arg1 * 500 * 10^18 * sub_17142f9f / 10) / 500 * 10^18 * sub_17142f9f / 10 != -arg1 + 99:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if (99 * 500 * 10^18 * sub_17142f9f / 10) - (arg1 * 500 * 10^18 * sub_17142f9f / 10) / 100 >= sub_11fffbdd:
                        return sub_11fffbdd, (99 * 500 * 10^18 * sub_17142f9f / 10) - (arg1 * 500 * 10^18 * sub_17142f9f / 10) / 100
        else:
            if eth.balance(this.address) - arg3 - sub_8de942a9 >= 5000 * 10^18:
                if sub_17142f9f < 10:
                    if (-200 * 10^18 * arg1) + (55 * 10^17 * 3600) / 200 * 10^18 != -arg1 + 99:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (-200 * 10^18 * arg1) + (55 * 10^17 * 3600) / 100 >= sub_11fffbdd:
                        return sub_11fffbdd, (-200 * 10^18 * arg1) + (55 * 10^17 * 3600) / 100
                else:
                    if 200 * 10^18 * sub_17142f9f / 200 * 10^18 != sub_17142f9f:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not 200 * 10^18 * sub_17142f9f / 10:
                        if 0 >= sub_11fffbdd:
                            return sub_11fffbdd, 0
                    else:
                        if (99 * 200 * 10^18 * sub_17142f9f / 10) - (arg1 * 200 * 10^18 * sub_17142f9f / 10) / 200 * 10^18 * sub_17142f9f / 10 != -arg1 + 99:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if (99 * 200 * 10^18 * sub_17142f9f / 10) - (arg1 * 200 * 10^18 * sub_17142f9f / 10) / 100 >= sub_11fffbdd:
                            return sub_11fffbdd, (99 * 200 * 10^18 * sub_17142f9f / 10) - (arg1 * 200 * 10^18 * sub_17142f9f / 10) / 100
            else:
                if eth.balance(this.address) - arg3 - sub_8de942a9 >= 2000 * 10^18:
                    if sub_17142f9f < 10:
                        if (-100 * 10^18 * arg1) + (275 * 10^16 * 3600) / 100 * 10^18 != -arg1 + 99:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (-100 * 10^18 * arg1) + (275 * 10^16 * 3600) / 100 >= sub_11fffbdd:
                            return sub_11fffbdd, (-100 * 10^18 * arg1) + (275 * 10^16 * 3600) / 100
                    else:
                        if 100 * 10^18 * sub_17142f9f / 100 * 10^18 != sub_17142f9f:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not 100 * 10^18 * sub_17142f9f / 10:
                            if 0 >= sub_11fffbdd:
                                return sub_11fffbdd, 0
                        else:
                            if (99 * 100 * 10^18 * sub_17142f9f / 10) - (arg1 * 100 * 10^18 * sub_17142f9f / 10) / 100 * 10^18 * sub_17142f9f / 10 != -arg1 + 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if (99 * 100 * 10^18 * sub_17142f9f / 10) - (arg1 * 100 * 10^18 * sub_17142f9f / 10) / 100 >= sub_11fffbdd:
                                return sub_11fffbdd, (99 * 100 * 10^18 * sub_17142f9f / 10) - (arg1 * 100 * 10^18 * sub_17142f9f / 10) / 100
                else:
                    if eth.balance(this.address) - arg3 - sub_8de942a9 >= 1000 * 10^18:
                        if sub_17142f9f < 10:
                            if (-50 * 10^18 * arg1) + (1375 * 10^15 * 3600) / 50 * 10^18 != -arg1 + 99:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if (-50 * 10^18 * arg1) + (1375 * 10^15 * 3600) / 100 >= sub_11fffbdd:
                                return sub_11fffbdd, (-50 * 10^18 * arg1) + (1375 * 10^15 * 3600) / 100
                        else:
                            if 50 * 10^18 * sub_17142f9f / 50 * 10^18 != sub_17142f9f:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not 50 * 10^18 * sub_17142f9f / 10:
                                if 0 >= sub_11fffbdd:
                                    return sub_11fffbdd, 0
                            else:
                                if (99 * 50 * 10^18 * sub_17142f9f / 10) - (arg1 * 50 * 10^18 * sub_17142f9f / 10) / 50 * 10^18 * sub_17142f9f / 10 != -arg1 + 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if (99 * 50 * 10^18 * sub_17142f9f / 10) - (arg1 * 50 * 10^18 * sub_17142f9f / 10) / 100 >= sub_11fffbdd:
                                    return sub_11fffbdd, (99 * 50 * 10^18 * sub_17142f9f / 10) - (arg1 * 50 * 10^18 * sub_17142f9f / 10) / 100
                    else:
                        if eth.balance(this.address) - arg3 - sub_8de942a9 >= 500 * 10^18:
                            if sub_17142f9f < 10:
                                if (-20 * 10^18 * arg1) + (55 * 10^16 * 3600) / 20 * 10^18 != -arg1 + 99:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if (-20 * 10^18 * arg1) + (55 * 10^16 * 3600) / 100 >= sub_11fffbdd:
                                    return sub_11fffbdd, (-20 * 10^18 * arg1) + (55 * 10^16 * 3600) / 100
                            else:
                                if 20 * 10^18 * sub_17142f9f / 20 * 10^18 != sub_17142f9f:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 20 * 10^18 * sub_17142f9f / 10:
                                    if 0 >= sub_11fffbdd:
                                        return sub_11fffbdd, 0
                                else:
                                    if (99 * 20 * 10^18 * sub_17142f9f / 10) - (arg1 * 20 * 10^18 * sub_17142f9f / 10) / 20 * 10^18 * sub_17142f9f / 10 != -arg1 + 99:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if (99 * 20 * 10^18 * sub_17142f9f / 10) - (arg1 * 20 * 10^18 * sub_17142f9f / 10) / 100 >= sub_11fffbdd:
                                        return sub_11fffbdd, (99 * 20 * 10^18 * sub_17142f9f / 10) - (arg1 * 20 * 10^18 * sub_17142f9f / 10) / 100
                        else:
                            if eth.balance(this.address) - arg3 - sub_8de942a9 < 200 * 10^18:
                                if sub_17142f9f < 10:
                                    if (-5 * 10^18 * arg1) + (1375 * 10^14 * 3600) / 5 * 10^18 != -arg1 + 99:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if (-5 * 10^18 * arg1) + (1375 * 10^14 * 3600) / 100 >= sub_11fffbdd:
                                        return sub_11fffbdd, (-5 * 10^18 * arg1) + (1375 * 10^14 * 3600) / 100
                                else:
                                    if 5 * 10^18 * sub_17142f9f / 5 * 10^18 != sub_17142f9f:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not 5 * 10^18 * sub_17142f9f / 10:
                                        if 0 >= sub_11fffbdd:
                                            return sub_11fffbdd, 0
                                    else:
                                        if (99 * 5 * 10^18 * sub_17142f9f / 10) - (arg1 * 5 * 10^18 * sub_17142f9f / 10) / 5 * 10^18 * sub_17142f9f / 10 != -arg1 + 99:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if (99 * 5 * 10^18 * sub_17142f9f / 10) - (arg1 * 5 * 10^18 * sub_17142f9f / 10) / 100 >= sub_11fffbdd:
                                            return sub_11fffbdd, (99 * 5 * 10^18 * sub_17142f9f / 10) - (arg1 * 5 * 10^18 * sub_17142f9f / 10) / 100
                            else:
                                if sub_17142f9f < 10:
                                    if (-10 * 10^18 * arg1) + (275 * 10^15 * 3600) / 10 * 10^18 != -arg1 + 99:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if (-10 * 10^18 * arg1) + (275 * 10^15 * 3600) / 100 >= sub_11fffbdd:
                                        return sub_11fffbdd, (-10 * 10^18 * arg1) + (275 * 10^15 * 3600) / 100
                                else:
                                    if 10 * 10^18 * sub_17142f9f / 10 * 10^18 != sub_17142f9f:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not 10 * 10^18 * sub_17142f9f / 10:
                                        if 0 >= sub_11fffbdd:
                                            return sub_11fffbdd, 0
                                    else:
                                        if (99 * 10 * 10^18 * sub_17142f9f / 10) - (arg1 * 10 * 10^18 * sub_17142f9f / 10) / 10 * 10^18 * sub_17142f9f / 10 != -arg1 + 99:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if (99 * 10 * 10^18 * sub_17142f9f / 10) - (arg1 * 10 * 10^18 * sub_17142f9f / 10) / 100 >= sub_11fffbdd:
                                            return sub_11fffbdd, (99 * 10 * 10^18 * sub_17142f9f / 10) - (arg1 * 10 * 10^18 * sub_17142f9f / 10) / 100
    else:
        if eth.balance(this.address) - arg3 - sub_8de942a9 >= 10000 * 10^18:
            if sub_17142f9f < 10:
                if 500 * 10^18 * arg1 / 500 * 10^18 != arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if 500 * 10^18 * arg1 / 100 >= sub_11fffbdd:
                    return sub_11fffbdd, 500 * 10^18 * arg1 / 100
            else:
                if 500 * 10^18 * sub_17142f9f / 500 * 10^18 != sub_17142f9f:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not 500 * 10^18 * sub_17142f9f / 10:
                    if 0 >= sub_11fffbdd:
                        return sub_11fffbdd, 0
                else:
                    if arg1 * 500 * 10^18 * sub_17142f9f / 10 / 500 * 10^18 * sub_17142f9f / 10 != arg1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if arg1 * 500 * 10^18 * sub_17142f9f / 10 / 100 >= sub_11fffbdd:
                        return sub_11fffbdd, arg1 * 500 * 10^18 * sub_17142f9f / 10 / 100
        else:
            if eth.balance(this.address) - arg3 - sub_8de942a9 >= 5000 * 10^18:
                if sub_17142f9f < 10:
                    if 200 * 10^18 * arg1 / 200 * 10^18 != arg1:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if 200 * 10^18 * arg1 / 100 >= sub_11fffbdd:
                        return sub_11fffbdd, 200 * 10^18 * arg1 / 100
                else:
                    if 200 * 10^18 * sub_17142f9f / 200 * 10^18 != sub_17142f9f:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not 200 * 10^18 * sub_17142f9f / 10:
                        if 0 >= sub_11fffbdd:
                            return sub_11fffbdd, 0
                    else:
                        if arg1 * 200 * 10^18 * sub_17142f9f / 10 / 200 * 10^18 * sub_17142f9f / 10 != arg1:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if arg1 * 200 * 10^18 * sub_17142f9f / 10 / 100 >= sub_11fffbdd:
                            return sub_11fffbdd, arg1 * 200 * 10^18 * sub_17142f9f / 10 / 100
            else:
                if eth.balance(this.address) - arg3 - sub_8de942a9 >= 2000 * 10^18:
                    if sub_17142f9f < 10:
                        if 100 * 10^18 * arg1 / 100 * 10^18 != arg1:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 100 * 10^18 * arg1 / 100 >= sub_11fffbdd:
                            return sub_11fffbdd, 100 * 10^18 * arg1 / 100
                    else:
                        if 100 * 10^18 * sub_17142f9f / 100 * 10^18 != sub_17142f9f:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not 100 * 10^18 * sub_17142f9f / 10:
                            if 0 >= sub_11fffbdd:
                                return sub_11fffbdd, 0
                        else:
                            if arg1 * 100 * 10^18 * sub_17142f9f / 10 / 100 * 10^18 * sub_17142f9f / 10 != arg1:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if arg1 * 100 * 10^18 * sub_17142f9f / 10 / 100 >= sub_11fffbdd:
                                return sub_11fffbdd, arg1 * 100 * 10^18 * sub_17142f9f / 10 / 100
                else:
                    if eth.balance(this.address) - arg3 - sub_8de942a9 >= 1000 * 10^18:
                        if sub_17142f9f < 10:
                            if 50 * 10^18 * arg1 / 50 * 10^18 != arg1:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if 50 * 10^18 * arg1 / 100 >= sub_11fffbdd:
                                return sub_11fffbdd, 50 * 10^18 * arg1 / 100
                        else:
                            if 50 * 10^18 * sub_17142f9f / 50 * 10^18 != sub_17142f9f:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not 50 * 10^18 * sub_17142f9f / 10:
                                if 0 >= sub_11fffbdd:
                                    return sub_11fffbdd, 0
                            else:
                                if arg1 * 50 * 10^18 * sub_17142f9f / 10 / 50 * 10^18 * sub_17142f9f / 10 != arg1:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if arg1 * 50 * 10^18 * sub_17142f9f / 10 / 100 >= sub_11fffbdd:
                                    return sub_11fffbdd, arg1 * 50 * 10^18 * sub_17142f9f / 10 / 100
                    else:
                        if eth.balance(this.address) - arg3 - sub_8de942a9 >= 500 * 10^18:
                            if sub_17142f9f < 10:
                                if 20 * 10^18 * arg1 / 20 * 10^18 != arg1:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if 20 * 10^18 * arg1 / 100 >= sub_11fffbdd:
                                    return sub_11fffbdd, 20 * 10^18 * arg1 / 100
                            else:
                                if 20 * 10^18 * sub_17142f9f / 20 * 10^18 != sub_17142f9f:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 20 * 10^18 * sub_17142f9f / 10:
                                    if 0 >= sub_11fffbdd:
                                        return sub_11fffbdd, 0
                                else:
                                    if arg1 * 20 * 10^18 * sub_17142f9f / 10 / 20 * 10^18 * sub_17142f9f / 10 != arg1:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if arg1 * 20 * 10^18 * sub_17142f9f / 10 / 100 >= sub_11fffbdd:
                                        return sub_11fffbdd, arg1 * 20 * 10^18 * sub_17142f9f / 10 / 100
                        else:
                            if eth.balance(this.address) - arg3 - sub_8de942a9 < 200 * 10^18:
                                if sub_17142f9f < 10:
                                    if 5 * 10^18 * arg1 / 5 * 10^18 != arg1:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if 5 * 10^18 * arg1 / 100 >= sub_11fffbdd:
                                        return sub_11fffbdd, 5 * 10^18 * arg1 / 100
                                else:
                                    if 5 * 10^18 * sub_17142f9f / 5 * 10^18 != sub_17142f9f:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not 5 * 10^18 * sub_17142f9f / 10:
                                        if 0 >= sub_11fffbdd:
                                            return sub_11fffbdd, 0
                                    else:
                                        if arg1 * 5 * 10^18 * sub_17142f9f / 10 / 5 * 10^18 * sub_17142f9f / 10 != arg1:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if arg1 * 5 * 10^18 * sub_17142f9f / 10 / 100 >= sub_11fffbdd:
                                            return sub_11fffbdd, arg1 * 5 * 10^18 * sub_17142f9f / 10 / 100
                            else:
                                if sub_17142f9f < 10:
                                    if 10 * 10^18 * arg1 / 10 * 10^18 != arg1:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if 10 * 10^18 * arg1 / 100 >= sub_11fffbdd:
                                        return sub_11fffbdd, 10 * 10^18 * arg1 / 100
                                else:
                                    if 10 * 10^18 * sub_17142f9f / 10 * 10^18 != sub_17142f9f:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not 10 * 10^18 * sub_17142f9f / 10:
                                        if 0 >= sub_11fffbdd:
                                            return sub_11fffbdd, 0
                                    else:
                                        if arg1 * 10 * 10^18 * sub_17142f9f / 10 / 10 * 10^18 * sub_17142f9f / 10 != arg1:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if arg1 * 10 * 10^18 * sub_17142f9f / 10 / 100 >= sub_11fffbdd:
                                            return sub_11fffbdd, arg1 * 10 * 10^18 * sub_17142f9f / 10 / 100
    return sub_11fffbdd, sub_11fffbdd
}



}
