contract main {




// =====================  Runtime code  =====================


#
#  - sellEggs()
#  - sub_63b9b936(?)
#  - chooseWinner()
#  - buyEggs(address arg1)
#
const getBalance = eth.balance(this.address)

const getTimeStamp = block.timestamp


uint256 sub_195a7339;
uint256 sub_b25e3c74;
uint256 sub_c63568c7;
uint256 PERCENTS_DIVIDER;
uint256 sub_ebebcf3d;
uint256 sub_1714d7f3;
uint256 LOTTERY;
uint256 sub_93b3c4ea;
uint256 sub_ae195b65;
uint256 sub_59eec895;
uint256 sub_3a6cac7f;
uint256 sub_d7206d5d;
uint256 sub_1e7116f2;
uint256 sub_752a2628;
uint8 sub_e159a338;
uint256 sub_360498d1;
uint256 sub_699b7c4f;
uint256 sub_bdb6ce3d;
uint256 sub_8d1cad09;
uint256 sub_e07661c1;
uint256 sub_e2662c6b;
uint256 sub_c5196426;
uint256 currentPot;
uint256 participants;
uint256 totalTickets;
uint256 totalStaked;
uint256 totalDeposits;
uint256 sub_7db07c9d;
uint256 totalRefBonus;
uint256 totalWithdrawn;
uint256 sub_474a5ec1;
uint256 marketEggs;
uint256 sub_028ef4a5;
uint256 stor33;
uint256 stor34;
uint8 contractStarted;
uint256 CUTOFF_STEP;
uint256 MIN_INVEST;
uint256 sub_950d91e9;
uint256 sub_94c2c612;
uint256 sub_1848b8dc;
address owner;
address projectAddress;
address partnerAddress;
address marketingAddress;
array of struct sub_2a3a0571;
mapping of struct myMiners;
mapping of uint256 userTickets;
mapping of address sub_c361c14d;

function PERCENTS_DIVIDER() {
    return PERCENTS_DIVIDER
}

function sub_028ef4a5(?) {
    return sub_028ef4a5
}

function getUserTickets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userTickets[stor21][address(arg1)]
}

function getMyMiners() {
    return myMiners[msg.sender].field_512
}

function sub_1714d7f3(?) {
    return sub_1714d7f3
}

function sub_1848b8dc(?) {
    return sub_1848b8dc
}

function sub_195a7339(?) {
    return sub_195a7339
}

function MIN_INVEST() {
    return MIN_INVEST
}

function sub_1e7116f2(?) {
    return sub_1e7116f2
}

function sub_256fd6cc(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return userTickets[arg1][arg2]
}

function sub_2a3a0571(?) {
    require calldata.size - 4 >= 32
    if arg1 >= sub_2a3a0571.length:
        revert with 0, 50
    return sub_2a3a0571[arg1].field_0, 
           sub_2a3a0571[arg1].field_256,
           sub_2a3a0571[arg1].field_512,
           sub_2a3a0571[arg1].field_768,
           sub_2a3a0571[arg1].field_1024
}

function marketing() {
    return marketingAddress
}

function marketEggs() {
    return marketEggs
}

function contractStarted() {
    return bool(contractStarted)
}

function CUTOFF_STEP() {
    return CUTOFF_STEP
}

function sub_360498d1(?) {
    return sub_360498d1
}

function sub_3a6cac7f(?) {
    return sub_3a6cac7f
}

function sub_474a5ec1(?) {
    return sub_474a5ec1
}

function LOTTERY() {
    return LOTTERY
}

function totalWithdrawn() {
    return totalWithdrawn
}

function currentPot() {
    return currentPot
}

function sub_59eec895(?) {
    return sub_59eec895
}

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return myMiners[address(arg1)].field_0, 
           myMiners[address(arg1)].field_256,
           myMiners[address(arg1)].field_512,
           myMiners[address(arg1)].field_768,
           myMiners[address(arg1)].field_1024,
           myMiners[address(arg1)].field_1280,
           myMiners[address(arg1)].field_1536,
           myMiners[address(arg1)].field_1792,
           myMiners[address(arg1)].field_2304,
           myMiners[address(arg1)].field_2048,
           myMiners[address(arg1)].field_2560
}

function sub_699b7c4f(?) {
    return sub_699b7c4f
}

function totalRefBonus() {
    return totalRefBonus
}

function participants() {
    return participants
}

function sub_752a2628(?) {
    return sub_752a2628
}

function totalDeposits() {
    return totalDeposits
}

function sub_7db07c9d(?) {
    return sub_7db07c9d
}

function totalStaked() {
    return totalStaked
}

function sub_8d1cad09(?) {
    return sub_8d1cad09
}

function owner() {
    return owner
}

function sub_93b3c4ea(?) {
    return sub_93b3c4ea
}

function sub_94c2c612(?) {
    return sub_94c2c612
}

function sub_950d91e9(?) {
    return sub_950d91e9
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return myMiners[arg1].field_0, 
           myMiners[arg1].field_256,
           myMiners[arg1].field_512,
           myMiners[arg1].field_768,
           myMiners[arg1].field_1024,
           myMiners[arg1].field_1280,
           myMiners[arg1].field_1536,
           myMiners[arg1].field_1792,
           myMiners[arg1].field_2048,
           myMiners[arg1].field_2304,
           myMiners[arg1].field_2560
}

function sub_ae195b65(?) {
    return sub_ae195b65
}

function sub_b25e3c74(?) {
    return sub_b25e3c74
}

function sub_bdb6ce3d(?) {
    return sub_bdb6ce3d
}

function partner() {
    return partnerAddress
}

function sub_c361c14d(?) {
    require calldata.size - 4 >= 64
    return sub_c361c14d[arg1][arg2]
}

function sub_c5196426(?) {
    return sub_c5196426
}

function sub_c63568c7(?) {
    return sub_c63568c7
}

function sub_d7206d5d(?) {
    return sub_d7206d5d
}

function totalTickets() {
    return totalTickets
}

function sub_e07661c1(?) {
    return sub_e07661c1
}

function sub_e159a338(?) {
    return bool(sub_e159a338)
}

function sub_e2662c6b(?) {
    return sub_e2662c6b
}

function sub_ebebcf3d(?) {
    return sub_ebebcf3d
}

function project() {
    return projectAddress
}

function _fallback() payable {
    revert
}

function getSiteInfo() {
    return totalStaked, totalDeposits, sub_7db07c9d, totalRefBonus, sub_474a5ec1
}

function sub_9a8253c6(?) {
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require contractStarted
    sub_e159a338 = 0
}

function sub_5ec474ce(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 20
    sub_ae195b65 = arg1
}

function sub_c5ed9050(?) {
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require contractStarted
    sub_e159a338 = 1
    sub_360498d1 = block.timestamp
}

function sub_721253dd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 70000
    sub_028ef4a5 = arg1
}

function sub_2b039d0e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    owner = address(arg1)
}

function sub_e8c2e7f5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 100
    LOTTERY = arg1
}

function sub_4eba4970(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    projectAddress = address(arg1)
}

function sub_78dd52a6(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 10
    require arg1 <= 50
    sub_699b7c4f = arg1
}

function sub_7a62ead7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 5
    require arg1 <= 20
    sub_59eec895 = arg1
}

function sub_b8c770da(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 1
    require arg1 <= 100
    sub_e07661c1 = arg1
}

function sub_cfeeef57(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    partnerAddress = address(arg1)
}

function sub_d708c0ce(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 5
    require arg1 <= 20
    sub_3a6cac7f = arg1
}

function sub_ee4f855d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 5
    require arg1 <= 15
    sub_1e7116f2 = arg1
}

function sub_bdd3ba69(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 50
    sub_ebebcf3d = arg1
}

function sub_e0f5d697(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 2
    require arg1 <= 200
    sub_e2662c6b = arg1
}

function sub_082d9b5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    marketingAddress = address(arg1)
}

function sub_570c2979(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 100
    sub_c63568c7 = arg1
}

function sub_593c62b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 100
    sub_1714d7f3 = arg1
}

function sub_6f969d28(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 900
    sub_d7206d5d = arg1
}

function sub_c420af40(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 10
    require arg1 <= 100
    sub_93b3c4ea = arg1
}

function getLotteryTimer() {
    if sub_360498d1 > !sub_bdb6ce3d:
        revert with 0, 17
    if sub_360498d1 + sub_bdb6ce3d < sub_360498d1:
        revert with 0, 1
    return (sub_360498d1 + sub_bdb6ce3d)
}

function sub_e6dc9558(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 200 * 3600
    require arg1 <= 720 * 24 * 3600
    sub_195a7339 = arg1
}

function sub_f2e86acf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 200 * 3600
    require arg1 <= 720 * 24 * 3600
    sub_b25e3c74 = arg1
}

function sub_45f98c29(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    if arg1 > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
        revert with 0, 17
    MIN_INVEST = 10^15 * arg1
}

function sub_bcc20aee(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg1 > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
        revert with 0, 17
    sub_8d1cad09 = 10^15 * arg1
}

function getLotteryInfo() {
    return sub_360498d1, 
           sub_bdb6ce3d,
           currentPot,
           participants,
           sub_e2662c6b,
           totalTickets,
           sub_8d1cad09,
           sub_e07661c1,
           sub_699b7c4f,
           sub_c5196426
}

function sub_7ee28e3c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 20
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_1848b8dc = 10^18 * arg1
}

function sub_ad42bfa0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    if arg1:
        require arg1 >= 1
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_94c2c612 = 10^18 * arg1
}

function sub_45a6a6e0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 <= 24
    if 60 * arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_950d91e9 = 3600 * arg1
}

function sub_7c8e4b4c(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 60 * arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    CUTOFF_STEP = 3600 * arg1
}

function sub_6e65e616(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 60 * arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_bdb6ce3d = 3600 * arg1
}

function sub_959c95b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    if 60 * arg1 > 0x444444444444444444444444444444444444444444444444444444444444444:
        revert with 0, 17
    sub_752a2628 = 3600 * arg1
}

function hatchEggs(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg2
    require arg2 <= sub_028ef4a5
    if myMiners[address(arg1)].field_512 > !arg2:
        revert with 0, 17
    if myMiners[address(arg1)].field_512 + arg2 < myMiners[address(arg1)].field_512:
        revert with 0, 1
    myMiners[address(arg1)].field_512 += arg2
    myMiners[address(arg1)].field_1280 = block.timestamp
}

function getFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        if not PERCENTS_DIVIDER:
            revert with 0, 18
        if not arg1:
            if not PERCENTS_DIVIDER:
                revert with 0, 18
            return 0 / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER
        if arg1 and sub_ebebcf3d > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * sub_ebebcf3d / arg1 != sub_ebebcf3d:
            revert with 0, 1
        if not PERCENTS_DIVIDER:
            revert with 0, 18
        return 0 / PERCENTS_DIVIDER, arg1 * sub_ebebcf3d / PERCENTS_DIVIDER
    if arg1 and sub_1714d7f3 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * sub_1714d7f3 / arg1 != sub_1714d7f3:
        revert with 0, 1
    if not PERCENTS_DIVIDER:
        revert with 0, 18
    if not arg1:
        if not PERCENTS_DIVIDER:
            revert with 0, 18
        return arg1 * sub_1714d7f3 / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER
    if arg1 and sub_ebebcf3d > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * sub_ebebcf3d / arg1 != sub_ebebcf3d:
        revert with 0, 1
    if not PERCENTS_DIVIDER:
        revert with 0, 18
    return arg1 * sub_1714d7f3 / PERCENTS_DIVIDER, arg1 * sub_ebebcf3d / PERCENTS_DIVIDER
}

function sub_50637dbd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not myMiners[address(arg1)].field_2560:
        return 0
    if not myMiners[address(arg1)].field_2560:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 1
        if not PERCENTS_DIVIDER:
            revert with 0, 18
        return (0 / PERCENTS_DIVIDER)
    if myMiners[address(arg1)].field_2560 and sub_d7206d5d > -1 / myMiners[address(arg1)].field_2560:
        revert with 0, 17
    if not myMiners[address(arg1)].field_2560:
        revert with 0, 18
    if myMiners[address(arg1)].field_2560 * sub_d7206d5d / myMiners[address(arg1)].field_2560 != sub_d7206d5d:
        revert with 0, 1
    if not arg2:
        if not PERCENTS_DIVIDER:
            revert with 0, 18
        return (0 / PERCENTS_DIVIDER)
    if arg2 and myMiners[address(arg1)].field_2560 * sub_d7206d5d > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * myMiners[address(arg1)].field_2560 * sub_d7206d5d / arg2 != myMiners[address(arg1)].field_2560 * sub_d7206d5d:
        revert with 0, 1
    if not PERCENTS_DIVIDER:
        revert with 0, 18
    return (arg2 * myMiners[address(arg1)].field_2560 * sub_d7206d5d / PERCENTS_DIVIDER)
}

function getEggsSinceLastHatch(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if myMiners[address(arg1)].field_1280 > block.timestamp:
        revert with 0, 1
    if block.timestamp < myMiners[address(arg1)].field_1280:
        revert with 0, 17
    if block.timestamp - myMiners[address(arg1)].field_1280 < CUTOFF_STEP:
        if sub_195a7339 < block.timestamp - myMiners[address(arg1)].field_1280:
            if not sub_195a7339:
                return 0
            if sub_195a7339 and myMiners[address(arg1)].field_512 > -1 / sub_195a7339:
                revert with 0, 17
            if not sub_195a7339:
                revert with 0, 18
            if sub_195a7339 * myMiners[address(arg1)].field_512 / sub_195a7339 != myMiners[address(arg1)].field_512:
                revert with 0, 1
            return (sub_195a7339 * myMiners[address(arg1)].field_512)
        if not block.timestamp - myMiners[address(arg1)].field_1280:
            return 0
        if block.timestamp - myMiners[address(arg1)].field_1280 and myMiners[address(arg1)].field_512 > -1 / block.timestamp - myMiners[address(arg1)].field_1280:
            revert with 0, 17
        if not block.timestamp - myMiners[address(arg1)].field_1280:
            revert with 0, 18
        if (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) / block.timestamp - myMiners[address(arg1)].field_1280 != myMiners[address(arg1)].field_512:
            revert with 0, 1
        return ((block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512))
    if sub_195a7339 < CUTOFF_STEP:
        if not sub_195a7339:
            return 0
        if sub_195a7339 and myMiners[address(arg1)].field_512 > -1 / sub_195a7339:
            revert with 0, 17
        if not sub_195a7339:
            revert with 0, 18
        if sub_195a7339 * myMiners[address(arg1)].field_512 / sub_195a7339 != myMiners[address(arg1)].field_512:
            revert with 0, 1
        return (sub_195a7339 * myMiners[address(arg1)].field_512)
    if not CUTOFF_STEP:
        return 0
    if CUTOFF_STEP and myMiners[address(arg1)].field_512 > -1 / CUTOFF_STEP:
        revert with 0, 17
    if not CUTOFF_STEP:
        revert with 0, 18
    if CUTOFF_STEP * myMiners[address(arg1)].field_512 / CUTOFF_STEP != myMiners[address(arg1)].field_512:
        revert with 0, 1
    return (CUTOFF_STEP * myMiners[address(arg1)].field_512)
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (0 / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor34 + (stor34 * arg1 / arg1))
    if stor33 and arg3 > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * arg3 / stor33 != arg3:
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (stor33 * arg3 / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (stor33 * arg3 / stor34 + (stor34 * arg1 / arg1))
    if stor33 and arg2 > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * arg2 / stor33 != arg2:
        revert with 0, 1
    if not stor34:
        if stor33 * arg2 > -1:
            revert with 0, 17
        if stor33 * arg2 < stor33 * arg2:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor33 * arg2 / arg1):
            revert with 0, 17
        if stor34 + (stor33 * arg2 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor33 * arg2 / arg1):
            revert with 0, 18
        return (stor33 * arg3 / stor34 + (stor33 * arg2 / arg1))
    if stor34 and arg1 > -1 / stor34:
        revert with 0, 17
    if not stor34:
        revert with 0, 18
    if stor34 * arg1 / stor34 != arg1:
        revert with 0, 1
    if stor33 * arg2 > !(stor34 * arg1):
        revert with 0, 17
    if (stor33 * arg2) + (stor34 * arg1) < stor33 * arg2:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor34 > !((stor33 * arg2) + (stor34 * arg1) / arg1):
        revert with 0, 17
    if stor34 + ((stor33 * arg2) + (stor34 * arg1) / arg1) < stor34:
        revert with 0, 1
    if not stor34 + ((stor33 * arg2) + (stor34 * arg1) / arg1):
        revert with 0, 18
    return (stor33 * arg3 / stor34 + ((stor33 * arg2) + (stor34 * arg1) / arg1))
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (0 / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor34 + (stor34 * arg1 / arg1))
    if stor33 and marketEggs > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * marketEggs / stor33 != marketEggs:
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (stor33 * marketEggs / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (stor33 * marketEggs / stor34 + (stor34 * arg1 / arg1))
    if stor33 and arg2 > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * arg2 / stor33 != arg2:
        revert with 0, 1
    if not stor34:
        if stor33 * arg2 > -1:
            revert with 0, 17
        if stor33 * arg2 < stor33 * arg2:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor33 * arg2 / arg1):
            revert with 0, 17
        if stor34 + (stor33 * arg2 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor33 * arg2 / arg1):
            revert with 0, 18
        return (stor33 * marketEggs / stor34 + (stor33 * arg2 / arg1))
    if stor34 and arg1 > -1 / stor34:
        revert with 0, 17
    if not stor34:
        revert with 0, 18
    if stor34 * arg1 / stor34 != arg1:
        revert with 0, 1
    if stor33 * arg2 > !(stor34 * arg1):
        revert with 0, 17
    if (stor33 * arg2) + (stor34 * arg1) < stor33 * arg2:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor34 > !((stor33 * arg2) + (stor34 * arg1) / arg1):
        revert with 0, 17
    if stor34 + ((stor33 * arg2) + (stor34 * arg1) / arg1) < stor34:
        revert with 0, 1
    if not stor34 + ((stor33 * arg2) + (stor34 * arg1) / arg1):
        revert with 0, 18
    return (stor33 * marketEggs / stor34 + ((stor33 * arg2) + (stor34 * arg1) / arg1))
}

function calculateEggSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (0 / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor34 + (stor34 * arg1 / arg1))
    if stor33 and eth.balance(this.address) > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (stor33 * eth.balance(this.address) / stor34 + (stor34 * arg1 / arg1))
    if stor33 and marketEggs > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * marketEggs / stor33 != marketEggs:
        revert with 0, 1
    if not stor34:
        if stor33 * marketEggs > -1:
            revert with 0, 17
        if stor33 * marketEggs < stor33 * marketEggs:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor33 * marketEggs / arg1):
            revert with 0, 17
        if stor34 + (stor33 * marketEggs / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor33 * marketEggs / arg1):
            revert with 0, 18
        return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / arg1))
    if stor34 and arg1 > -1 / stor34:
        revert with 0, 17
    if not stor34:
        revert with 0, 18
    if stor34 * arg1 / stor34 != arg1:
        revert with 0, 1
    if stor33 * marketEggs > !(stor34 * arg1):
        revert with 0, 17
    if (stor33 * marketEggs) + (stor34 * arg1) < stor33 * marketEggs:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor34 > !((stor33 * marketEggs) + (stor34 * arg1) / arg1):
        revert with 0, 17
    if stor34 + ((stor33 * marketEggs) + (stor34 * arg1) / arg1) < stor34:
        revert with 0, 1
    if not stor34 + ((stor33 * marketEggs) + (stor34 * arg1) / arg1):
        revert with 0, 18
    return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (stor34 * arg1) / arg1))
}

function calculateEggBuySimple(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (0 / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor34 + (stor34 * arg1 / arg1))
    if stor33 and marketEggs > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * marketEggs / stor33 != marketEggs:
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (stor33 * marketEggs / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (stor33 * marketEggs / stor34 + (stor34 * arg1 / arg1))
    if stor33 and eth.balance(this.address) > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
        revert with 0, 1
    if not stor34:
        if stor33 * eth.balance(this.address) > -1:
            revert with 0, 17
        if stor33 * eth.balance(this.address) < stor33 * eth.balance(this.address):
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor33 * eth.balance(this.address) / arg1):
            revert with 0, 17
        if stor34 + (stor33 * eth.balance(this.address) / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor33 * eth.balance(this.address) / arg1):
            revert with 0, 18
        return (stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / arg1))
    if stor34 and arg1 > -1 / stor34:
        revert with 0, 17
    if not stor34:
        revert with 0, 18
    if stor34 * arg1 / stor34 != arg1:
        revert with 0, 1
    if stor33 * eth.balance(this.address) > !(stor34 * arg1):
        revert with 0, 17
    if (stor33 * eth.balance(this.address)) + (stor34 * arg1) < stor33 * eth.balance(this.address):
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor34 > !((stor33 * eth.balance(this.address)) + (stor34 * arg1) / arg1):
        revert with 0, 17
    if stor34 + ((stor33 * eth.balance(this.address)) + (stor34 * arg1) / arg1) < stor34:
        revert with 0, 1
    if not stor34 + ((stor33 * eth.balance(this.address)) + (stor34 * arg1) / arg1):
        revert with 0, 18
    return (stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (stor34 * arg1) / arg1))
}

function sub_39ef1ebe(?) {
    require calldata.size - 4 >= 32
    if eth.balance(this.address) > -1000000000000000001:
        revert with 0, 17
    if eth.balance(this.address) + 10^18 < eth.balance(this.address):
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return (0 / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor34 + (stor34 * arg1 / arg1))
    if stor33 and eth.balance(this.address) + 10^18 > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor33 != eth.balance(this.address) + 10^18:
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not arg1:
                revert with 0, 18
            if stor34 > !(0 / arg1):
                revert with 0, 17
            if stor34 + (0 / arg1) < stor34:
                revert with 0, 1
            if not stor34 + (0 / arg1):
                revert with 0, 18
            return ((10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (0 / arg1))
        if stor34 and arg1 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * arg1 / stor34 != arg1:
            revert with 0, 1
        if 0 > !(stor34 * arg1):
            revert with 0, 17
        if stor34 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor34 * arg1 / arg1):
            revert with 0, 17
        if stor34 + (stor34 * arg1 / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor34 * arg1 / arg1):
            revert with 0, 18
        return ((10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (stor34 * arg1 / arg1))
    if stor33 and marketEggs > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * marketEggs / stor33 != marketEggs:
        revert with 0, 1
    if not stor34:
        if stor33 * marketEggs > -1:
            revert with 0, 17
        if stor33 * marketEggs < stor33 * marketEggs:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor34 > !(stor33 * marketEggs / arg1):
            revert with 0, 17
        if stor34 + (stor33 * marketEggs / arg1) < stor34:
            revert with 0, 1
        if not stor34 + (stor33 * marketEggs / arg1):
            revert with 0, 18
        return ((10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (stor33 * marketEggs / arg1))
    if stor34 and arg1 > -1 / stor34:
        revert with 0, 17
    if not stor34:
        revert with 0, 18
    if stor34 * arg1 / stor34 != arg1:
        revert with 0, 1
    if stor33 * marketEggs > !(stor34 * arg1):
        revert with 0, 17
    if (stor33 * marketEggs) + (stor34 * arg1) < stor33 * marketEggs:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor34 > !((stor33 * marketEggs) + (stor34 * arg1) / arg1):
        revert with 0, 17
    if stor34 + ((stor33 * marketEggs) + (stor34 * arg1) / arg1) < stor34:
        revert with 0, 1
    if not stor34 + ((stor33 * marketEggs) + (stor34 * arg1) / arg1):
        revert with 0, 18
    return ((10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + ((stor33 * marketEggs) + (stor34 * arg1) / arg1))
}

function getMyEggs() {
    if myMiners[address(msg.sender)].field_1280 > block.timestamp:
        revert with 0, 1
    if block.timestamp < myMiners[address(msg.sender)].field_1280:
        revert with 0, 17
    if block.timestamp - myMiners[address(msg.sender)].field_1280 < CUTOFF_STEP:
        if sub_195a7339 < block.timestamp - myMiners[address(msg.sender)].field_1280:
            if not sub_195a7339:
                if myMiners[msg.sender].field_768 > -1:
                    revert with 0, 17
                if myMiners[msg.sender].field_768 < myMiners[msg.sender].field_768:
                    revert with 0, 1
                return myMiners[msg.sender].field_768
            if sub_195a7339 and myMiners[address(msg.sender)].field_512 > -1 / sub_195a7339:
                revert with 0, 17
            if not sub_195a7339:
                revert with 0, 18
            if sub_195a7339 * myMiners[address(msg.sender)].field_512 / sub_195a7339 != myMiners[address(msg.sender)].field_512:
                revert with 0, 1
            if myMiners[msg.sender].field_768 > !(sub_195a7339 * myMiners[address(msg.sender)].field_512):
                revert with 0, 17
            if myMiners[msg.sender].field_768 + (sub_195a7339 * myMiners[address(msg.sender)].field_512) < myMiners[msg.sender].field_768:
                revert with 0, 1
            return (myMiners[msg.sender].field_768 + (sub_195a7339 * myMiners[address(msg.sender)].field_512))
        if not block.timestamp - myMiners[address(msg.sender)].field_1280:
            if myMiners[msg.sender].field_768 > -1:
                revert with 0, 17
            if myMiners[msg.sender].field_768 < myMiners[msg.sender].field_768:
                revert with 0, 1
            return myMiners[msg.sender].field_768
        if block.timestamp - myMiners[address(msg.sender)].field_1280 and myMiners[address(msg.sender)].field_512 > -1 / block.timestamp - myMiners[address(msg.sender)].field_1280:
            revert with 0, 17
        if not block.timestamp - myMiners[address(msg.sender)].field_1280:
            revert with 0, 18
        if (block.timestamp * myMiners[address(msg.sender)].field_512) - (myMiners[address(msg.sender)].field_1280 * myMiners[address(msg.sender)].field_512) / block.timestamp - myMiners[address(msg.sender)].field_1280 != myMiners[address(msg.sender)].field_512:
            revert with 0, 1
        if myMiners[msg.sender].field_768 > !((block.timestamp * myMiners[address(msg.sender)].field_512) - (myMiners[address(msg.sender)].field_1280 * myMiners[address(msg.sender)].field_512)):
            revert with 0, 17
        if myMiners[msg.sender].field_768 + (block.timestamp * myMiners[address(msg.sender)].field_512) - (myMiners[address(msg.sender)].field_1280 * myMiners[address(msg.sender)].field_512) < myMiners[msg.sender].field_768:
            revert with 0, 1
        return (myMiners[msg.sender].field_768 + (block.timestamp * myMiners[address(msg.sender)].field_512) - (myMiners[address(msg.sender)].field_1280 * myMiners[address(msg.sender)].field_512))
    if sub_195a7339 < CUTOFF_STEP:
        if not sub_195a7339:
            if myMiners[msg.sender].field_768 > -1:
                revert with 0, 17
            if myMiners[msg.sender].field_768 < myMiners[msg.sender].field_768:
                revert with 0, 1
            return myMiners[msg.sender].field_768
        if sub_195a7339 and myMiners[address(msg.sender)].field_512 > -1 / sub_195a7339:
            revert with 0, 17
        if not sub_195a7339:
            revert with 0, 18
        if sub_195a7339 * myMiners[address(msg.sender)].field_512 / sub_195a7339 != myMiners[address(msg.sender)].field_512:
            revert with 0, 1
        if myMiners[msg.sender].field_768 > !(sub_195a7339 * myMiners[address(msg.sender)].field_512):
            revert with 0, 17
        if myMiners[msg.sender].field_768 + (sub_195a7339 * myMiners[address(msg.sender)].field_512) < myMiners[msg.sender].field_768:
            revert with 0, 1
        return (myMiners[msg.sender].field_768 + (sub_195a7339 * myMiners[address(msg.sender)].field_512))
    if not CUTOFF_STEP:
        if myMiners[msg.sender].field_768 > -1:
            revert with 0, 17
        if myMiners[msg.sender].field_768 < myMiners[msg.sender].field_768:
            revert with 0, 1
        return myMiners[msg.sender].field_768
    if CUTOFF_STEP and myMiners[address(msg.sender)].field_512 > -1 / CUTOFF_STEP:
        revert with 0, 17
    if not CUTOFF_STEP:
        revert with 0, 18
    if CUTOFF_STEP * myMiners[address(msg.sender)].field_512 / CUTOFF_STEP != myMiners[address(msg.sender)].field_512:
        revert with 0, 1
    if myMiners[msg.sender].field_768 > !(CUTOFF_STEP * myMiners[address(msg.sender)].field_512):
        revert with 0, 17
    if myMiners[msg.sender].field_768 + (CUTOFF_STEP * myMiners[address(msg.sender)].field_512) < myMiners[msg.sender].field_768:
        revert with 0, 1
    return (myMiners[msg.sender].field_768 + (CUTOFF_STEP * myMiners[address(msg.sender)].field_512))
}

function sub_07104c4f(?) {
    if eth.balance(this.address) > -1000000000000000001:
        revert with 0, 17
    if eth.balance(this.address) + 10^18 < eth.balance(this.address):
        revert with 0, 1
    if 10^18 > eth.balance(this.address) + 10^18:
        revert with 0, 1
    if eth.balance(this.address) + 10^18 < 10^18:
        revert with 0, 17
    if not stor33:
        if not stor34:
            if stor34 > -1:
                revert with 0, 17
            if stor34 < stor34:
                revert with 0, 1
            if not stor34:
                revert with 0, 18
            if not sub_195a7339:
                revert with 0, 18
            if 0 / stor34 / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 0, 17
            if 24 * 3600 * 0 / stor34 / sub_195a7339 / 24 * 3600 != 0 / stor34 / sub_195a7339:
                revert with 0, 1
            if eth.balance(this.address) > -1000000000000000001:
                revert with 0, 17
            if eth.balance(this.address) + 10^18 < eth.balance(this.address):
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not 24 * 3600 * 0 / stor34 / sub_195a7339:
                        revert with 0, 18
                    if stor34 > !(0 / 24 * 3600 * 0 / stor34 / sub_195a7339):
                        revert with 0, 17
                    if stor34 + (0 / 24 * 3600 * 0 / stor34 / sub_195a7339) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / 24 * 3600 * 0 / stor34 / sub_195a7339):
                        revert with 0, 18
                    return 0 / stor34 / sub_195a7339, 0 / stor34 + (0 / 24 * 3600 * 0 / stor34 / sub_195a7339)
                if stor34 and 24 * 3600 * 0 / stor34 / sub_195a7339 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if 24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / stor34 != 24 * 3600 * 0 / stor34 / sub_195a7339:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor34 * 0 / stor34 / sub_195a7339):
                    revert with 0, 17
                if 24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 < 0:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor34 / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / 24 * 3600 * 0 / stor34 / sub_195a7339):
                    revert with 0, 17
                if stor34 + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / 24 * 3600 * 0 / stor34 / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / 24 * 3600 * 0 / stor34 / sub_195a7339):
                    revert with 0, 18
                return 0 / stor34 / sub_195a7339, 
                       0 / stor34 + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / 24 * 3600 * 0 / stor34 / sub_195a7339)
            if stor33 and eth.balance(this.address) + 10^18 > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor33 != eth.balance(this.address) + 10^18:
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not 24 * 3600 * 0 / stor34 / sub_195a7339:
                        revert with 0, 18
                    if stor34 > !(0 / 24 * 3600 * 0 / stor34 / sub_195a7339):
                        revert with 0, 17
                    if stor34 + (0 / 24 * 3600 * 0 / stor34 / sub_195a7339) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / 24 * 3600 * 0 / stor34 / sub_195a7339):
                        revert with 0, 18
                    return 0 / stor34 / sub_195a7339, 
                           (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (0 / 24 * 3600 * 0 / stor34 / sub_195a7339)
                if stor34 and 24 * 3600 * 0 / stor34 / sub_195a7339 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if 24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / stor34 != 24 * 3600 * 0 / stor34 / sub_195a7339:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor34 * 0 / stor34 / sub_195a7339):
                    revert with 0, 17
                if 24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 < 0:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor34 / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / 24 * 3600 * 0 / stor34 / sub_195a7339):
                    revert with 0, 17
                if stor34 + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / 24 * 3600 * 0 / stor34 / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / 24 * 3600 * 0 / stor34 / sub_195a7339):
                    revert with 0, 18
                return 0 / stor34 / sub_195a7339, 
                       (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / 24 * 3600 * 0 / stor34 / sub_195a7339)
            if stor33 and marketEggs > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if stor33 * marketEggs / stor33 != marketEggs:
                revert with 0, 1
            if not stor34:
                if stor33 * marketEggs > -1:
                    revert with 0, 17
                if stor33 * marketEggs < stor33 * marketEggs:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor34 / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(stor33 * marketEggs / 24 * 3600 * 0 / stor34 / sub_195a7339):
                    revert with 0, 17
                if stor34 + (stor33 * marketEggs / 24 * 3600 * 0 / stor34 / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (stor33 * marketEggs / 24 * 3600 * 0 / stor34 / sub_195a7339):
                    revert with 0, 18
                return 0 / stor34 / sub_195a7339, 
                       (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (stor33 * marketEggs / 24 * 3600 * 0 / stor34 / sub_195a7339)
            if stor34 and 24 * 3600 * 0 / stor34 / sub_195a7339 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if 24 * 3600 * stor34 * 0 / stor34 / sub_195a7339 / stor34 != 24 * 3600 * 0 / stor34 / sub_195a7339:
                revert with 0, 1
            if stor33 * marketEggs > !(24 * 3600 * stor34 * 0 / stor34 / sub_195a7339):
                revert with 0, 17
            if (stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339) < stor33 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor34 / sub_195a7339:
                revert with 0, 18
            if stor34 > !((stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339) / 24 * 3600 * 0 / stor34 / sub_195a7339):
                revert with 0, 17
            if stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339) / 24 * 3600 * 0 / stor34 / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339) / 24 * 3600 * 0 / stor34 / sub_195a7339):
                revert with 0, 18
            return 0 / stor34 / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 / sub_195a7339) / 24 * 3600 * 0 / stor34 / sub_195a7339)
        if stor34 and 10^18 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if 10^18 * stor34 / stor34 != 10^18:
            revert with 0, 1
        if 0 > !(10^18 * stor34):
            revert with 0, 17
        if 10^18 * stor34 < 0:
            revert with 0, 1
        if stor34 > !(10^18 * stor34 / 10^18):
            revert with 0, 17
        if stor34 + (10^18 * stor34 / 10^18) < stor34:
            revert with 0, 1
        if not stor34 + (10^18 * stor34 / 10^18):
            revert with 0, 18
        if not sub_195a7339:
            revert with 0, 18
        if 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 != 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
            revert with 0, 1
        if eth.balance(this.address) > -1000000000000000001:
            revert with 0, 17
        if eth.balance(this.address) + 10^18 < eth.balance(this.address):
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(0 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                    revert with 0, 17
                if stor34 + (0 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                    revert with 0, 18
                return 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                       0 / stor34 + (0 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
            if stor34 and 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if 24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 18
            return 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                   0 / stor34 + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
        if stor33 and eth.balance(this.address) + 10^18 > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor33 != eth.balance(this.address) + 10^18:
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(0 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                    revert with 0, 17
                if stor34 + (0 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                    revert with 0, 18
                return 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                       (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (0 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
            if stor34 and 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if 24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 18
            return 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
        if stor33 and marketEggs > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * marketEggs / stor33 != marketEggs:
            revert with 0, 1
        if not stor34:
            if stor33 * marketEggs > -1:
                revert with 0, 17
            if stor33 * marketEggs < stor33 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(stor33 * marketEggs / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (stor33 * marketEggs / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (stor33 * marketEggs / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 18
            return 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (stor33 * marketEggs / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
        if stor34 and 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if 24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
            revert with 0, 1
        if stor33 * marketEggs > !(24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
            revert with 0, 17
        if (stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor33 * marketEggs:
            revert with 0, 1
        if not 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
            revert with 0, 18
        if stor34 > !((stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
            revert with 0, 17
        if stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
            revert with 0, 1
        if not stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
            revert with 0, 18
        return 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
               (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) / 24 * 3600 * 0 / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
    if stor33 and marketEggs > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * marketEggs / stor33 != marketEggs:
        revert with 0, 1
    if not stor33:
        if not stor34:
            if stor34 > -1:
                revert with 0, 17
            if stor34 < stor34:
                revert with 0, 1
            if not stor34:
                revert with 0, 18
            if not sub_195a7339:
                revert with 0, 18
            if stor33 * marketEggs / stor34 / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 0, 17
            if 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 != stor33 * marketEggs / stor34 / sub_195a7339:
                revert with 0, 1
            if eth.balance(this.address) > -1000000000000000001:
                revert with 0, 17
            if eth.balance(this.address) + 10^18 < eth.balance(this.address):
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                        revert with 0, 18
                    if stor34 > !(0 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                        revert with 0, 17
                    if stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                        revert with 0, 18
                    return stor33 * marketEggs / stor34 / sub_195a7339, 0 / stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339)
                if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339):
                    revert with 0, 17
                if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 < 0:
                    revert with 0, 1
                if not 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                    revert with 0, 17
                if stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                    revert with 0, 18
                return stor33 * marketEggs / stor34 / sub_195a7339, 
                       0 / stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339)
            if stor33 and eth.balance(this.address) + 10^18 > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor33 != eth.balance(this.address) + 10^18:
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                        revert with 0, 18
                    if stor34 > !(0 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                        revert with 0, 17
                    if stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                        revert with 0, 18
                    return stor33 * marketEggs / stor34 / sub_195a7339, 
                           (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339)
                if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339):
                    revert with 0, 17
                if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 < 0:
                    revert with 0, 1
                if not 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                    revert with 0, 17
                if stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                    revert with 0, 18
                return stor33 * marketEggs / stor34 / sub_195a7339, 
                       (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339)
            if stor33 and marketEggs > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if stor33 * marketEggs / stor33 != marketEggs:
                revert with 0, 1
            if not stor34:
                if stor33 * marketEggs > -1:
                    revert with 0, 17
                if stor33 * marketEggs < stor33 * marketEggs:
                    revert with 0, 1
                if not 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                    revert with 0, 17
                if stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                    revert with 0, 18
                return stor33 * marketEggs / stor34 / sub_195a7339, 
                       (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339)
            if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                revert with 0, 1
            if stor33 * marketEggs > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339):
                revert with 0, 17
            if (stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339) < stor33 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339:
                revert with 0, 18
            if stor34 > !((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                revert with 0, 17
            if stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 / sub_195a7339)
        if stor34 and 10^18 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if 10^18 * stor34 / stor34 != 10^18:
            revert with 0, 1
        if 0 > !(10^18 * stor34):
            revert with 0, 17
        if 10^18 * stor34 < 0:
            revert with 0, 1
        if stor34 > !(10^18 * stor34 / 10^18):
            revert with 0, 17
        if stor34 + (10^18 * stor34 / 10^18) < stor34:
            revert with 0, 1
        if not stor34 + (10^18 * stor34 / 10^18):
            revert with 0, 18
        if not sub_195a7339:
            revert with 0, 18
        if stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 != stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
            revert with 0, 1
        if eth.balance(this.address) > -1000000000000000001:
            revert with 0, 17
        if eth.balance(this.address) + 10^18 < eth.balance(this.address):
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(0 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                    revert with 0, 17
                if stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                    revert with 0, 18
                return stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                       0 / stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
            if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                   0 / stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
        if stor33 and eth.balance(this.address) + 10^18 > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor33 != eth.balance(this.address) + 10^18:
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(0 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                    revert with 0, 17
                if stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                    revert with 0, 18
                return stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                       (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
            if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
        if stor33 and marketEggs > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * marketEggs / stor33 != marketEggs:
            revert with 0, 1
        if not stor34:
            if stor33 * marketEggs > -1:
                revert with 0, 17
            if stor33 * marketEggs < stor33 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
        if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
            revert with 0, 1
        if stor33 * marketEggs > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
            revert with 0, 17
        if (stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor33 * marketEggs:
            revert with 0, 1
        if not 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339:
            revert with 0, 18
        if stor34 > !((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
            revert with 0, 17
        if stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) < stor34:
            revert with 0, 1
        if not stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339):
            revert with 0, 18
        return stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339, 
               (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + (10^18 * stor34 / 10^18) / sub_195a7339)
    if stor33 and eth.balance(this.address) > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
        revert with 0, 1
    if not stor34:
        if stor33 * eth.balance(this.address) > -1:
            revert with 0, 17
        if stor33 * eth.balance(this.address) < stor33 * eth.balance(this.address):
            revert with 0, 1
        if stor34 > !(stor33 * eth.balance(this.address) / 10^18):
            revert with 0, 17
        if stor34 + (stor33 * eth.balance(this.address) / 10^18) < stor34:
            revert with 0, 1
        if not stor34 + (stor33 * eth.balance(this.address) / 10^18):
            revert with 0, 18
        if not sub_195a7339:
            revert with 0, 18
        if stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 != stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
            revert with 0, 1
        if eth.balance(this.address) > -1000000000000000001:
            revert with 0, 17
        if eth.balance(this.address) + 10^18 < eth.balance(this.address):
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(0 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                    revert with 0, 17
                if stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                    revert with 0, 18
                return stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339, 
                       0 / stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339)
            if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339, 
                   0 / stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339)
        if stor33 and eth.balance(this.address) + 10^18 > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor33 != eth.balance(this.address) + 10^18:
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
                    revert with 0, 18
                if stor34 > !(0 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                    revert with 0, 17
                if stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                    revert with 0, 18
                return stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339, 
                       (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339)
            if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339)
        if stor33 and marketEggs > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * marketEggs / stor33 != marketEggs:
            revert with 0, 1
        if not stor34:
            if stor33 * marketEggs > -1:
                revert with 0, 17
            if stor33 * marketEggs < stor33 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339)
        if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
            revert with 0, 1
        if stor33 * marketEggs > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
            revert with 0, 17
        if (stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) < stor33 * marketEggs:
            revert with 0, 1
        if not 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339:
            revert with 0, 18
        if stor34 > !((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
            revert with 0, 17
        if stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) < stor34:
            revert with 0, 1
        if not stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339):
            revert with 0, 18
        return stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339, 
               (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + (stor33 * eth.balance(this.address) / 10^18) / sub_195a7339)
    if stor34 and 10^18 > -1 / stor34:
        revert with 0, 17
    if not stor34:
        revert with 0, 18
    if 10^18 * stor34 / stor34 != 10^18:
        revert with 0, 1
    if stor33 * eth.balance(this.address) > !(10^18 * stor34):
        revert with 0, 17
    if (stor33 * eth.balance(this.address)) + (10^18 * stor34) < stor33 * eth.balance(this.address):
        revert with 0, 1
    if stor34 > !((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18):
        revert with 0, 17
    if stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) < stor34:
        revert with 0, 1
    if not stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18):
        revert with 0, 18
    if not sub_195a7339:
        revert with 0, 18
    if stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 0, 17
    if 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 != stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
        revert with 0, 1
    if eth.balance(this.address) > -1000000000000000001:
        revert with 0, 17
    if eth.balance(this.address) + 10^18 < eth.balance(this.address):
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(0 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339, 
                   0 / stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339)
        if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
            revert with 0, 1
        if 0 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
            revert with 0, 17
        if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 < 0:
            revert with 0, 1
        if not 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
            revert with 0, 18
        if stor34 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
            revert with 0, 17
        if stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) < stor34:
            revert with 0, 1
        if not stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
            revert with 0, 18
        return stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339, 
               0 / stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339)
    if stor33 and eth.balance(this.address) + 10^18 > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor33 != eth.balance(this.address) + 10^18:
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
                revert with 0, 18
            if stor34 > !(0 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
                revert with 0, 17
            if stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) < stor34:
                revert with 0, 1
            if not stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
                revert with 0, 18
            return stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339, 
                   (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (0 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339)
        if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
            revert with 0, 1
        if 0 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
            revert with 0, 17
        if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 < 0:
            revert with 0, 1
        if not 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
            revert with 0, 18
        if stor34 > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
            revert with 0, 17
        if stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) < stor34:
            revert with 0, 1
        if not stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
            revert with 0, 18
        return stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339, 
               (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339)
    if stor33 and marketEggs > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * marketEggs / stor33 != marketEggs:
        revert with 0, 1
    if not stor34:
        if stor33 * marketEggs > -1:
            revert with 0, 17
        if stor33 * marketEggs < stor33 * marketEggs:
            revert with 0, 1
        if not 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
            revert with 0, 18
        if stor34 > !(stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
            revert with 0, 17
        if stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) < stor34:
            revert with 0, 1
        if not stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
            revert with 0, 18
        return stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339, 
               (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + (stor33 * marketEggs / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339)
    if stor34 and 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 > -1 / stor34:
        revert with 0, 17
    if not stor34:
        revert with 0, 18
    if 24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339 / stor34 != 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
        revert with 0, 1
    if stor33 * marketEggs > !(24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
        revert with 0, 17
    if (stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) < stor33 * marketEggs:
        revert with 0, 1
    if not 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339:
        revert with 0, 18
    if stor34 > !((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
        revert with 0, 17
    if stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) < stor34:
        revert with 0, 1
    if not stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339):
        revert with 0, 18
    return stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339, 
           (10^18 * stor33) + (eth.balance(this.address) * stor33) / stor34 + ((stor33 * marketEggs) + (24 * 3600 * stor34 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339) / 24 * 3600 * stor33 * marketEggs / stor34 + ((stor33 * eth.balance(this.address)) + (10^18 * stor34) / 10^18) / sub_195a7339)
}

function sub_64c03a5e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if myMiners[address(arg1)].field_1280 > block.timestamp:
        revert with 0, 1
    if block.timestamp < myMiners[address(arg1)].field_1280:
        revert with 0, 17
    if block.timestamp - myMiners[address(arg1)].field_1280 < CUTOFF_STEP:
        if sub_195a7339 < block.timestamp - myMiners[address(arg1)].field_1280:
            if not sub_195a7339:
                if myMiners[address(arg1)].field_768 > -1:
                    revert with 0, 17
                if myMiners[address(arg1)].field_768 < myMiners[address(arg1)].field_768:
                    revert with 0, 1
                if not stor33:
                    if not stor34:
                        if not myMiners[address(arg1)].field_768:
                            revert with 0, 18
                        if stor34 > !(0 / myMiners[address(arg1)].field_768):
                            revert with 0, 17
                        if stor34 + (0 / myMiners[address(arg1)].field_768) < stor34:
                            revert with 0, 1
                        if not stor34 + (0 / myMiners[address(arg1)].field_768):
                            revert with 0, 18
                        return (0 / stor34 + (0 / myMiners[address(arg1)].field_768))
                    if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                        revert with 0, 17
                    if not stor34:
                        revert with 0, 18
                    if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                        revert with 0, 1
                    if 0 > !(stor34 * myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 * myMiners[address(arg1)].field_768 < 0:
                        revert with 0, 1
                    if not myMiners[address(arg1)].field_768:
                        revert with 0, 18
                    if stor34 > !(stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor34:
                        revert with 0, 1
                    if not stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                        revert with 0, 18
                    return (0 / stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
                if stor33 and eth.balance(this.address) > -1 / stor33:
                    revert with 0, 17
                if not stor33:
                    revert with 0, 18
                if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
                    revert with 0, 1
                if not stor33:
                    if not stor34:
                        if not myMiners[address(arg1)].field_768:
                            revert with 0, 18
                        if stor34 > !(0 / myMiners[address(arg1)].field_768):
                            revert with 0, 17
                        if stor34 + (0 / myMiners[address(arg1)].field_768) < stor34:
                            revert with 0, 1
                        if not stor34 + (0 / myMiners[address(arg1)].field_768):
                            revert with 0, 18
                        return (stor33 * eth.balance(this.address) / stor34 + (0 / myMiners[address(arg1)].field_768))
                    if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                        revert with 0, 17
                    if not stor34:
                        revert with 0, 18
                    if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                        revert with 0, 1
                    if 0 > !(stor34 * myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 * myMiners[address(arg1)].field_768 < 0:
                        revert with 0, 1
                    if not myMiners[address(arg1)].field_768:
                        revert with 0, 18
                    if stor34 > !(stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor34:
                        revert with 0, 1
                    if not stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                        revert with 0, 18
                    return (stor33 * eth.balance(this.address) / stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
                if stor33 and marketEggs > -1 / stor33:
                    revert with 0, 17
                if not stor33:
                    revert with 0, 18
                if stor33 * marketEggs / stor33 != marketEggs:
                    revert with 0, 1
                if not stor34:
                    if stor33 * marketEggs > -1:
                        revert with 0, 17
                    if stor33 * marketEggs < stor33 * marketEggs:
                        revert with 0, 1
                    if not myMiners[address(arg1)].field_768:
                        revert with 0, 18
                    if stor34 > !(stor33 * marketEggs / myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768) < stor34:
                        revert with 0, 1
                    if not stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768):
                        revert with 0, 18
                    return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768))
                if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                    revert with 0, 1
                if stor33 * marketEggs > !(stor34 * myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if (stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) < stor33 * marketEggs:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768))
            if sub_195a7339 and myMiners[address(arg1)].field_512 > -1 / sub_195a7339:
                revert with 0, 17
            if not sub_195a7339:
                revert with 0, 18
            if sub_195a7339 * myMiners[address(arg1)].field_512 / sub_195a7339 != myMiners[address(arg1)].field_512:
                revert with 0, 1
            if myMiners[address(arg1)].field_768 > !(sub_195a7339 * myMiners[address(arg1)].field_512):
                revert with 0, 17
            if myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512) < myMiners[address(arg1)].field_768:
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                        revert with 0, 18
                    if stor34 > !(0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                        revert with 0, 17
                    if stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                        revert with 0, 18
                    return (0 / stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
                if stor34 and myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512) > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                    revert with 0, 1
                if 0 > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34)):
                    revert with 0, 17
                if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) < 0:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                    revert with 0, 18
                if stor34 > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 17
                if stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                    revert with 0, 1
                if not stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 18
                return (0 / stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
            if stor33 and eth.balance(this.address) > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                        revert with 0, 18
                    if stor34 > !(0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                        revert with 0, 17
                    if stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                        revert with 0, 18
                    return (stor33 * eth.balance(this.address) / stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
                if stor34 and myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512) > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                    revert with 0, 1
                if 0 > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34)):
                    revert with 0, 17
                if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) < 0:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                    revert with 0, 18
                if stor34 > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 17
                if stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                    revert with 0, 1
                if not stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
            if stor33 and marketEggs > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if stor33 * marketEggs / stor33 != marketEggs:
                revert with 0, 1
            if not stor34:
                if stor33 * marketEggs > -1:
                    revert with 0, 17
                if stor33 * marketEggs < stor33 * marketEggs:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                    revert with 0, 18
                if stor34 > !(stor33 * marketEggs / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 17
                if stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                    revert with 0, 1
                if not stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
            if stor34 and myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512) > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                revert with 0, 1
            if stor33 * marketEggs > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34)):
                revert with 0, 17
            if (stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) < stor33 * marketEggs:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
        if not block.timestamp - myMiners[address(arg1)].field_1280:
            if myMiners[address(arg1)].field_768 > -1:
                revert with 0, 17
            if myMiners[address(arg1)].field_768 < myMiners[address(arg1)].field_768:
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not myMiners[address(arg1)].field_768:
                        revert with 0, 18
                    if stor34 > !(0 / myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 + (0 / myMiners[address(arg1)].field_768) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / myMiners[address(arg1)].field_768):
                        revert with 0, 18
                    return (0 / stor34 + (0 / myMiners[address(arg1)].field_768))
                if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                    revert with 0, 1
                if 0 > !(stor34 * myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 * myMiners[address(arg1)].field_768 < 0:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !(stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (0 / stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
            if stor33 and eth.balance(this.address) > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not myMiners[address(arg1)].field_768:
                        revert with 0, 18
                    if stor34 > !(0 / myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 + (0 / myMiners[address(arg1)].field_768) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / myMiners[address(arg1)].field_768):
                        revert with 0, 18
                    return (stor33 * eth.balance(this.address) / stor34 + (0 / myMiners[address(arg1)].field_768))
                if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                    revert with 0, 1
                if 0 > !(stor34 * myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 * myMiners[address(arg1)].field_768 < 0:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !(stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
            if stor33 and marketEggs > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if stor33 * marketEggs / stor33 != marketEggs:
                revert with 0, 1
            if not stor34:
                if stor33 * marketEggs > -1:
                    revert with 0, 17
                if stor33 * marketEggs < stor33 * marketEggs:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !(stor33 * marketEggs / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768))
            if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                revert with 0, 1
            if stor33 * marketEggs > !(stor34 * myMiners[address(arg1)].field_768):
                revert with 0, 17
            if (stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) < stor33 * marketEggs:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768:
                revert with 0, 18
            if stor34 > !((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                revert with 0, 17
            if stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) < stor34:
                revert with 0, 1
            if not stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768))
        if block.timestamp - myMiners[address(arg1)].field_1280 and myMiners[address(arg1)].field_512 > -1 / block.timestamp - myMiners[address(arg1)].field_1280:
            revert with 0, 17
        if not block.timestamp - myMiners[address(arg1)].field_1280:
            revert with 0, 18
        if (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) / block.timestamp - myMiners[address(arg1)].field_1280 != myMiners[address(arg1)].field_512:
            revert with 0, 1
        if myMiners[address(arg1)].field_768 > !((block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
            revert with 0, 17
        if myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) < myMiners[address(arg1)].field_768:
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                    revert with 0, 18
                if stor34 > !(0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                    revert with 0, 17
                if stor34 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                    revert with 0, 18
                return (0 / stor34 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
            if stor34 and myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 0, 1
            if 0 > !((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34)):
                revert with 0, 17
            if (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) < 0:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (0 / stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
        if stor33 and eth.balance(this.address) > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                    revert with 0, 18
                if stor34 > !(0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                    revert with 0, 17
                if stor34 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
            if stor34 and myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 0, 1
            if 0 > !((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34)):
                revert with 0, 17
            if (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) < 0:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
        if stor33 and marketEggs > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * marketEggs / stor33 != marketEggs:
            revert with 0, 1
        if not stor34:
            if stor33 * marketEggs > -1:
                revert with 0, 17
            if stor33 * marketEggs < stor33 * marketEggs:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !(stor33 * marketEggs / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
        if stor34 and myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
            revert with 0, 1
        if stor33 * marketEggs > !((myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34)):
            revert with 0, 17
        if (stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) < stor33 * marketEggs:
            revert with 0, 1
        if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
            revert with 0, 18
        if stor34 > !((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
            revert with 0, 17
        if stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor34:
            revert with 0, 1
        if not stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
            revert with 0, 18
        return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (block.timestamp * myMiners[address(arg1)].field_512 * stor34) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
    if sub_195a7339 < CUTOFF_STEP:
        if not sub_195a7339:
            if myMiners[address(arg1)].field_768 > -1:
                revert with 0, 17
            if myMiners[address(arg1)].field_768 < myMiners[address(arg1)].field_768:
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not myMiners[address(arg1)].field_768:
                        revert with 0, 18
                    if stor34 > !(0 / myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 + (0 / myMiners[address(arg1)].field_768) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / myMiners[address(arg1)].field_768):
                        revert with 0, 18
                    return (0 / stor34 + (0 / myMiners[address(arg1)].field_768))
                if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                    revert with 0, 1
                if 0 > !(stor34 * myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 * myMiners[address(arg1)].field_768 < 0:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !(stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (0 / stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
            if stor33 and eth.balance(this.address) > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
                revert with 0, 1
            if not stor33:
                if not stor34:
                    if not myMiners[address(arg1)].field_768:
                        revert with 0, 18
                    if stor34 > !(0 / myMiners[address(arg1)].field_768):
                        revert with 0, 17
                    if stor34 + (0 / myMiners[address(arg1)].field_768) < stor34:
                        revert with 0, 1
                    if not stor34 + (0 / myMiners[address(arg1)].field_768):
                        revert with 0, 18
                    return (stor33 * eth.balance(this.address) / stor34 + (0 / myMiners[address(arg1)].field_768))
                if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                    revert with 0, 17
                if not stor34:
                    revert with 0, 18
                if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                    revert with 0, 1
                if 0 > !(stor34 * myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 * myMiners[address(arg1)].field_768 < 0:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !(stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
            if stor33 and marketEggs > -1 / stor33:
                revert with 0, 17
            if not stor33:
                revert with 0, 18
            if stor33 * marketEggs / stor33 != marketEggs:
                revert with 0, 1
            if not stor34:
                if stor33 * marketEggs > -1:
                    revert with 0, 17
                if stor33 * marketEggs < stor33 * marketEggs:
                    revert with 0, 1
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !(stor33 * marketEggs / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768))
            if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                revert with 0, 1
            if stor33 * marketEggs > !(stor34 * myMiners[address(arg1)].field_768):
                revert with 0, 17
            if (stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) < stor33 * marketEggs:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768:
                revert with 0, 18
            if stor34 > !((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                revert with 0, 17
            if stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) < stor34:
                revert with 0, 1
            if not stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768))
        if sub_195a7339 and myMiners[address(arg1)].field_512 > -1 / sub_195a7339:
            revert with 0, 17
        if not sub_195a7339:
            revert with 0, 18
        if sub_195a7339 * myMiners[address(arg1)].field_512 / sub_195a7339 != myMiners[address(arg1)].field_512:
            revert with 0, 1
        if myMiners[address(arg1)].field_768 > !(sub_195a7339 * myMiners[address(arg1)].field_512):
            revert with 0, 17
        if myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512) < myMiners[address(arg1)].field_768:
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                    revert with 0, 18
                if stor34 > !(0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 17
                if stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 18
                return (0 / stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
            if stor34 and myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512) > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                revert with 0, 1
            if 0 > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34)):
                revert with 0, 17
            if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) < 0:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (0 / stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
        if stor33 and eth.balance(this.address) > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                    revert with 0, 18
                if stor34 > !(0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 17
                if stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + (0 / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
            if stor34 and myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512) > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                revert with 0, 1
            if 0 > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34)):
                revert with 0, 17
            if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) < 0:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
        if stor33 and marketEggs > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * marketEggs / stor33 != marketEggs:
            revert with 0, 1
        if not stor34:
            if stor33 * marketEggs > -1:
                revert with 0, 17
            if stor33 * marketEggs < stor33 * marketEggs:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !(stor33 * marketEggs / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
        if stor34 and myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512) > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
            revert with 0, 1
        if stor33 * marketEggs > !((myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34)):
            revert with 0, 17
        if (stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) < stor33 * marketEggs:
            revert with 0, 1
        if not myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512):
            revert with 0, 18
        if stor34 > !((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
            revert with 0, 17
        if stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)) < stor34:
            revert with 0, 1
        if not stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)):
            revert with 0, 18
        return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (sub_195a7339 * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (sub_195a7339 * myMiners[address(arg1)].field_512)))
    if not CUTOFF_STEP:
        if myMiners[address(arg1)].field_768 > -1:
            revert with 0, 17
        if myMiners[address(arg1)].field_768 < myMiners[address(arg1)].field_768:
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !(0 / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + (0 / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (0 / stor34 + (0 / myMiners[address(arg1)].field_768))
            if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                revert with 0, 1
            if 0 > !(stor34 * myMiners[address(arg1)].field_768):
                revert with 0, 17
            if stor34 * myMiners[address(arg1)].field_768 < 0:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768:
                revert with 0, 18
            if stor34 > !(stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                revert with 0, 17
            if stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor34:
                revert with 0, 1
            if not stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                revert with 0, 18
            return (0 / stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
        if stor33 and eth.balance(this.address) > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
            revert with 0, 1
        if not stor33:
            if not stor34:
                if not myMiners[address(arg1)].field_768:
                    revert with 0, 18
                if stor34 > !(0 / myMiners[address(arg1)].field_768):
                    revert with 0, 17
                if stor34 + (0 / myMiners[address(arg1)].field_768) < stor34:
                    revert with 0, 1
                if not stor34 + (0 / myMiners[address(arg1)].field_768):
                    revert with 0, 18
                return (stor33 * eth.balance(this.address) / stor34 + (0 / myMiners[address(arg1)].field_768))
            if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
                revert with 0, 17
            if not stor34:
                revert with 0, 18
            if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
                revert with 0, 1
            if 0 > !(stor34 * myMiners[address(arg1)].field_768):
                revert with 0, 17
            if stor34 * myMiners[address(arg1)].field_768 < 0:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768:
                revert with 0, 18
            if stor34 > !(stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                revert with 0, 17
            if stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor34:
                revert with 0, 1
            if not stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + (stor34 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
        if stor33 and marketEggs > -1 / stor33:
            revert with 0, 17
        if not stor33:
            revert with 0, 18
        if stor33 * marketEggs / stor33 != marketEggs:
            revert with 0, 1
        if not stor34:
            if stor33 * marketEggs > -1:
                revert with 0, 17
            if stor33 * marketEggs < stor33 * marketEggs:
                revert with 0, 1
            if not myMiners[address(arg1)].field_768:
                revert with 0, 18
            if stor34 > !(stor33 * marketEggs / myMiners[address(arg1)].field_768):
                revert with 0, 17
            if stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768) < stor34:
                revert with 0, 1
            if not stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768))
        if stor34 and myMiners[address(arg1)].field_768 > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if stor34 * myMiners[address(arg1)].field_768 / stor34 != myMiners[address(arg1)].field_768:
            revert with 0, 1
        if stor33 * marketEggs > !(stor34 * myMiners[address(arg1)].field_768):
            revert with 0, 17
        if (stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) < stor33 * marketEggs:
            revert with 0, 1
        if not myMiners[address(arg1)].field_768:
            revert with 0, 18
        if stor34 > !((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
            revert with 0, 17
        if stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) < stor34:
            revert with 0, 1
        if not stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
            revert with 0, 18
        return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (stor34 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768))
    if CUTOFF_STEP and myMiners[address(arg1)].field_512 > -1 / CUTOFF_STEP:
        revert with 0, 17
    if not CUTOFF_STEP:
        revert with 0, 18
    if CUTOFF_STEP * myMiners[address(arg1)].field_512 / CUTOFF_STEP != myMiners[address(arg1)].field_512:
        revert with 0, 1
    if myMiners[address(arg1)].field_768 > !(CUTOFF_STEP * myMiners[address(arg1)].field_512):
        revert with 0, 17
    if myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512) < myMiners[address(arg1)].field_768:
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !(0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (0 / stor34 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
        if stor34 and myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512) > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 0, 1
        if 0 > !((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34)):
            revert with 0, 17
        if (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) < 0:
            revert with 0, 1
        if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 0, 18
        if stor34 > !((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 0, 17
        if stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor34:
            revert with 0, 1
        if not stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 0, 18
        return (0 / stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
    if stor33 and eth.balance(this.address) > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * eth.balance(this.address) / stor33 != eth.balance(this.address):
        revert with 0, 1
    if not stor33:
        if not stor34:
            if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
                revert with 0, 18
            if stor34 > !(0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
                revert with 0, 17
            if stor34 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor34:
                revert with 0, 1
            if not stor34 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
                revert with 0, 18
            return (stor33 * eth.balance(this.address) / stor34 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
        if stor34 and myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512) > -1 / stor34:
            revert with 0, 17
        if not stor34:
            revert with 0, 18
        if (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 0, 1
        if 0 > !((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34)):
            revert with 0, 17
        if (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) < 0:
            revert with 0, 1
        if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 0, 18
        if stor34 > !((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 0, 17
        if stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor34:
            revert with 0, 1
        if not stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 0, 18
        return (stor33 * eth.balance(this.address) / stor34 + ((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
    if stor33 and marketEggs > -1 / stor33:
        revert with 0, 17
    if not stor33:
        revert with 0, 18
    if stor33 * marketEggs / stor33 != marketEggs:
        revert with 0, 1
    if not stor34:
        if stor33 * marketEggs > -1:
            revert with 0, 17
        if stor33 * marketEggs < stor33 * marketEggs:
            revert with 0, 1
        if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 0, 18
        if stor34 > !(stor33 * marketEggs / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 0, 17
        if stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor34:
            revert with 0, 1
        if not stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 0, 18
        return (stor33 * eth.balance(this.address) / stor34 + (stor33 * marketEggs / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
    if stor34 and myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512) > -1 / stor34:
        revert with 0, 17
    if not stor34:
        revert with 0, 18
    if (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / stor34 != myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
        revert with 0, 1
    if stor33 * marketEggs > !((myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34)):
        revert with 0, 17
    if (stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) < stor33 * marketEggs:
        revert with 0, 1
    if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
        revert with 0, 18
    if stor34 > !((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
        revert with 0, 17
    if stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor34:
        revert with 0, 1
    if not stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
        revert with 0, 18
    return (stor33 * eth.balance(this.address) / stor34 + ((stor33 * marketEggs) + (myMiners[address(arg1)].field_768 * stor34) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor34) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
}



}
