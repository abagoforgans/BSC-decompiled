contract main {




// =====================  Runtime code  =====================


const totalFund = eth.balance(this.address)

const TOTAL_RATE = 10000


uint32 stor0;
address owner;
uint256 stor0;
uint256 stor1;
address referralAddress;
address randomGeneratorAddress;
uint256 payoutRate;
uint256 commissionRate;
uint256 minBetAmount;
uint256 maxBetAmount;
array of struct bets;
mapping of uint256 sub_05b25980;
mapping of uint256 sub_fa397d62;
uint256 houseProfit;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of struct stor110349606679412691172957834289542550319383271247755660854362242977991410020071;

function sub_05b25980(?) {
    require calldata.size - 4 >= 32
    return sub_05b25980[arg1]
}

function referral() {
    return referralAddress
}

function bets(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < bets.length
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bets[arg1].field_512,
           bets[arg1].field_768,
           bool(bets[arg1].field_1024),
           bool(bets[arg1].field_1032),
           bool(bets[arg1].field_1040)
}

function payoutRate() {
    return payoutRate
}

function commissionRate() {
    return commissionRate
}

function houseProfit() {
    return houseProfit
}

function owner() {
    return address(owner)
}

function betsLength() {
    return bets.length
}

function maxBetAmount() {
    return maxBetAmount
}

function randomGenerator() {
    return randomGeneratorAddress
}

function sub_fa397d62(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_fa397d62[arg1]
}

function minBetAmount() {
    return minBetAmount
}

function setMinBetAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minBetAmount = arg1
}

function setMaxBetAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxBetAmount = arg1
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function sub_50c8e1fd(?) payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    emit 0xb685c6ac: msg.value, eth.balance(this.address), msg.sender
    stor1 = 1
}

function setReferral(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    referralAddress = arg1
    emit 0x7b57a333: arg1
}

function setRandomGenerator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    randomGeneratorAddress = arg1
    emit 0xcd980f87: arg1
}

function sub_48eaee66(?) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 9000:
        revert with 0, 'Minimum winRate limit'
    if arg1 > 9800:
        revert with 0, 'Minimum winRate limit'
    payoutRate = arg1
}

function setCommissionRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 50:
        revert with 0, 'CommissionRate Range'
    if arg1 > 500:
        revert with 0, 'CommissionRate Range'
    commissionRate = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function withdrawFunds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > eth.balance(this.address):
        revert with 0, 'Withdrawal exceeds limit'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= bets.length:
        revert with 'NH{q', 50
    if bets[arg1].field_512 <= 0:
        revert with 0, 'Bet does not exist'
    if bets[arg1].field_1040:
        revert with 0, 'Bet is settled already'
    if 6 * 3600 > !bets[arg1].field_0:
        revert with 'NH{q', 17
    if block.number <= bets[arg1].field_0 + (6 * 3600):
        revert with 0, 'Wait before requesting refund'
    bets[arg1].field_1040 = 1
    bets[arg1].field_768 = bets[arg1].field_512
    call bets[arg1].field_256 with:
       value bets[arg1].field_512 wei
         gas 23000 wei
    if not ext_call.success:
        revert with 0, 'BNB_TRANSFER_FAILED'
    emit BetRefunded(bets[arg1].field_512, arg1, bets[arg1].field_256);
    stor1 = 1
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
}

function sub_c905db2f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == address(arg2)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'no contract'
    if msg.sender != tx.origin:
        revert with 0, 'no contract'
    if msg.value < minBetAmount:
        revert with 0, 'Bet amount not within range'
    if msg.value > maxBetAmount:
        revert with 0, 'Bet amount not within range'
    if msg.value > eth.balance(this.address):
        revert with 0, 'Insufficient funds'
    if msg.value <= 0:
        call randomGeneratorAddress.getRandomNumber() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not referralAddress:
            call randomGeneratorAddress.getRandomNumber() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if not address(arg2):
                call randomGeneratorAddress.getRandomNumber() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.sender == address(arg2):
                    call randomGeneratorAddress.getRandomNumber() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(referralAddress)
                    call referralAddress.recordReferrer(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call randomGeneratorAddress.getRandomNumber() with:
                         gas gas_remaining wei
    require return_data.size >= 32
    sub_05b25980[ext_call.return_data[0]] = bets.length
    sub_fa397d62[address(msg.sender)] = bets.length
    emit 0xf81e7e50: msg.sender, address(arg2), msg.value, bool(arg1), bets.length
    bets.length++
    bets[bets.length].field_0 = block.number
    storF3F7[stor8.length] = msg.sender
    storF3F7[stor8.length] = msg.value
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length].field_0 = uint8(bool(arg1))
    storF3F7[stor8.length].field_8 = 0
    storF3F7[stor8.length].field_16 = 0
    storF3F7[stor8.length].field_24 = 0
    storF3F7[stor8.length].field_24 = Mask(232, 24, bool(arg1)) >> 24
    stor1 = 1
}

function settleBet(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if randomGeneratorAddress != msg.sender:
        revert with 0, 'Only RandomGenerator'
    if sub_05b25980[arg1] >= bets.length:
        revert with 'NH{q', 50
    if bets[stor9[arg1]].field_512 <= 0:
        revert with 0, 'Bet does not exist'
    if bets[stor9[arg1]].field_1040:
        revert with 0, 'Bet is settled already'
    if not bool(arg2):
        if bets[stor9[arg1]].field_1024:
            if 10000 > !payoutRate:
                revert with 'NH{q', 17
            if bets[stor9[arg1]].field_512 and payoutRate + 10000 > -1 / bets[stor9[arg1]].field_512:
                revert with 'NH{q', 17
            if (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 < bets[stor9[arg1]].field_512:
                revert with 'NH{q', 17
            if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 >= 0 and houseProfit < ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 < 0 and houseProfit > ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            houseProfit = houseProfit - ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + bets[stor9[arg1]].field_512
            call bets[stor9[arg1]].field_256 with:
               value (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 wei
                 gas 23000 wei
            if not ext_call.success:
                revert with 0, 'BNB_TRANSFER_FAILED'
            bets[stor9[arg1]].field_768 = (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000
            bets[stor9[arg1]].field_1032 = 1
            bets[stor9[arg1]].field_1040 = 1
            bets[stor9[arg1]].field_1048 = 0
            emit 0x4019969c: bets[stor9[arg1]].field_512, (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000, bool(0 or bets[stor9[arg1]].field_1024), 1, sub_05b25980[arg1], bets[stor9[arg1]].field_256
        else:
            if houseProfit >= 0 and bets[stor9[arg1]].field_512 > -houseProfit + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            if houseProfit < 0 and bets[stor9[arg1]].field_512 < -houseProfit - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            houseProfit += bets[stor9[arg1]].field_512
            if referralAddress:
                staticcall referralAddress.getReferrer(address arg1) with:
                        gas gas_remaining wei
                       args bets[stor9[arg1]].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if bets[stor9[arg1]].field_512 and commissionRate > -1 / bets[stor9[arg1]].field_512:
                    revert with 'NH{q', 17
                if bets[stor9[arg1]].field_512 * commissionRate / 10000 > 0:
                    if ext_call.return_data[12 len 20]:
                        if bets[stor9[arg1]].field_512 * commissionRate / 10000 >= 0 and houseProfit < (bets[stor9[arg1]].field_512 * commissionRate / 10000) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 'NH{q', 17
                        if bets[stor9[arg1]].field_512 * commissionRate / 10000 < 0 and houseProfit > (bets[stor9[arg1]].field_512 * commissionRate / 10000) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        houseProfit -= bets[stor9[arg1]].field_512 * commissionRate / 10000
                        call referralAddress with:
                           value bets[stor9[arg1]].field_512 * commissionRate / 10000 wei
                             gas 23000 wei
                        if not ext_call.success:
                            revert with 0, 'BNB_TRANSFER_FAILED'
                        require ext_code.size(referralAddress)
                        call referralAddress.0xe77d47e6 with:
                             gas gas_remaining wei
                            args bets[stor9[arg1]].field_256, address(ext_call.return_data[0]), bets[stor9[arg1]].field_512 * commissionRate / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            bets[stor9[arg1]].field_768 = 0
            bets[stor9[arg1]].field_1032 = 1
            bets[stor9[arg1]].field_1040 = 1
            bets[stor9[arg1]].field_1048 = 0
            emit 0x4019969c: bets[stor9[arg1]].field_512, 0, bool(0 or bets[stor9[arg1]].field_1024), 1, sub_05b25980[arg1], bets[stor9[arg1]].field_256
    else:
        if not bets[stor9[arg1]].field_1024:
            if 10000 > !payoutRate:
                revert with 'NH{q', 17
            if bets[stor9[arg1]].field_512 and payoutRate + 10000 > -1 / bets[stor9[arg1]].field_512:
                revert with 'NH{q', 17
            if (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 < bets[stor9[arg1]].field_512:
                revert with 'NH{q', 17
            if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 >= 0 and houseProfit < ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 'NH{q', 17
            if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 < 0 and houseProfit > ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 'NH{q', 17
            houseProfit = houseProfit - ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + bets[stor9[arg1]].field_512
            call bets[stor9[arg1]].field_256 with:
               value (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 wei
                 gas 23000 wei
            if not ext_call.success:
                revert with 0, 'BNB_TRANSFER_FAILED'
            bets[stor9[arg1]].field_768 = (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000
            bets[stor9[arg1]].field_1032 = 0
            bets[stor9[arg1]].field_1040 = 1
            bets[stor9[arg1]].field_1048 = 0
            emit 0x4019969c: bets[stor9[arg1]].field_512, (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000, bool(0 or bets[stor9[arg1]].field_1024), 0, sub_05b25980[arg1], bets[stor9[arg1]].field_256
        else:
            if not bets[stor9[arg1]].field_1024:
                if 10000 > !payoutRate:
                    revert with 'NH{q', 17
                if bets[stor9[arg1]].field_512 and payoutRate + 10000 > -1 / bets[stor9[arg1]].field_512:
                    revert with 'NH{q', 17
                if (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 < bets[stor9[arg1]].field_512:
                    revert with 'NH{q', 17
                if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 >= 0 and houseProfit < ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 < 0 and houseProfit > ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                houseProfit = houseProfit - ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + bets[stor9[arg1]].field_512
                call bets[stor9[arg1]].field_256 with:
                   value (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 wei
                     gas 23000 wei
                if not ext_call.success:
                    revert with 0, 'BNB_TRANSFER_FAILED'
                bets[stor9[arg1]].field_768 = (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000
                bets[stor9[arg1]].field_1032 = 0
                bets[stor9[arg1]].field_1040 = 1
                bets[stor9[arg1]].field_1048 = 0
                emit 0x4019969c: bets[stor9[arg1]].field_512, (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000, bool(0 or bets[stor9[arg1]].field_1024), 0, sub_05b25980[arg1], bets[stor9[arg1]].field_256
            else:
                if houseProfit >= 0 and bets[stor9[arg1]].field_512 > -houseProfit + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 'NH{q', 17
                if houseProfit < 0 and bets[stor9[arg1]].field_512 < -houseProfit - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 'NH{q', 17
                houseProfit += bets[stor9[arg1]].field_512
                if referralAddress:
                    staticcall referralAddress.getReferrer(address arg1) with:
                            gas gas_remaining wei
                           args bets[stor9[arg1]].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if bets[stor9[arg1]].field_512 and commissionRate > -1 / bets[stor9[arg1]].field_512:
                        revert with 'NH{q', 17
                    if bets[stor9[arg1]].field_512 * commissionRate / 10000 > 0:
                        if ext_call.return_data[12 len 20]:
                            if bets[stor9[arg1]].field_512 * commissionRate / 10000 >= 0 and houseProfit < (bets[stor9[arg1]].field_512 * commissionRate / 10000) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if bets[stor9[arg1]].field_512 * commissionRate / 10000 < 0 and houseProfit > (bets[stor9[arg1]].field_512 * commissionRate / 10000) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            houseProfit -= bets[stor9[arg1]].field_512 * commissionRate / 10000
                            call referralAddress with:
                               value bets[stor9[arg1]].field_512 * commissionRate / 10000 wei
                                 gas 23000 wei
                            if not ext_call.success:
                                revert with 0, 'BNB_TRANSFER_FAILED'
                            require ext_code.size(referralAddress)
                            call referralAddress.0xe77d47e6 with:
                                 gas gas_remaining wei
                                args bets[stor9[arg1]].field_256, address(ext_call.return_data[0]), bets[stor9[arg1]].field_512 * commissionRate / 10000
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                bets[stor9[arg1]].field_768 = 0
                bets[stor9[arg1]].field_1032 = 0
                bets[stor9[arg1]].field_1040 = 1
                bets[stor9[arg1]].field_1048 = 0
                emit 0x4019969c: bets[stor9[arg1]].field_512, 0, bool(0 or bets[stor9[arg1]].field_1024), 0, sub_05b25980[arg1], bets[stor9[arg1]].field_256
    stor1 = 1
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x88fedd04(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc905db2f(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9e5914da(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x9e5914da(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        referralAddress = address(arg1)
                        emit 0x7b57a333: address(arg1)
                    else:
                        if unknown_0xb29c299b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return 10000
                        if unknown_0xbbd2e01e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bets.length
                        if unknown_0xc1075329(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            if address(owner) != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if arg2 > eth.balance(this.address):
                                revert with 0, 'Withdrawal exceeds limit'
                            call address(arg1) with:
                               value arg2 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x88fedd04(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return houseProfit
                    if uint32(call.func_hash) >> 224 != unknown_0x89476069(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x8da5cb5b(?????):
                        require not msg.value
                        return address(owner)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[132] = this.address
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 164] = address(owner)
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 128] = 68
                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor0)
                    mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 228] = 32
                    mem[ceil32(return_data.size) + 260] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 360] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                if unknown_0xe1fdb4b4(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xe1fdb4b4(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xfa397d62(?????):
                                if uint32(call.func_hash) >> 224 != unknown_0xfa968eea(?????):
                                require not msg.value
                                return minBetAmount
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return sub_fa397d62[arg1]
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        address(owner) = address(arg1)
                        emit OwnershipTransferred(address(owner), address(arg1));
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if stor1 == 2:
                            revert with 0, 'ReentrancyGuard: reentrant call'
                        stor1 = 2
                        if arg1 >= bets.length:
                            revert with 'NH{q', 50
                        if bets[arg1].field_512 <= 0:
                            revert with 0, 'Bet does not exist'
                        if bets[arg1].field_1040:
                            revert with 0, 'Bet is settled already'
                        if 6 * 3600 > !bets[arg1].field_0:
                            revert with 'NH{q', 17
                        if block.number <= bets[arg1].field_0 + (6 * 3600):
                            revert with 0, 'Wait before requesting refund'
                        bets[arg1].field_1040 = 1
                        bets[arg1].field_768 = bets[arg1].field_512
                        call bets[arg1].field_256 with:
                           value bets[arg1].field_512 wei
                             gas 23000 wei
                        if not ext_call.success:
                            revert with 0, 'BNB_TRANSFER_FAILED'
                        emit BetRefunded(bets[arg1].field_512, arg1, bets[arg1].field_256);
                        stor1 = 1
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xc905db2f(?????):
                        if unknown_0xcab11d5d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return maxBetAmount
                        if uint32(call.func_hash) >> 224 != unknown_0xdcbad90d(?????):
                        require not msg.value
                        return randomGeneratorAddress
                    require calldata.size - 4 >= 64
                    require arg1 == bool(arg1)
                    require arg2 == address(arg2)
                    if stor1 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1 = 2
                    if ext_code.size(msg.sender):
                        revert with 0, 'no contract'
                    if msg.sender != tx.origin:
                        revert with 0, 'no contract'
                    if msg.value < minBetAmount:
                        revert with 0, 'Bet amount not within range'
                    if msg.value > maxBetAmount:
                        revert with 0, 'Bet amount not within range'
                    if msg.value > eth.balance(this.address):
                        revert with 0, 'Insufficient funds'
                    if msg.value <= 0:
                        call randomGeneratorAddress.getRandomNumber() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if not referralAddress:
                            call randomGeneratorAddress.getRandomNumber() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if not address(arg2):
                                call randomGeneratorAddress.getRandomNumber() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if msg.sender == address(arg2):
                                    call randomGeneratorAddress.getRandomNumber() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require ext_code.size(referralAddress)
                                    call referralAddress.recordReferrer(address arg1, address arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call randomGeneratorAddress.getRandomNumber() with:
                                         gas gas_remaining wei
                    require return_data.size >= 32
                    sub_05b25980[ext_call.return_data[0]] = bets.length
                    sub_fa397d62[address(msg.sender)] = bets.length
                    emit 0xf81e7e50: msg.sender, address(arg2), msg.value, bool(arg1), bets.length
                    bets.length++
                    bets[bets.length].field_0 = block.number
                    storF3F7[stor8.length] = msg.sender
                    storF3F7[stor8.length] = msg.value
                    storF3F7[stor8.length] = 0
                    storF3F7[stor8.length].field_0 = uint8(bool(arg1))
                    storF3F7[stor8.length].field_8 = 0
                    storF3F7[stor8.length].field_16 = 0
                    storF3F7[stor8.length].field_24 = 0
                    storF3F7[stor8.length].field_24 = Mask(232, 24, bool(arg1)) >> 24
                    stor1 = 1
        else:
            if unknown_0x48eaee66(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5ea1d6f8(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x48eaee66(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if arg1 < 9000:
                            revert with 0, 'Minimum winRate limit'
                        if arg1 > 9800:
                            revert with 0, 'Minimum winRate limit'
                        payoutRate = arg1
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x4bc19fee(?????):
                            if unknown_0x50c8e1fd(?????) == uint32(call.func_hash) >> 224:
                                if stor1 == 2:
                                    revert with 0, 'ReentrancyGuard: reentrant call'
                                stor1 = 2
                                emit 0xb685c6ac: msg.value, eth.balance(this.address), msg.sender
                                stor1 = 1
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if address(owner) != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            randomGeneratorAddress = address(arg1)
                            emit 0xcd980f87: address(arg1)
                else:
                    if unknown_0x5ea1d6f8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return commissionRate
                    if unknown_0x6c188593(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        minBetAmount = arg1
                    else:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if address(owner) != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            address(owner) = 0
                            emit OwnershipTransferred(address(owner), 0);
                        else:
                            if unknown_0x7cfbc7a5(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                if address(owner) != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                maxBetAmount = arg1
            else:
                if unknown_0x1441a5a9(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x1441a5a9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return referralAddress
                    if uint32(call.func_hash) >> 224 != unknown_0x19fac8fd(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x22af00fa(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x2b4353f2(?????):
                            require not msg.value
                            return payoutRate
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 < bets.length
                        return bets[arg1].field_0, 
                               bets[arg1].field_256,
                               bets[arg1].field_512,
                               bets[arg1].field_768,
                               bool(bets[arg1].field_1024),
                               bool(bets[arg1].field_1032),
                               bool(bets[arg1].field_1040)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 < 50:
                        revert with 0, 'CommissionRate Range'
                    if arg1 > 500:
                        revert with 0, 'CommissionRate Range'
                    commissionRate = arg1
                else:
                    if unknown_0x05b25980(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return sub_05b25980[arg1]
                    if uint32(call.func_hash) >> 224 != settleBet(uint256 arg1, uint256 arg2):
                        if uint32(call.func_hash) >> 224 != unknown_0x100aca47(?????):
                        require not msg.value
                        return eth.balance(this.address)
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if stor1 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1 = 2
                    if randomGeneratorAddress != msg.sender:
                        revert with 0, 'Only RandomGenerator'
                    if sub_05b25980[arg1] >= bets.length:
                        revert with 'NH{q', 50
                    if bets[stor9[arg1]].field_512 <= 0:
                        revert with 0, 'Bet does not exist'
                    if bets[stor9[arg1]].field_1040:
                        revert with 0, 'Bet is settled already'
                    if not arg2:
                        if bets[stor9[arg1]].field_1024:
                            if 10000 > !payoutRate:
                                revert with 'NH{q', 17
                            if bets[stor9[arg1]].field_512 and payoutRate + 10000 > -1 / bets[stor9[arg1]].field_512:
                                revert with 'NH{q', 17
                            if (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 < bets[stor9[arg1]].field_512:
                                revert with 'NH{q', 17
                            if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 >= 0 and houseProfit < ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 < 0 and houseProfit > ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            houseProfit = houseProfit - ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + bets[stor9[arg1]].field_512
                            call bets[stor9[arg1]].field_256 with:
                               value (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 wei
                                 gas 23000 wei
                            if not ext_call.success:
                                revert with 0, 'BNB_TRANSFER_FAILED'
                            bets[stor9[arg1]].field_768 = (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000
                            bets[stor9[arg1]].field_1032 = 1
                            bets[stor9[arg1]].field_1040 = 1
                            bets[stor9[arg1]].field_1048 = 0
                            emit 0x4019969c: bets[stor9[arg1]].field_512, (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000, bool(0 or bets[stor9[arg1]].field_1024), 1, sub_05b25980[arg1], bets[stor9[arg1]].field_256
                        else:
                            if houseProfit >= 0 and bets[stor9[arg1]].field_512 > -houseProfit + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if houseProfit < 0 and bets[stor9[arg1]].field_512 < -houseProfit - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            houseProfit += bets[stor9[arg1]].field_512
                            if referralAddress:
                                staticcall referralAddress.getReferrer(address arg1) with:
                                        gas gas_remaining wei
                                       args bets[stor9[arg1]].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if bets[stor9[arg1]].field_512 and commissionRate > -1 / bets[stor9[arg1]].field_512:
                                    revert with 'NH{q', 17
                                if bets[stor9[arg1]].field_512 * commissionRate / 10000 > 0:
                                    if ext_call.return_data[12 len 20]:
                                        if bets[stor9[arg1]].field_512 * commissionRate / 10000 >= 0 and houseProfit < (bets[stor9[arg1]].field_512 * commissionRate / 10000) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                            revert with 'NH{q', 17
                                        if bets[stor9[arg1]].field_512 * commissionRate / 10000 < 0 and houseProfit > (bets[stor9[arg1]].field_512 * commissionRate / 10000) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        houseProfit -= bets[stor9[arg1]].field_512 * commissionRate / 10000
                                        call referralAddress with:
                                           value bets[stor9[arg1]].field_512 * commissionRate / 10000 wei
                                             gas 23000 wei
                                        if not ext_call.success:
                                            revert with 0, 'BNB_TRANSFER_FAILED'
                                        require ext_code.size(referralAddress)
                                        call referralAddress.0xe77d47e6 with:
                                             gas gas_remaining wei
                                            args bets[stor9[arg1]].field_256, address(ext_call.return_data[0]), bets[stor9[arg1]].field_512 * commissionRate / 10000
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            bets[stor9[arg1]].field_768 = 0
                            bets[stor9[arg1]].field_1032 = 1
                            bets[stor9[arg1]].field_1040 = 1
                            bets[stor9[arg1]].field_1048 = 0
                            emit 0x4019969c: bets[stor9[arg1]].field_512, 0, bool(0 or bets[stor9[arg1]].field_1024), 1, sub_05b25980[arg1], bets[stor9[arg1]].field_256
                    else:
                        if not bets[stor9[arg1]].field_1024:
                            if 10000 > !payoutRate:
                                revert with 'NH{q', 17
                            if bets[stor9[arg1]].field_512 and payoutRate + 10000 > -1 / bets[stor9[arg1]].field_512:
                                revert with 'NH{q', 17
                            if (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 < bets[stor9[arg1]].field_512:
                                revert with 'NH{q', 17
                            if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 >= 0 and houseProfit < ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 'NH{q', 17
                            if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 < 0 and houseProfit > ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            houseProfit = houseProfit - ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + bets[stor9[arg1]].field_512
                            call bets[stor9[arg1]].field_256 with:
                               value (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 wei
                                 gas 23000 wei
                            if not ext_call.success:
                                revert with 0, 'BNB_TRANSFER_FAILED'
                            bets[stor9[arg1]].field_768 = (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000
                            bets[stor9[arg1]].field_1032 = 0
                            bets[stor9[arg1]].field_1040 = 1
                            bets[stor9[arg1]].field_1048 = 0
                            emit 0x4019969c: bets[stor9[arg1]].field_512, (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000, bool(0 or bets[stor9[arg1]].field_1024), 0, sub_05b25980[arg1], bets[stor9[arg1]].field_256
                        else:
                            if not bets[stor9[arg1]].field_1024:
                                if 10000 > !payoutRate:
                                    revert with 'NH{q', 17
                                if bets[stor9[arg1]].field_512 and payoutRate + 10000 > -1 / bets[stor9[arg1]].field_512:
                                    revert with 'NH{q', 17
                                if (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 < bets[stor9[arg1]].field_512:
                                    revert with 'NH{q', 17
                                if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 >= 0 and houseProfit < ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 'NH{q', 17
                                if ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) - bets[stor9[arg1]].field_512 < 0 and houseProfit > ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + -bets[stor9[arg1]].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                houseProfit = houseProfit - ((10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000) + bets[stor9[arg1]].field_512
                                call bets[stor9[arg1]].field_256 with:
                                   value (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000 wei
                                     gas 23000 wei
                                if not ext_call.success:
                                    revert with 0, 'BNB_TRANSFER_FAILED'
                                bets[stor9[arg1]].field_768 = (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000
                                bets[stor9[arg1]].field_1032 = 0
                                bets[stor9[arg1]].field_1040 = 1
                                bets[stor9[arg1]].field_1048 = 0
                                emit 0x4019969c: bets[stor9[arg1]].field_512, (10000 * bets[stor9[arg1]].field_512) + (payoutRate * bets[stor9[arg1]].field_512) / 10000, bool(0 or bets[stor9[arg1]].field_1024), 0, sub_05b25980[arg1], bets[stor9[arg1]].field_256
                            else:
                                if houseProfit >= 0 and bets[stor9[arg1]].field_512 > -houseProfit + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if houseProfit < 0 and bets[stor9[arg1]].field_512 < -houseProfit - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                    revert with 'NH{q', 17
                                houseProfit += bets[stor9[arg1]].field_512
                                if referralAddress:
                                    staticcall referralAddress.getReferrer(address arg1) with:
                                            gas gas_remaining wei
                                           args bets[stor9[arg1]].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if bets[stor9[arg1]].field_512 and commissionRate > -1 / bets[stor9[arg1]].field_512:
                                        revert with 'NH{q', 17
                                    if bets[stor9[arg1]].field_512 * commissionRate / 10000 > 0:
                                        if ext_call.return_data[12 len 20]:
                                            if bets[stor9[arg1]].field_512 * commissionRate / 10000 >= 0 and houseProfit < (bets[stor9[arg1]].field_512 * commissionRate / 10000) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                                                revert with 'NH{q', 17
                                            if bets[stor9[arg1]].field_512 * commissionRate / 10000 < 0 and houseProfit > (bets[stor9[arg1]].field_512 * commissionRate / 10000) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                                revert with 'NH{q', 17
                                            houseProfit -= bets[stor9[arg1]].field_512 * commissionRate / 10000
                                            call referralAddress with:
                                               value bets[stor9[arg1]].field_512 * commissionRate / 10000 wei
                                                 gas 23000 wei
                                            if not ext_call.success:
                                                revert with 0, 'BNB_TRANSFER_FAILED'
                                            require ext_code.size(referralAddress)
                                            call referralAddress.0xe77d47e6 with:
                                                 gas gas_remaining wei
                                                args bets[stor9[arg1]].field_256, address(ext_call.return_data[0]), bets[stor9[arg1]].field_512 * commissionRate / 10000
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                bets[stor9[arg1]].field_768 = 0
                                bets[stor9[arg1]].field_1032 = 0
                                bets[stor9[arg1]].field_1040 = 1
                                bets[stor9[arg1]].field_1048 = 0
                                emit 0x4019969c: bets[stor9[arg1]].field_512, 0, bool(0 or bets[stor9[arg1]].field_1024), 0, sub_05b25980[arg1], bets[stor9[arg1]].field_256
                    stor1 = 1
}



}
