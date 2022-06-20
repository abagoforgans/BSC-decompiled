contract main {




// =====================  Runtime code  =====================


#
#  - sub_2a3784e1(?)
#  - sellGolds()
#  - sub_afc9a2d4(?)
#
const getBalance = eth.balance(this.address)

const getTimeStamp = block.timestamp


uint256 sub_a99d09ae;
uint256 sub_a1d8284f;
uint256 sub_c63568c7;
uint256 PERCENTS_DIVIDER;
uint256 sub_ebebcf3d;
uint256 sub_1714d7f3;
uint256 MARKETING;
uint256 LOTTERY;
uint256 sub_93b3c4ea;
uint256 sub_ae195b65;
uint256 sub_f8ed5af2;
uint256 sub_457f8ac8;
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
uint256 marketGolds;
uint256 sub_028ef4a5;
uint256 stor34;
uint256 stor35;
uint8 contractStarted;
uint256 CUTOFF_STEP;
uint256 MIN_INVEST;
uint256 sub_950d91e9;
uint256 sub_94c2c612;
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

function marketGolds() {
    return marketGolds
}

function getUserTickets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userTickets[stor22][address(arg1)]
}

function getMyMiners() {
    return myMiners[address(msg.sender)].field_512
}

function sub_1714d7f3(?) {
    return sub_1714d7f3
}

function MIN_INVEST() {
    return MIN_INVEST
}

function sub_1e7116f2(?) {
    return sub_1e7116f2
}

function sub_256fd6cc(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return userTickets[arg1][arg2]
}

function sub_2a3a0571(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_2a3a0571.length:
        revert with 'NH{q', 50
    return sub_2a3a0571[arg1].field_0, 
           sub_2a3a0571[arg1].field_256,
           sub_2a3a0571[arg1].field_512,
           sub_2a3a0571[arg1].field_768,
           sub_2a3a0571[arg1].field_1024
}

function marketing() {
    return marketingAddress
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

function sub_457f8ac8(?) {
    return sub_457f8ac8
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

function sub_a1d8284f(?) {
    return sub_a1d8284f
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

function sub_a99d09ae(?) {
    return sub_a99d09ae
}

function sub_ae195b65(?) {
    return sub_ae195b65
}

function sub_bdb6ce3d(?) {
    return sub_bdb6ce3d
}

function partner() {
    return partnerAddress
}

function sub_c361c14d(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function MARKETING() {
    return MARKETING
}

function sub_ebebcf3d(?) {
    return sub_ebebcf3d
}

function project() {
    return projectAddress
}

function sub_f8ed5af2(?) {
    return sub_f8ed5af2
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

function sub_c5ed9050(?) {
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require contractStarted
    sub_e159a338 = 1
    sub_360498d1 = block.timestamp
}

function sub_2b039d0e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    owner = address(arg1)
}

function sub_4eba4970(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    projectAddress = address(arg1)
}

function sub_cfeeef57(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    partnerAddress = address(arg1)
}

function sub_082d9b5a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    marketingAddress = address(arg1)
}

function getLotteryTimer() {
    if sub_360498d1 > -sub_bdb6ce3d - 1:
        revert with 'NH{q', 17
    if sub_360498d1 + sub_bdb6ce3d < sub_360498d1:
        revert with 'NH{q', 1
    return (sub_360498d1 + sub_bdb6ce3d)
}

function sub_78dd52a6(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 10
    require arg1 <= 50
    sub_699b7c4f = arg1
}

function sub_7a06c6fd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 5
    require arg1 <= 20
    sub_457f8ac8 = arg1
}

function sub_91a5413a(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 5
    require arg1 <= 20
    sub_f8ed5af2 = arg1
}

function sub_b8c770da(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 1
    require arg1 <= 100
    sub_e07661c1 = arg1
}

function sub_e0f5d697(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 2
    require arg1 <= 200
    sub_e2662c6b = arg1
}

function sub_7bfb7a3d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 200 * 3600
    require arg1 <= 720 * 24 * 3600
    sub_a1d8284f = arg1
}

function sub_b8048ee4(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 200 * 3600
    require arg1 <= 720 * 24 * 3600
    sub_a99d09ae = arg1
}

function sub_45f98c29(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    if arg1 and 10^15 > -1 / arg1:
        revert with 'NH{q', 17
    MIN_INVEST = 10^15 * arg1
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

function sub_bcc20aee(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 1
    require arg1 <= 10
    if arg1 and 10^15 > -1 / arg1:
        revert with 'NH{q', 17
    sub_8d1cad09 = 10^15 * arg1
}

function sub_6e65e616(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg1 and 60 > -1 / arg1:
        revert with 'NH{q', 17
    if 60 * arg1 and 60 > -1 / 60 * arg1:
        revert with 'NH{q', 17
    sub_bdb6ce3d = 3600 * arg1
}

function sub_7c8e4b4c(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 24
    require arg1 <= 48
    if arg1 and 60 > -1 / arg1:
        revert with 'NH{q', 17
    if 60 * arg1 and 60 > -1 / 60 * arg1:
        revert with 'NH{q', 17
    CUTOFF_STEP = 3600 * arg1
}

function sub_50637dbd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not myMiners[address(arg1)].field_2560:
        return 0
    if not myMiners[address(arg1)].field_2560:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if not arg2:
                revert with 'NH{q', 18
            if 0 / arg2:
                revert with 'NH{q', 1
        if not PERCENTS_DIVIDER:
            revert with 'NH{q', 18
        return (0 / PERCENTS_DIVIDER)
    if myMiners[address(arg1)].field_2560 and sub_d7206d5d > -1 / myMiners[address(arg1)].field_2560:
        revert with 'NH{q', 17
    if not myMiners[address(arg1)].field_2560:
        revert with 'NH{q', 18
    if myMiners[address(arg1)].field_2560 * sub_d7206d5d / myMiners[address(arg1)].field_2560 != sub_d7206d5d:
        revert with 'NH{q', 1
    if not arg2:
        if not PERCENTS_DIVIDER:
            revert with 'NH{q', 18
        return (0 / PERCENTS_DIVIDER)
    if arg2 and myMiners[address(arg1)].field_2560 * sub_d7206d5d > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if arg2 * myMiners[address(arg1)].field_2560 * sub_d7206d5d / arg2 != myMiners[address(arg1)].field_2560 * sub_d7206d5d:
        revert with 'NH{q', 1
    if not PERCENTS_DIVIDER:
        revert with 'NH{q', 18
    return (arg2 * myMiners[address(arg1)].field_2560 * sub_d7206d5d / PERCENTS_DIVIDER)
}

function sub_ff044720(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if myMiners[address(arg1)].field_1280 > block.timestamp:
        revert with 'NH{q', 1
    if block.timestamp < myMiners[address(arg1)].field_1280:
        revert with 'NH{q', 17
    if block.timestamp - myMiners[address(arg1)].field_1280 < CUTOFF_STEP:
        if sub_a99d09ae < block.timestamp - myMiners[address(arg1)].field_1280:
            if not sub_a99d09ae:
                return 0
            if sub_a99d09ae and myMiners[address(arg1)].field_512 > -1 / sub_a99d09ae:
                revert with 'NH{q', 17
            if not sub_a99d09ae:
                revert with 'NH{q', 18
            if sub_a99d09ae * myMiners[address(arg1)].field_512 / sub_a99d09ae != myMiners[address(arg1)].field_512:
                revert with 'NH{q', 1
            return (sub_a99d09ae * myMiners[address(arg1)].field_512)
        if not block.timestamp - myMiners[address(arg1)].field_1280:
            return 0
        if block.timestamp - myMiners[address(arg1)].field_1280 and myMiners[address(arg1)].field_512 > -1 / block.timestamp - myMiners[address(arg1)].field_1280:
            revert with 'NH{q', 17
        if not block.timestamp - myMiners[address(arg1)].field_1280:
            revert with 'NH{q', 18
        if (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) / block.timestamp - myMiners[address(arg1)].field_1280 != myMiners[address(arg1)].field_512:
            revert with 'NH{q', 1
        return ((block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512))
    if sub_a99d09ae < CUTOFF_STEP:
        if not sub_a99d09ae:
            return 0
        if sub_a99d09ae and myMiners[address(arg1)].field_512 > -1 / sub_a99d09ae:
            revert with 'NH{q', 17
        if not sub_a99d09ae:
            revert with 'NH{q', 18
        if sub_a99d09ae * myMiners[address(arg1)].field_512 / sub_a99d09ae != myMiners[address(arg1)].field_512:
            revert with 'NH{q', 1
        return (sub_a99d09ae * myMiners[address(arg1)].field_512)
    if not CUTOFF_STEP:
        return 0
    if CUTOFF_STEP and myMiners[address(arg1)].field_512 > -1 / CUTOFF_STEP:
        revert with 'NH{q', 17
    if not CUTOFF_STEP:
        revert with 'NH{q', 18
    if CUTOFF_STEP * myMiners[address(arg1)].field_512 / CUTOFF_STEP != myMiners[address(arg1)].field_512:
        revert with 'NH{q', 1
    return (CUTOFF_STEP * myMiners[address(arg1)].field_512)
}

function getFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        if not PERCENTS_DIVIDER:
            revert with 'NH{q', 18
        if not arg1:
            if not PERCENTS_DIVIDER:
                revert with 'NH{q', 18
            if not arg1:
                if not PERCENTS_DIVIDER:
                    revert with 'NH{q', 18
                return 0 / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER
            if arg1 and MARKETING > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * MARKETING / arg1 != MARKETING:
                revert with 'NH{q', 1
            if not PERCENTS_DIVIDER:
                revert with 'NH{q', 18
            return 0 / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER, arg1 * MARKETING / PERCENTS_DIVIDER
        if arg1 and sub_ebebcf3d > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * sub_ebebcf3d / arg1 != sub_ebebcf3d:
            revert with 'NH{q', 1
        if not PERCENTS_DIVIDER:
            revert with 'NH{q', 18
        if not arg1:
            if not PERCENTS_DIVIDER:
                revert with 'NH{q', 18
            return 0 / PERCENTS_DIVIDER, arg1 * sub_ebebcf3d / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER
        if arg1 and MARKETING > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * MARKETING / arg1 != MARKETING:
            revert with 'NH{q', 1
        if not PERCENTS_DIVIDER:
            revert with 'NH{q', 18
        return 0 / PERCENTS_DIVIDER, arg1 * sub_ebebcf3d / PERCENTS_DIVIDER, arg1 * MARKETING / PERCENTS_DIVIDER
    if arg1 and sub_1714d7f3 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * sub_1714d7f3 / arg1 != sub_1714d7f3:
        revert with 'NH{q', 1
    if not PERCENTS_DIVIDER:
        revert with 'NH{q', 18
    if not arg1:
        if not PERCENTS_DIVIDER:
            revert with 'NH{q', 18
        if not arg1:
            if not PERCENTS_DIVIDER:
                revert with 'NH{q', 18
            return arg1 * sub_1714d7f3 / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER
        if arg1 and MARKETING > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * MARKETING / arg1 != MARKETING:
            revert with 'NH{q', 1
        if not PERCENTS_DIVIDER:
            revert with 'NH{q', 18
        return arg1 * sub_1714d7f3 / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER, arg1 * MARKETING / PERCENTS_DIVIDER
    if arg1 and sub_ebebcf3d > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * sub_ebebcf3d / arg1 != sub_ebebcf3d:
        revert with 'NH{q', 1
    if not PERCENTS_DIVIDER:
        revert with 'NH{q', 18
    if not arg1:
        if not PERCENTS_DIVIDER:
            revert with 'NH{q', 18
        return arg1 * sub_1714d7f3 / PERCENTS_DIVIDER, arg1 * sub_ebebcf3d / PERCENTS_DIVIDER, 0 / PERCENTS_DIVIDER
    if arg1 and MARKETING > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if arg1 * MARKETING / arg1 != MARKETING:
        revert with 'NH{q', 1
    if not PERCENTS_DIVIDER:
        revert with 'NH{q', 18
    return arg1 * sub_1714d7f3 / PERCENTS_DIVIDER, arg1 * sub_ebebcf3d / PERCENTS_DIVIDER, arg1 * MARKETING / PERCENTS_DIVIDER
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (0 / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (0 / stor35 + (stor35 * arg1 / arg1))
    if stor34 and arg3 > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * arg3 / stor34 != arg3:
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (stor34 * arg3 / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (stor34 * arg3 / stor35 + (stor35 * arg1 / arg1))
    if stor34 and arg2 > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * arg2 / stor34 != arg2:
        revert with 'NH{q', 1
    if not stor35:
        if stor34 * arg2 > -1:
            revert with 'NH{q', 17
        if stor34 * arg2 < stor34 * arg2:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor34 * arg2 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor34 * arg2 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor34 * arg2 / arg1):
            revert with 'NH{q', 18
        return (stor34 * arg3 / stor35 + (stor34 * arg2 / arg1))
    if stor35 and arg1 > -1 / stor35:
        revert with 'NH{q', 17
    if not stor35:
        revert with 'NH{q', 18
    if stor35 * arg1 / stor35 != arg1:
        revert with 'NH{q', 1
    if stor34 * arg2 > (-1 * stor35 * arg1) - 1:
        revert with 'NH{q', 17
    if (stor34 * arg2) + (stor35 * arg1) < stor34 * arg2:
        revert with 'NH{q', 1
    if not arg1:
        revert with 'NH{q', 18
    if stor35 > -((stor34 * arg2) + (stor35 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if stor35 + ((stor34 * arg2) + (stor35 * arg1) / arg1) < stor35:
        revert with 'NH{q', 1
    if not stor35 + ((stor34 * arg2) + (stor35 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor34 * arg3 / stor35 + ((stor34 * arg2) + (stor35 * arg1) / arg1))
}

function calculateGoldBuy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (0 / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (0 / stor35 + (stor35 * arg1 / arg1))
    if stor34 and marketGolds > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * marketGolds / stor34 != marketGolds:
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (stor34 * marketGolds / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (stor34 * marketGolds / stor35 + (stor35 * arg1 / arg1))
    if stor34 and arg2 > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * arg2 / stor34 != arg2:
        revert with 'NH{q', 1
    if not stor35:
        if stor34 * arg2 > -1:
            revert with 'NH{q', 17
        if stor34 * arg2 < stor34 * arg2:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor34 * arg2 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor34 * arg2 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor34 * arg2 / arg1):
            revert with 'NH{q', 18
        return (stor34 * marketGolds / stor35 + (stor34 * arg2 / arg1))
    if stor35 and arg1 > -1 / stor35:
        revert with 'NH{q', 17
    if not stor35:
        revert with 'NH{q', 18
    if stor35 * arg1 / stor35 != arg1:
        revert with 'NH{q', 1
    if stor34 * arg2 > (-1 * stor35 * arg1) - 1:
        revert with 'NH{q', 17
    if (stor34 * arg2) + (stor35 * arg1) < stor34 * arg2:
        revert with 'NH{q', 1
    if not arg1:
        revert with 'NH{q', 18
    if stor35 > -((stor34 * arg2) + (stor35 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if stor35 + ((stor34 * arg2) + (stor35 * arg1) / arg1) < stor35:
        revert with 'NH{q', 1
    if not stor35 + ((stor34 * arg2) + (stor35 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor34 * marketGolds / stor35 + ((stor34 * arg2) + (stor35 * arg1) / arg1))
}

function calculateGoldSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (0 / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (0 / stor35 + (stor35 * arg1 / arg1))
    if stor34 and eth.balance(this.address) > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (stor34 * eth.balance(this.address) / stor35 + (stor35 * arg1 / arg1))
    if stor34 and marketGolds > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * marketGolds / stor34 != marketGolds:
        revert with 'NH{q', 1
    if not stor35:
        if stor34 * marketGolds > -1:
            revert with 'NH{q', 17
        if stor34 * marketGolds < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor34 * marketGolds / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor34 * marketGolds / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor34 * marketGolds / arg1):
            revert with 'NH{q', 18
        return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / arg1))
    if stor35 and arg1 > -1 / stor35:
        revert with 'NH{q', 17
    if not stor35:
        revert with 'NH{q', 18
    if stor35 * arg1 / stor35 != arg1:
        revert with 'NH{q', 1
    if stor34 * marketGolds > (-1 * stor35 * arg1) - 1:
        revert with 'NH{q', 17
    if (stor34 * marketGolds) + (stor35 * arg1) < stor34 * marketGolds:
        revert with 'NH{q', 1
    if not arg1:
        revert with 'NH{q', 18
    if stor35 > -((stor34 * marketGolds) + (stor35 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if stor35 + ((stor34 * marketGolds) + (stor35 * arg1) / arg1) < stor35:
        revert with 'NH{q', 1
    if not stor35 + ((stor34 * marketGolds) + (stor35 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (stor35 * arg1) / arg1))
}

function calculateGoldBuySimple(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (0 / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (0 / stor35 + (stor35 * arg1 / arg1))
    if stor34 and marketGolds > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * marketGolds / stor34 != marketGolds:
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (stor34 * marketGolds / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (stor34 * marketGolds / stor35 + (stor35 * arg1 / arg1))
    if stor34 and eth.balance(this.address) > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
        revert with 'NH{q', 1
    if not stor35:
        if stor34 * eth.balance(this.address) > -1:
            revert with 'NH{q', 17
        if stor34 * eth.balance(this.address) < stor34 * eth.balance(this.address):
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor34 * eth.balance(this.address) / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor34 * eth.balance(this.address) / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor34 * eth.balance(this.address) / arg1):
            revert with 'NH{q', 18
        return (stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / arg1))
    if stor35 and arg1 > -1 / stor35:
        revert with 'NH{q', 17
    if not stor35:
        revert with 'NH{q', 18
    if stor35 * arg1 / stor35 != arg1:
        revert with 'NH{q', 1
    if stor34 * eth.balance(this.address) > (-1 * stor35 * arg1) - 1:
        revert with 'NH{q', 17
    if (stor34 * eth.balance(this.address)) + (stor35 * arg1) < stor34 * eth.balance(this.address):
        revert with 'NH{q', 1
    if not arg1:
        revert with 'NH{q', 18
    if stor35 > -((stor34 * eth.balance(this.address)) + (stor35 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if stor35 + ((stor34 * eth.balance(this.address)) + (stor35 * arg1) / arg1) < stor35:
        revert with 'NH{q', 1
    if not stor35 + ((stor34 * eth.balance(this.address)) + (stor35 * arg1) / arg1):
        revert with 'NH{q', 18
    return (stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (stor35 * arg1) / arg1))
}

function sub_9bb56a31(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if eth.balance(this.address) > -1000000000000000001:
        revert with 'NH{q', 17
    if eth.balance(this.address) + 10^18 < eth.balance(this.address):
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return (0 / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return (0 / stor35 + (stor35 * arg1 / arg1))
    if stor34 and eth.balance(this.address) + 10^18 > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor34 != eth.balance(this.address) + 10^18:
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not arg1:
                revert with 'NH{q', 18
            if stor35 > -(0 / arg1) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / arg1) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / arg1):
                revert with 'NH{q', 18
            return ((10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (0 / arg1))
        if stor35 and arg1 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * arg1 / stor35 != arg1:
            revert with 'NH{q', 1
        if 0 > (-1 * stor35 * arg1) - 1:
            revert with 'NH{q', 17
        if stor35 * arg1 < 0:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor35 * arg1 / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor35 * arg1 / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor35 * arg1 / arg1):
            revert with 'NH{q', 18
        return ((10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (stor35 * arg1 / arg1))
    if stor34 and marketGolds > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * marketGolds / stor34 != marketGolds:
        revert with 'NH{q', 1
    if not stor35:
        if stor34 * marketGolds > -1:
            revert with 'NH{q', 17
        if stor34 * marketGolds < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not arg1:
            revert with 'NH{q', 18
        if stor35 > -(stor34 * marketGolds / arg1) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor34 * marketGolds / arg1) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor34 * marketGolds / arg1):
            revert with 'NH{q', 18
        return ((10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (stor34 * marketGolds / arg1))
    if stor35 and arg1 > -1 / stor35:
        revert with 'NH{q', 17
    if not stor35:
        revert with 'NH{q', 18
    if stor35 * arg1 / stor35 != arg1:
        revert with 'NH{q', 1
    if stor34 * marketGolds > (-1 * stor35 * arg1) - 1:
        revert with 'NH{q', 17
    if (stor34 * marketGolds) + (stor35 * arg1) < stor34 * marketGolds:
        revert with 'NH{q', 1
    if not arg1:
        revert with 'NH{q', 18
    if stor35 > -((stor34 * marketGolds) + (stor35 * arg1) / arg1) - 1:
        revert with 'NH{q', 17
    if stor35 + ((stor34 * marketGolds) + (stor35 * arg1) / arg1) < stor35:
        revert with 'NH{q', 1
    if not stor35 + ((stor34 * marketGolds) + (stor35 * arg1) / arg1):
        revert with 'NH{q', 18
    return ((10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + ((stor34 * marketGolds) + (stor35 * arg1) / arg1))
}

function getMyGolds() {
    if myMiners[address(msg.sender)].field_1280 > block.timestamp:
        revert with 'NH{q', 1
    if block.timestamp < myMiners[address(msg.sender)].field_1280:
        revert with 'NH{q', 17
    if block.timestamp - myMiners[address(msg.sender)].field_1280 < CUTOFF_STEP:
        if sub_a99d09ae < block.timestamp - myMiners[address(msg.sender)].field_1280:
            if not sub_a99d09ae:
                if myMiners[address(msg.sender)].field_768 > -1:
                    revert with 'NH{q', 17
                if myMiners[address(msg.sender)].field_768 < myMiners[address(msg.sender)].field_768:
                    revert with 'NH{q', 1
                return myMiners[address(msg.sender)].field_768
            if sub_a99d09ae and myMiners[address(msg.sender)].field_512 > -1 / sub_a99d09ae:
                revert with 'NH{q', 17
            if not sub_a99d09ae:
                revert with 'NH{q', 18
            if sub_a99d09ae * myMiners[address(msg.sender)].field_512 / sub_a99d09ae != myMiners[address(msg.sender)].field_512:
                revert with 'NH{q', 1
            if myMiners[address(msg.sender)].field_768 > (-1 * sub_a99d09ae * myMiners[address(msg.sender)].field_512) - 1:
                revert with 'NH{q', 17
            if myMiners[address(msg.sender)].field_768 + (sub_a99d09ae * myMiners[address(msg.sender)].field_512) < myMiners[address(msg.sender)].field_768:
                revert with 'NH{q', 1
            return (myMiners[address(msg.sender)].field_768 + (sub_a99d09ae * myMiners[address(msg.sender)].field_512))
        if not block.timestamp - myMiners[address(msg.sender)].field_1280:
            if myMiners[address(msg.sender)].field_768 > -1:
                revert with 'NH{q', 17
            if myMiners[address(msg.sender)].field_768 < myMiners[address(msg.sender)].field_768:
                revert with 'NH{q', 1
            return myMiners[address(msg.sender)].field_768
        if block.timestamp - myMiners[address(msg.sender)].field_1280 and myMiners[address(msg.sender)].field_512 > -1 / block.timestamp - myMiners[address(msg.sender)].field_1280:
            revert with 'NH{q', 17
        if not block.timestamp - myMiners[address(msg.sender)].field_1280:
            revert with 'NH{q', 18
        if (block.timestamp * myMiners[address(msg.sender)].field_512) - (myMiners[address(msg.sender)].field_1280 * myMiners[address(msg.sender)].field_512) / block.timestamp - myMiners[address(msg.sender)].field_1280 != myMiners[address(msg.sender)].field_512:
            revert with 'NH{q', 1
        if myMiners[address(msg.sender)].field_768 > (-1 * block.timestamp * myMiners[address(msg.sender)].field_512) + (myMiners[address(msg.sender)].field_1280 * myMiners[address(msg.sender)].field_512) - 1:
            revert with 'NH{q', 17
        if myMiners[address(msg.sender)].field_768 + (block.timestamp * myMiners[address(msg.sender)].field_512) - (myMiners[address(msg.sender)].field_1280 * myMiners[address(msg.sender)].field_512) < myMiners[address(msg.sender)].field_768:
            revert with 'NH{q', 1
        return (myMiners[address(msg.sender)].field_768 + (block.timestamp * myMiners[address(msg.sender)].field_512) - (myMiners[address(msg.sender)].field_1280 * myMiners[address(msg.sender)].field_512))
    if sub_a99d09ae < CUTOFF_STEP:
        if not sub_a99d09ae:
            if myMiners[address(msg.sender)].field_768 > -1:
                revert with 'NH{q', 17
            if myMiners[address(msg.sender)].field_768 < myMiners[address(msg.sender)].field_768:
                revert with 'NH{q', 1
            return myMiners[address(msg.sender)].field_768
        if sub_a99d09ae and myMiners[address(msg.sender)].field_512 > -1 / sub_a99d09ae:
            revert with 'NH{q', 17
        if not sub_a99d09ae:
            revert with 'NH{q', 18
        if sub_a99d09ae * myMiners[address(msg.sender)].field_512 / sub_a99d09ae != myMiners[address(msg.sender)].field_512:
            revert with 'NH{q', 1
        if myMiners[address(msg.sender)].field_768 > (-1 * sub_a99d09ae * myMiners[address(msg.sender)].field_512) - 1:
            revert with 'NH{q', 17
        if myMiners[address(msg.sender)].field_768 + (sub_a99d09ae * myMiners[address(msg.sender)].field_512) < myMiners[address(msg.sender)].field_768:
            revert with 'NH{q', 1
        return (myMiners[address(msg.sender)].field_768 + (sub_a99d09ae * myMiners[address(msg.sender)].field_512))
    if not CUTOFF_STEP:
        if myMiners[address(msg.sender)].field_768 > -1:
            revert with 'NH{q', 17
        if myMiners[address(msg.sender)].field_768 < myMiners[address(msg.sender)].field_768:
            revert with 'NH{q', 1
        return myMiners[address(msg.sender)].field_768
    if CUTOFF_STEP and myMiners[address(msg.sender)].field_512 > -1 / CUTOFF_STEP:
        revert with 'NH{q', 17
    if not CUTOFF_STEP:
        revert with 'NH{q', 18
    if CUTOFF_STEP * myMiners[address(msg.sender)].field_512 / CUTOFF_STEP != myMiners[address(msg.sender)].field_512:
        revert with 'NH{q', 1
    if myMiners[address(msg.sender)].field_768 > (-1 * CUTOFF_STEP * myMiners[address(msg.sender)].field_512) - 1:
        revert with 'NH{q', 17
    if myMiners[address(msg.sender)].field_768 + (CUTOFF_STEP * myMiners[address(msg.sender)].field_512) < myMiners[address(msg.sender)].field_768:
        revert with 'NH{q', 1
    return (myMiners[address(msg.sender)].field_768 + (CUTOFF_STEP * myMiners[address(msg.sender)].field_512))
}

function chooseWinner() {
    if sub_360498d1 > block.timestamp:
        revert with 'NH{q', 1
    if block.timestamp < sub_360498d1:
        revert with 'NH{q', 17
    if block.timestamp - sub_360498d1 < sub_bdb6ce3d:
        if participants < sub_e2662c6b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Lottery must run for LOTTERY_STEP or there must be MAX_LOTTERY_PARTICIPANTS particpants'
    if not participants:
        sub_360498d1 = block.timestamp
    else:
        if participants > test266151307():
            revert with 'NH{q', 65
        if participants:
            mem[128 len 32 * participants] = call.data[calldata.size len 32 * participants]
        if participants > test266151307():
            revert with 'NH{q', 65
        mem[(32 * participants) + 128] = participants
        if participants:
            mem[(32 * participants) + 160 len 32 * participants] = call.data[calldata.size len 32 * participants]
        idx = 0
        s = 0
        while idx < participants:
            if s > -2:
                revert with 'NH{q', 17
            if s + 1 < s:
                revert with 'NH{q', 1
            mem[0] = sub_c361c14d[stor22][idx]
            mem[32] = sha3(sub_c5196426, 47)
            if s + 1 > -(userTickets[stor22][stor48[stor22][idx]] / 10^18) - 1:
                revert with 'NH{q', 17
            if userTickets[stor22][stor48[stor22][idx]] / 10^18 < 0:
                revert with 'NH{q', 1
            if idx >= participants:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = s + 1
            if idx >= mem[(32 * participants) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * participants) + 160] = s + (userTickets[stor22][stor48[stor22][idx]] / 10^18) + 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (userTickets[stor22][stor48[stor22][idx]] / 10^18) + 1
            continue 
        if block.number < 1:
            revert with 'NH{q', 17
        mem[(64 * participants) + 192] = block.hash(block.number - 1)
        mem[(64 * participants) + 224] = block.timestamp
        mem[(64 * participants) + 256] = currentPot
        mem[(64 * participants) + 288] = block.difficulty
        mem[(64 * participants) + 320] = marketGolds
        mem[(64 * participants) + 352] = eth.balance(this.address)
        mem[(64 * participants) + 160] = 192
        require participants
        if not participants:
            revert with 'NH{q', 18
        if sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketGolds, eth.balance(this.address)) % participants > -2:
            revert with 'NH{q', 17
        if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketGolds, eth.balance(this.address)) % participants) + 1 < sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketGolds, eth.balance(this.address)) % participants:
            revert with 'NH{q', 1
        idx = 0
        while idx < participants:
            if idx >= participants:
                revert with 'NH{q', 50
            if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketGolds, eth.balance(this.address)) % participants) + 1 < mem[(32 * idx) + 128]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx >= mem[(32 * participants) + 128]:
                revert with 'NH{q', 50
            if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketGolds, eth.balance(this.address)) % participants) + 1 > mem[(32 * idx) + (32 * participants) + 160]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not currentPot:
                if 0 > eth.balance(this.address):
                    revert with 'NH{q', 1
                if eth.balance(this.address) < 0:
                    revert with 'NH{q', 17
                if not stor34:
                    if stor35:
                        if stor35 and 0 > -1 / stor35:
                            revert with 'NH{q', 17
                        if stor35:
                            if 0 / stor35:
                                revert with 'NH{q', 1
                else:
                    if stor34 and marketGolds > -1 / stor34:
                        revert with 'NH{q', 17
                    if stor34:
                        if stor34 * marketGolds / stor34 != marketGolds:
                            revert with 'NH{q', 1
                        if not stor34:
                            if stor35:
                                if stor35 and 0 > -1 / stor35:
                                    revert with 'NH{q', 17
                                if stor35:
                                    if 0 / stor35:
                                        revert with 'NH{q', 1
                        else:
                            if stor34 and eth.balance(this.address) > -1 / stor34:
                                revert with 'NH{q', 17
                            if stor34:
                                if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
                                    revert with 'NH{q', 1
                                if not stor35:
                                    if stor34 * eth.balance(this.address) > -1:
                                        revert with 'NH{q', 17
                                    if stor34 * eth.balance(this.address) < stor34 * eth.balance(this.address):
                                        revert with 'NH{q', 1
                                else:
                                    if stor35 and 0 > -1 / stor35:
                                        revert with 'NH{q', 17
                                    if stor35:
                                        if 0 / stor35:
                                            revert with 'NH{q', 1
                                        if stor34 * eth.balance(this.address) > -1:
                                            revert with 'NH{q', 17
                                        if stor34 * eth.balance(this.address) < stor34 * eth.balance(this.address):
                                            revert with 'NH{q', 1
                revert with 'NH{q', 18
            if currentPot and 9 > -1 / currentPot:
                revert with 'NH{q', 17
            if not currentPot:
                revert with 'NH{q', 18
            if 9 * currentPot / currentPot != 9:
                revert with 'NH{q', 1
            if 9 * currentPot / 10 > eth.balance(this.address):
                revert with 'NH{q', 1
            if eth.balance(this.address) < 9 * currentPot / 10:
                revert with 'NH{q', 17
            if not stor34:
                if not stor35:
                    if not 9 * currentPot / 10:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / 9 * currentPot / 10) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / 9 * currentPot / 10) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / 9 * currentPot / 10):
                        revert with 'NH{q', 18
                    if myMiners[stor48[stor22][idx]].field_768 > -(0 / stor35 + (0 / 9 * currentPot / 10)) - 1:
                        revert with 'NH{q', 17
                    if myMiners[stor48[stor22][idx]].field_768 + (0 / stor35 + (0 / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_768:
                        revert with 'NH{q', 1
                    myMiners[stor48[stor22][idx]].field_768 += 0 / stor35 + (0 / 9 * currentPot / 10)
                    if myMiners[stor48[stor22][idx]].field_1024 > -(0 / stor35 + (0 / 9 * currentPot / 10)) - 1:
                        revert with 'NH{q', 17
                    if myMiners[stor48[stor22][idx]].field_1024 + (0 / stor35 + (0 / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_1024:
                        revert with 'NH{q', 1
                    myMiners[stor48[stor22][idx]].field_1024 += 0 / stor35 + (0 / 9 * currentPot / 10)
                    if sub_474a5ec1 > -(0 / stor35 + (0 / 9 * currentPot / 10)) - 1:
                        revert with 'NH{q', 17
                    if sub_474a5ec1 + (0 / stor35 + (0 / 9 * currentPot / 10)) < sub_474a5ec1:
                        revert with 'NH{q', 1
                    sub_474a5ec1 += 0 / stor35 + (0 / 9 * currentPot / 10)
                else:
                    if stor35 and 9 * currentPot / 10 > -1 / stor35:
                        revert with 'NH{q', 17
                    if not stor35:
                        revert with 'NH{q', 18
                    if stor35 * 9 * currentPot / 10 / stor35 != 9 * currentPot / 10:
                        revert with 'NH{q', 1
                    if 0 > (-1 * stor35 * 9 * currentPot / 10) - 1:
                        revert with 'NH{q', 17
                    if stor35 * 9 * currentPot / 10 < 0:
                        revert with 'NH{q', 1
                    if not 9 * currentPot / 10:
                        revert with 'NH{q', 18
                    if stor35 > -(stor35 * 9 * currentPot / 10 / 9 * currentPot / 10) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10):
                        revert with 'NH{q', 18
                    if myMiners[stor48[stor22][idx]].field_768 > -(0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) - 1:
                        revert with 'NH{q', 17
                    if myMiners[stor48[stor22][idx]].field_768 + (0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_768:
                        revert with 'NH{q', 1
                    myMiners[stor48[stor22][idx]].field_768 += 0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)
                    if myMiners[stor48[stor22][idx]].field_1024 > -(0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) - 1:
                        revert with 'NH{q', 17
                    if myMiners[stor48[stor22][idx]].field_1024 + (0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_1024:
                        revert with 'NH{q', 1
                    myMiners[stor48[stor22][idx]].field_1024 += 0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)
                    if sub_474a5ec1 > -(0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) - 1:
                        revert with 'NH{q', 17
                    if sub_474a5ec1 + (0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) < sub_474a5ec1:
                        revert with 'NH{q', 1
                    sub_474a5ec1 += 0 / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)
            else:
                if stor34 and marketGolds > -1 / stor34:
                    revert with 'NH{q', 17
                if not stor34:
                    revert with 'NH{q', 18
                if stor34 * marketGolds / stor34 != marketGolds:
                    revert with 'NH{q', 1
                if not stor34:
                    if not stor35:
                        if not 9 * currentPot / 10:
                            revert with 'NH{q', 18
                        if stor35 > -(0 / 9 * currentPot / 10) - 1:
                            revert with 'NH{q', 17
                        if stor35 + (0 / 9 * currentPot / 10) < stor35:
                            revert with 'NH{q', 1
                        if not stor35 + (0 / 9 * currentPot / 10):
                            revert with 'NH{q', 18
                        if myMiners[stor48[stor22][idx]].field_768 > -(stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if myMiners[stor48[stor22][idx]].field_768 + (stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_768:
                            revert with 'NH{q', 1
                        myMiners[stor48[stor22][idx]].field_768 += stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)
                        if myMiners[stor48[stor22][idx]].field_1024 > -(stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if myMiners[stor48[stor22][idx]].field_1024 + (stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_1024:
                            revert with 'NH{q', 1
                        myMiners[stor48[stor22][idx]].field_1024 += stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)
                        if sub_474a5ec1 > -(stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if sub_474a5ec1 + (stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 'NH{q', 1
                        sub_474a5ec1 += stor34 * marketGolds / stor35 + (0 / 9 * currentPot / 10)
                    else:
                        if stor35 and 9 * currentPot / 10 > -1 / stor35:
                            revert with 'NH{q', 17
                        if not stor35:
                            revert with 'NH{q', 18
                        if stor35 * 9 * currentPot / 10 / stor35 != 9 * currentPot / 10:
                            revert with 'NH{q', 1
                        if 0 > (-1 * stor35 * 9 * currentPot / 10) - 1:
                            revert with 'NH{q', 17
                        if stor35 * 9 * currentPot / 10 < 0:
                            revert with 'NH{q', 1
                        if not 9 * currentPot / 10:
                            revert with 'NH{q', 18
                        if stor35 > -(stor35 * 9 * currentPot / 10 / 9 * currentPot / 10) - 1:
                            revert with 'NH{q', 17
                        if stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10) < stor35:
                            revert with 'NH{q', 1
                        if not stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10):
                            revert with 'NH{q', 18
                        if myMiners[stor48[stor22][idx]].field_768 > -(stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if myMiners[stor48[stor22][idx]].field_768 + (stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_768:
                            revert with 'NH{q', 1
                        myMiners[stor48[stor22][idx]].field_768 += stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)
                        if myMiners[stor48[stor22][idx]].field_1024 > -(stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if myMiners[stor48[stor22][idx]].field_1024 + (stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_1024:
                            revert with 'NH{q', 1
                        myMiners[stor48[stor22][idx]].field_1024 += stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)
                        if sub_474a5ec1 > -(stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if sub_474a5ec1 + (stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 'NH{q', 1
                        sub_474a5ec1 += stor34 * marketGolds / stor35 + (stor35 * 9 * currentPot / 10 / 9 * currentPot / 10)
                else:
                    if stor34 and eth.balance(this.address) - (9 * currentPot / 10) > -1 / stor34:
                        revert with 'NH{q', 17
                    if not stor34:
                        revert with 'NH{q', 18
                    if (eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / stor34 != eth.balance(this.address) - (9 * currentPot / 10):
                        revert with 'NH{q', 1
                    if not stor35:
                        if (eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) > -1:
                            revert with 'NH{q', 17
                        if not 9 * currentPot / 10:
                            revert with 'NH{q', 18
                        if stor35 > -((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10) - 1:
                            revert with 'NH{q', 17
                        if stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10) < stor35:
                            revert with 'NH{q', 1
                        if not stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10):
                            revert with 'NH{q', 18
                        if myMiners[stor48[stor22][idx]].field_768 > -(stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if myMiners[stor48[stor22][idx]].field_768 + (stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_768:
                            revert with 'NH{q', 1
                        myMiners[stor48[stor22][idx]].field_768 += stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)
                        if myMiners[stor48[stor22][idx]].field_1024 > -(stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if myMiners[stor48[stor22][idx]].field_1024 + (stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_1024:
                            revert with 'NH{q', 1
                        myMiners[stor48[stor22][idx]].field_1024 += stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)
                        if sub_474a5ec1 > -(stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if sub_474a5ec1 + (stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 'NH{q', 1
                        sub_474a5ec1 += stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) / 9 * currentPot / 10)
                    else:
                        if stor35 and 9 * currentPot / 10 > -1 / stor35:
                            revert with 'NH{q', 17
                        if not stor35:
                            revert with 'NH{q', 18
                        if stor35 * 9 * currentPot / 10 / stor35 != 9 * currentPot / 10:
                            revert with 'NH{q', 1
                        if (eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) > (-1 * stor35 * 9 * currentPot / 10) - 1:
                            revert with 'NH{q', 17
                        if stor35 * 9 * currentPot / 10 < 0:
                            revert with 'NH{q', 1
                        if not 9 * currentPot / 10:
                            revert with 'NH{q', 18
                        if stor35 > -((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10) - 1:
                            revert with 'NH{q', 17
                        if stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10) < stor35:
                            revert with 'NH{q', 1
                        if not stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10):
                            revert with 'NH{q', 18
                        if myMiners[stor48[stor22][idx]].field_768 > -(stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if myMiners[stor48[stor22][idx]].field_768 + (stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_768:
                            revert with 'NH{q', 1
                        myMiners[stor48[stor22][idx]].field_768 += stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)
                        if myMiners[stor48[stor22][idx]].field_1024 > -(stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if myMiners[stor48[stor22][idx]].field_1024 + (stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)) < myMiners[stor48[stor22][idx]].field_1024:
                            revert with 'NH{q', 1
                        myMiners[stor48[stor22][idx]].field_1024 += stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)
                        if sub_474a5ec1 > -(stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)) - 1:
                            revert with 'NH{q', 17
                        if sub_474a5ec1 + (stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 'NH{q', 1
                        sub_474a5ec1 += stor34 * marketGolds / stor35 + ((eth.balance(this.address) * stor34) - (9 * currentPot / 10 * stor34) + (stor35 * 9 * currentPot / 10) / 9 * currentPot / 10)
            if not currentPot:
                if not PERCENTS_DIVIDER:
                    revert with 'NH{q', 18
                call projectAddress with:
                   value 0 / PERCENTS_DIVIDER wei
                     gas 2300 * is_zero(value) wei
            else:
                if currentPot and LOTTERY > -1 / currentPot:
                    revert with 'NH{q', 17
                if not currentPot:
                    revert with 'NH{q', 18
                if currentPot * LOTTERY / currentPot != LOTTERY:
                    revert with 'NH{q', 1
                if not PERCENTS_DIVIDER:
                    revert with 'NH{q', 18
                call projectAddress with:
                   value currentPot * LOTTERY / PERCENTS_DIVIDER wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_2a3a0571.length++
            sub_2a3a0571[sub_2a3a0571.length].field_0 = sub_c5196426
            sub_2a3a0571[sub_2a3a0571.length].field_256 = sub_c361c14d[stor22][idx]
            sub_2a3a0571[sub_2a3a0571.length].field_512 = 9 * currentPot / 10
            sub_2a3a0571[sub_2a3a0571.length].field_768 = participants
            sub_2a3a0571[sub_2a3a0571.length].field_1024 = totalTickets
            emit LotteryWinner((9 * currentPot / 10), sub_c361c14d[stor22][idx], sub_c5196426);
            currentPot = 0
            participants = 0
            totalTickets = 0
            sub_360498d1 = block.timestamp
            if sub_c5196426 > -2:
                revert with 'NH{q', 17
            if sub_c5196426 + 1 < sub_c5196426:
                revert with 'NH{q', 1
            sub_c5196426++
}

function sub_5a74d3c6(?) {
    if eth.balance(this.address) > -1000000000000000001:
        revert with 'NH{q', 17
    if eth.balance(this.address) + 10^18 < eth.balance(this.address):
        revert with 'NH{q', 1
    if 10^18 > eth.balance(this.address) + 10^18:
        revert with 'NH{q', 1
    if eth.balance(this.address) + 10^18 < 10^18:
        revert with 'NH{q', 17
    if not stor34:
        if not stor35:
            if stor35 > -1:
                revert with 'NH{q', 17
            if stor35 < stor35:
                revert with 'NH{q', 1
            if not stor35:
                revert with 'NH{q', 18
            if not sub_a99d09ae:
                revert with 'NH{q', 18
            if 0 / stor35 / sub_a99d09ae > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 'NH{q', 17
            if 24 * 3600 * 0 / stor35 / sub_a99d09ae / 24 * 3600 != 0 / stor35 / sub_a99d09ae:
                revert with 'NH{q', 1
            if eth.balance(this.address) > -1000000000000000001:
                revert with 'NH{q', 17
            if eth.balance(this.address) + 10^18 < eth.balance(this.address):
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / 24 * 3600 * 0 / stor35 / sub_a99d09ae) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / 24 * 3600 * 0 / stor35 / sub_a99d09ae) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / 24 * 3600 * 0 / stor35 / sub_a99d09ae):
                        revert with 'NH{q', 18
                    return 0 / stor35 / sub_a99d09ae, 0 / stor35 + (0 / 24 * 3600 * 0 / stor35 / sub_a99d09ae)
                if stor35 and 24 * 3600 * 0 / stor35 / sub_a99d09ae > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if 24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / stor35 != 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 1
                if 0 > (-86400 * stor35 * 0 / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if 24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae < 0:
                    revert with 'NH{q', 1
                if not 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / 24 * 3600 * 0 / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / 24 * 3600 * 0 / stor35 / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / 24 * 3600 * 0 / stor35 / sub_a99d09ae):
                    revert with 'NH{q', 18
                return 0 / stor35 / sub_a99d09ae, 
                       0 / stor35 + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / 24 * 3600 * 0 / stor35 / sub_a99d09ae)
            if stor34 and eth.balance(this.address) + 10^18 > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor34 != eth.balance(this.address) + 10^18:
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / 24 * 3600 * 0 / stor35 / sub_a99d09ae) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / 24 * 3600 * 0 / stor35 / sub_a99d09ae) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / 24 * 3600 * 0 / stor35 / sub_a99d09ae):
                        revert with 'NH{q', 18
                    return 0 / stor35 / sub_a99d09ae, 
                           (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (0 / 24 * 3600 * 0 / stor35 / sub_a99d09ae)
                if stor35 and 24 * 3600 * 0 / stor35 / sub_a99d09ae > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if 24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / stor35 != 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 1
                if 0 > (-86400 * stor35 * 0 / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if 24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae < 0:
                    revert with 'NH{q', 1
                if not 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / 24 * 3600 * 0 / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / 24 * 3600 * 0 / stor35 / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / 24 * 3600 * 0 / stor35 / sub_a99d09ae):
                    revert with 'NH{q', 18
                return 0 / stor35 / sub_a99d09ae, 
                       (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / 24 * 3600 * 0 / stor35 / sub_a99d09ae)
            if stor34 and marketGolds > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if stor34 * marketGolds / stor34 != marketGolds:
                revert with 'NH{q', 1
            if not stor35:
                if stor34 * marketGolds > -1:
                    revert with 'NH{q', 17
                if stor34 * marketGolds < stor34 * marketGolds:
                    revert with 'NH{q', 1
                if not 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(stor34 * marketGolds / 24 * 3600 * 0 / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor34 * marketGolds / 24 * 3600 * 0 / stor35 / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor34 * marketGolds / 24 * 3600 * 0 / stor35 / sub_a99d09ae):
                    revert with 'NH{q', 18
                return 0 / stor35 / sub_a99d09ae, 
                       (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (stor34 * marketGolds / 24 * 3600 * 0 / stor35 / sub_a99d09ae)
            if stor35 and 24 * 3600 * 0 / stor35 / sub_a99d09ae > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if 24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae / stor35 != 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                revert with 'NH{q', 1
            if stor34 * marketGolds > (-86400 * stor35 * 0 / stor35 / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if (stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae) < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not 24 * 3600 * 0 / stor35 / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -((stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae) / 24 * 3600 * 0 / stor35 / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae) / 24 * 3600 * 0 / stor35 / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae) / 24 * 3600 * 0 / stor35 / sub_a99d09ae):
                revert with 'NH{q', 18
            return 0 / stor35 / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 / sub_a99d09ae) / 24 * 3600 * 0 / stor35 / sub_a99d09ae)
        if stor35 and 10^18 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if 10^18 * stor35 / stor35 != 10^18:
            revert with 'NH{q', 1
        if 0 > (-1 * 10^18 * stor35) - 1:
            revert with 'NH{q', 17
        if 10^18 * stor35 < 0:
            revert with 'NH{q', 1
        if stor35 > -(10^18 * stor35 / 10^18) - 1:
            revert with 'NH{q', 17
        if stor35 + (10^18 * stor35 / 10^18) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (10^18 * stor35 / 10^18):
            revert with 'NH{q', 18
        if not sub_a99d09ae:
            revert with 'NH{q', 18
        if 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 'NH{q', 17
        if 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 != 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 1
        if eth.balance(this.address) > -1000000000000000001:
            revert with 'NH{q', 17
        if eth.balance(this.address) + 10^18 < eth.balance(this.address):
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(0 / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                    revert with 'NH{q', 18
                return 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                       0 / stor35 + (0 / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
            if stor35 and 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if 24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 1
            if 0 > (-86400 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if 24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae < 0:
                revert with 'NH{q', 1
            if not 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                   0 / stor35 + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
        if stor34 and eth.balance(this.address) + 10^18 > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor34 != eth.balance(this.address) + 10^18:
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(0 / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                    revert with 'NH{q', 18
                return 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                       (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (0 / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
            if stor35 and 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if 24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 1
            if 0 > (-86400 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if 24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae < 0:
                revert with 'NH{q', 1
            if not 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
        if stor34 and marketGolds > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * marketGolds / stor34 != marketGolds:
            revert with 'NH{q', 1
        if not stor35:
            if stor34 * marketGolds > -1:
                revert with 'NH{q', 17
            if stor34 * marketGolds < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(stor34 * marketGolds / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (stor34 * marketGolds / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (stor34 * marketGolds / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (stor34 * marketGolds / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
        if stor35 and 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if 24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 1
        if stor34 * marketGolds > (-86400 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if (stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 18
        if stor35 > -((stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
            revert with 'NH{q', 1
        if not stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
            revert with 'NH{q', 18
        return 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
               (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) / 24 * 3600 * 0 / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
    if stor34 and marketGolds > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * marketGolds / stor34 != marketGolds:
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if stor35 > -1:
                revert with 'NH{q', 17
            if stor35 < stor35:
                revert with 'NH{q', 1
            if not stor35:
                revert with 'NH{q', 18
            if not sub_a99d09ae:
                revert with 'NH{q', 18
            if stor34 * marketGolds / stor35 / sub_a99d09ae > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 'NH{q', 17
            if 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 != stor34 * marketGolds / stor35 / sub_a99d09ae:
                revert with 'NH{q', 1
            if eth.balance(this.address) > -1000000000000000001:
                revert with 'NH{q', 17
            if eth.balance(this.address) + 10^18 < eth.balance(this.address):
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae):
                        revert with 'NH{q', 18
                    return stor34 * marketGolds / stor35 / sub_a99d09ae, 
                           0 / stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae)
                if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 1
                if 0 > (-86400 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae < 0:
                    revert with 'NH{q', 1
                if not 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae):
                    revert with 'NH{q', 18
                return stor34 * marketGolds / stor35 / sub_a99d09ae, 
                       0 / stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae)
            if stor34 and eth.balance(this.address) + 10^18 > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor34 != eth.balance(this.address) + 10^18:
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae):
                        revert with 'NH{q', 18
                    return stor34 * marketGolds / stor35 / sub_a99d09ae, 
                           (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae)
                if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 1
                if 0 > (-86400 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae < 0:
                    revert with 'NH{q', 1
                if not 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae):
                    revert with 'NH{q', 18
                return stor34 * marketGolds / stor35 / sub_a99d09ae, 
                       (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae)
            if stor34 and marketGolds > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if stor34 * marketGolds / stor34 != marketGolds:
                revert with 'NH{q', 1
            if not stor35:
                if stor34 * marketGolds > -1:
                    revert with 'NH{q', 17
                if stor34 * marketGolds < stor34 * marketGolds:
                    revert with 'NH{q', 1
                if not 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae):
                    revert with 'NH{q', 18
                return stor34 * marketGolds / stor35 / sub_a99d09ae, 
                       (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae)
            if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                revert with 'NH{q', 1
            if stor34 * marketGolds > (-86400 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if (stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae) < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 / sub_a99d09ae)
        if stor35 and 10^18 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if 10^18 * stor35 / stor35 != 10^18:
            revert with 'NH{q', 1
        if 0 > (-1 * 10^18 * stor35) - 1:
            revert with 'NH{q', 17
        if 10^18 * stor35 < 0:
            revert with 'NH{q', 1
        if stor35 > -(10^18 * stor35 / 10^18) - 1:
            revert with 'NH{q', 17
        if stor35 + (10^18 * stor35 / 10^18) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (10^18 * stor35 / 10^18):
            revert with 'NH{q', 18
        if not sub_a99d09ae:
            revert with 'NH{q', 18
        if stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 'NH{q', 17
        if 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 != stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 1
        if eth.balance(this.address) > -1000000000000000001:
            revert with 'NH{q', 17
        if eth.balance(this.address) + 10^18 < eth.balance(this.address):
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(0 / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                    revert with 'NH{q', 18
                return stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                       0 / stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
            if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 1
            if 0 > (-86400 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae < 0:
                revert with 'NH{q', 1
            if not 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                   0 / stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
        if stor34 and eth.balance(this.address) + 10^18 > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor34 != eth.balance(this.address) + 10^18:
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(0 / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                    revert with 'NH{q', 18
                return stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                       (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
            if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 1
            if 0 > (-86400 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae < 0:
                revert with 'NH{q', 1
            if not 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
        if stor34 and marketGolds > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * marketGolds / stor34 != marketGolds:
            revert with 'NH{q', 1
        if not stor35:
            if stor34 * marketGolds > -1:
                revert with 'NH{q', 17
            if stor34 * marketGolds < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
        if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 1
        if stor34 * marketGolds > (-86400 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if (stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 18
        if stor35 > -((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) < stor35:
            revert with 'NH{q', 1
        if not stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae):
            revert with 'NH{q', 18
        return stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae, 
               (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + (10^18 * stor35 / 10^18) / sub_a99d09ae)
    if stor34 and eth.balance(this.address) > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
        revert with 'NH{q', 1
    if not stor35:
        if stor34 * eth.balance(this.address) > -1:
            revert with 'NH{q', 17
        if stor34 * eth.balance(this.address) < stor34 * eth.balance(this.address):
            revert with 'NH{q', 1
        if stor35 > -(stor34 * eth.balance(this.address) / 10^18) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor34 * eth.balance(this.address) / 10^18) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor34 * eth.balance(this.address) / 10^18):
            revert with 'NH{q', 18
        if not sub_a99d09ae:
            revert with 'NH{q', 18
        if stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 'NH{q', 17
        if 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 != stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 1
        if eth.balance(this.address) > -1000000000000000001:
            revert with 'NH{q', 17
        if eth.balance(this.address) + 10^18 < eth.balance(this.address):
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(0 / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae):
                    revert with 'NH{q', 18
                return stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae, 
                       0 / stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae)
            if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 1
            if 0 > (-86400 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae < 0:
                revert with 'NH{q', 1
            if not 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae, 
                   0 / stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae)
        if stor34 and eth.balance(this.address) + 10^18 > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor34 != eth.balance(this.address) + 10^18:
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
                    revert with 'NH{q', 18
                if stor35 > -(0 / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae):
                    revert with 'NH{q', 18
                return stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae, 
                       (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae)
            if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 1
            if 0 > (-86400 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae < 0:
                revert with 'NH{q', 1
            if not 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae)
        if stor34 and marketGolds > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * marketGolds / stor34 != marketGolds:
            revert with 'NH{q', 1
        if not stor35:
            if stor34 * marketGolds > -1:
                revert with 'NH{q', 17
            if stor34 * marketGolds < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae)
        if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 1
        if stor34 * marketGolds > (-86400 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if (stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 18
        if stor35 > -((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) < stor35:
            revert with 'NH{q', 1
        if not stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae):
            revert with 'NH{q', 18
        return stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae, 
               (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + (stor34 * eth.balance(this.address) / 10^18) / sub_a99d09ae)
    if stor35 and 10^18 > -1 / stor35:
        revert with 'NH{q', 17
    if not stor35:
        revert with 'NH{q', 18
    if 10^18 * stor35 / stor35 != 10^18:
        revert with 'NH{q', 1
    if stor34 * eth.balance(this.address) > (-1 * 10^18 * stor35) - 1:
        revert with 'NH{q', 17
    if (stor34 * eth.balance(this.address)) + (10^18 * stor35) < stor34 * eth.balance(this.address):
        revert with 'NH{q', 1
    if stor35 > -((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) - 1:
        revert with 'NH{q', 17
    if stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) < stor35:
        revert with 'NH{q', 1
    if not stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18):
        revert with 'NH{q', 18
    if not sub_a99d09ae:
        revert with 'NH{q', 18
    if stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 'NH{q', 17
    if 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 != stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
        revert with 'NH{q', 1
    if eth.balance(this.address) > -1000000000000000001:
        revert with 'NH{q', 17
    if eth.balance(this.address) + 10^18 < eth.balance(this.address):
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(0 / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae, 
                   0 / stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae)
        if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 1
        if 0 > (-86400 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae < 0:
            revert with 'NH{q', 1
        if not 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 18
        if stor35 > -(24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae):
            revert with 'NH{q', 18
        return stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae, 
               0 / stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae)
    if stor34 and eth.balance(this.address) + 10^18 > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor34 != eth.balance(this.address) + 10^18:
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
                revert with 'NH{q', 18
            if stor35 > -(0 / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae):
                revert with 'NH{q', 18
            return stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae, 
                   (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (0 / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae)
        if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 1
        if 0 > (-86400 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae < 0:
            revert with 'NH{q', 1
        if not 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 18
        if stor35 > -(24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae):
            revert with 'NH{q', 18
        return stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae, 
               (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae)
    if stor34 and marketGolds > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * marketGolds / stor34 != marketGolds:
        revert with 'NH{q', 1
    if not stor35:
        if stor34 * marketGolds > -1:
            revert with 'NH{q', 17
        if stor34 * marketGolds < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
            revert with 'NH{q', 18
        if stor35 > -(stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae):
            revert with 'NH{q', 18
        return stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae, 
               (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + (stor34 * marketGolds / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae)
    if stor35 and 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae > -1 / stor35:
        revert with 'NH{q', 17
    if not stor35:
        revert with 'NH{q', 18
    if 24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae / stor35 != 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
        revert with 'NH{q', 1
    if stor34 * marketGolds > (-86400 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
        revert with 'NH{q', 17
    if (stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) < stor34 * marketGolds:
        revert with 'NH{q', 1
    if not 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae:
        revert with 'NH{q', 18
    if stor35 > -((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) - 1:
        revert with 'NH{q', 17
    if stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) < stor35:
        revert with 'NH{q', 1
    if not stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae):
        revert with 'NH{q', 18
    return stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae, 
           (10^18 * stor34) + (eth.balance(this.address) * stor34) / stor35 + ((stor34 * marketGolds) + (24 * 3600 * stor35 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae) / 24 * 3600 * stor34 * marketGolds / stor35 + ((stor34 * eth.balance(this.address)) + (10^18 * stor35) / 10^18) / sub_a99d09ae)
}

function sub_64c03a5e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if myMiners[address(arg1)].field_1280 > block.timestamp:
        revert with 'NH{q', 1
    if block.timestamp < myMiners[address(arg1)].field_1280:
        revert with 'NH{q', 17
    if block.timestamp - myMiners[address(arg1)].field_1280 < CUTOFF_STEP:
        if sub_a99d09ae < block.timestamp - myMiners[address(arg1)].field_1280:
            if not sub_a99d09ae:
                if myMiners[address(arg1)].field_768 > -1:
                    revert with 'NH{q', 17
                if myMiners[address(arg1)].field_768 < myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 1
                if not stor34:
                    if not stor35:
                        if not myMiners[address(arg1)].field_768:
                            revert with 'NH{q', 18
                        if stor35 > -(0 / myMiners[address(arg1)].field_768) - 1:
                            revert with 'NH{q', 17
                        if stor35 + (0 / myMiners[address(arg1)].field_768) < stor35:
                            revert with 'NH{q', 1
                        if not stor35 + (0 / myMiners[address(arg1)].field_768):
                            revert with 'NH{q', 18
                        return (0 / stor35 + (0 / myMiners[address(arg1)].field_768))
                    if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                        revert with 'NH{q', 17
                    if not stor35:
                        revert with 'NH{q', 18
                    if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 1
                    if 0 > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 * myMiners[address(arg1)].field_768 < 0:
                        revert with 'NH{q', 1
                    if not myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 18
                    if stor35 > -(stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                        revert with 'NH{q', 18
                    return (0 / stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
                if stor34 and eth.balance(this.address) > -1 / stor34:
                    revert with 'NH{q', 17
                if not stor34:
                    revert with 'NH{q', 18
                if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
                    revert with 'NH{q', 1
                if not stor34:
                    if not stor35:
                        if not myMiners[address(arg1)].field_768:
                            revert with 'NH{q', 18
                        if stor35 > -(0 / myMiners[address(arg1)].field_768) - 1:
                            revert with 'NH{q', 17
                        if stor35 + (0 / myMiners[address(arg1)].field_768) < stor35:
                            revert with 'NH{q', 1
                        if not stor35 + (0 / myMiners[address(arg1)].field_768):
                            revert with 'NH{q', 18
                        return (stor34 * eth.balance(this.address) / stor35 + (0 / myMiners[address(arg1)].field_768))
                    if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                        revert with 'NH{q', 17
                    if not stor35:
                        revert with 'NH{q', 18
                    if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 1
                    if 0 > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 * myMiners[address(arg1)].field_768 < 0:
                        revert with 'NH{q', 1
                    if not myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 18
                    if stor35 > -(stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                        revert with 'NH{q', 18
                    return (stor34 * eth.balance(this.address) / stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
                if stor34 and marketGolds > -1 / stor34:
                    revert with 'NH{q', 17
                if not stor34:
                    revert with 'NH{q', 18
                if stor34 * marketGolds / stor34 != marketGolds:
                    revert with 'NH{q', 1
                if not stor35:
                    if stor34 * marketGolds > -1:
                        revert with 'NH{q', 17
                    if stor34 * marketGolds < stor34 * marketGolds:
                        revert with 'NH{q', 1
                    if not myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 18
                    if stor35 > -(stor34 * marketGolds / myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768):
                        revert with 'NH{q', 18
                    return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768))
                if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 1
                if stor34 * marketGolds > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if (stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) < stor34 * marketGolds:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768))
            if sub_a99d09ae and myMiners[address(arg1)].field_512 > -1 / sub_a99d09ae:
                revert with 'NH{q', 17
            if not sub_a99d09ae:
                revert with 'NH{q', 18
            if sub_a99d09ae * myMiners[address(arg1)].field_512 / sub_a99d09ae != myMiners[address(arg1)].field_512:
                revert with 'NH{q', 1
            if myMiners[address(arg1)].field_768 > (-1 * sub_a99d09ae * myMiners[address(arg1)].field_512) - 1:
                revert with 'NH{q', 17
            if myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512) < myMiners[address(arg1)].field_768:
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                        revert with 'NH{q', 18
                    if stor35 > -(0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                        revert with 'NH{q', 18
                    return (0 / stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
                if stor35 and myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512) > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 1
                if 0 > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) - 1:
                    revert with 'NH{q', 17
                if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) < 0:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 18
                if stor35 > -((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                    revert with 'NH{q', 17
                if stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                    revert with 'NH{q', 18
                return (0 / stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
            if stor34 and eth.balance(this.address) > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                        revert with 'NH{q', 18
                    if stor35 > -(0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                        revert with 'NH{q', 18
                    return (stor34 * eth.balance(this.address) / stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
                if stor35 and myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512) > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 1
                if 0 > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) - 1:
                    revert with 'NH{q', 17
                if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) < 0:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 18
                if stor35 > -((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                    revert with 'NH{q', 17
                if stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
            if stor34 and marketGolds > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if stor34 * marketGolds / stor34 != marketGolds:
                revert with 'NH{q', 1
            if not stor35:
                if stor34 * marketGolds > -1:
                    revert with 'NH{q', 17
                if stor34 * marketGolds < stor34 * marketGolds:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 18
                if stor35 > -(stor34 * marketGolds / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
            if stor35 and myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512) > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 1
            if stor34 * marketGolds > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) - 1:
                revert with 'NH{q', 17
            if (stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
        if not block.timestamp - myMiners[address(arg1)].field_1280:
            if myMiners[address(arg1)].field_768 > -1:
                revert with 'NH{q', 17
            if myMiners[address(arg1)].field_768 < myMiners[address(arg1)].field_768:
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / myMiners[address(arg1)].field_768) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / myMiners[address(arg1)].field_768):
                        revert with 'NH{q', 18
                    return (0 / stor35 + (0 / myMiners[address(arg1)].field_768))
                if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 1
                if 0 > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 * myMiners[address(arg1)].field_768 < 0:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -(stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (0 / stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
            if stor34 and eth.balance(this.address) > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / myMiners[address(arg1)].field_768) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / myMiners[address(arg1)].field_768):
                        revert with 'NH{q', 18
                    return (stor34 * eth.balance(this.address) / stor35 + (0 / myMiners[address(arg1)].field_768))
                if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 1
                if 0 > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 * myMiners[address(arg1)].field_768 < 0:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -(stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
            if stor34 and marketGolds > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if stor34 * marketGolds / stor34 != marketGolds:
                revert with 'NH{q', 1
            if not stor35:
                if stor34 * marketGolds > -1:
                    revert with 'NH{q', 17
                if stor34 * marketGolds < stor34 * marketGolds:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -(stor34 * marketGolds / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768))
            if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                revert with 'NH{q', 1
            if stor34 * marketGolds > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if (stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768:
                revert with 'NH{q', 18
            if stor35 > -((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768))
        if block.timestamp - myMiners[address(arg1)].field_1280 and myMiners[address(arg1)].field_512 > -1 / block.timestamp - myMiners[address(arg1)].field_1280:
            revert with 'NH{q', 17
        if not block.timestamp - myMiners[address(arg1)].field_1280:
            revert with 'NH{q', 18
        if (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) / block.timestamp - myMiners[address(arg1)].field_1280 != myMiners[address(arg1)].field_512:
            revert with 'NH{q', 1
        if myMiners[address(arg1)].field_768 > (-1 * block.timestamp * myMiners[address(arg1)].field_512) + (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) - 1:
            revert with 'NH{q', 17
        if myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) < myMiners[address(arg1)].field_768:
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 18
                if stor35 > -(0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                    revert with 'NH{q', 18
                return (0 / stor35 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
            if stor35 and myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 1
            if 0 > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * block.timestamp * myMiners[address(arg1)].field_512 * stor35) + (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) - 1:
                revert with 'NH{q', 17
            if (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) < 0:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -((myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (0 / stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
        if stor34 and eth.balance(this.address) > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 18
                if stor35 > -(0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + (0 / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
            if stor35 and myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 1
            if 0 > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * block.timestamp * myMiners[address(arg1)].field_512 * stor35) + (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) - 1:
                revert with 'NH{q', 17
            if (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) < 0:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -((myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
        if stor34 and marketGolds > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * marketGolds / stor34 != marketGolds:
            revert with 'NH{q', 1
        if not stor35:
            if stor34 * marketGolds > -1:
                revert with 'NH{q', 17
            if stor34 * marketGolds < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -(stor34 * marketGolds / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
        if stor35 and myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512) > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 1
        if stor34 * marketGolds > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * block.timestamp * myMiners[address(arg1)].field_512 * stor35) + (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) - 1:
            revert with 'NH{q', 17
        if (stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 18
        if stor35 > -((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) - 1:
            revert with 'NH{q', 17
        if stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)) < stor35:
            revert with 'NH{q', 1
        if not stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)):
            revert with 'NH{q', 18
        return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (block.timestamp * myMiners[address(arg1)].field_512 * stor35) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (block.timestamp * myMiners[address(arg1)].field_512) - (myMiners[address(arg1)].field_1280 * myMiners[address(arg1)].field_512)))
    if sub_a99d09ae < CUTOFF_STEP:
        if not sub_a99d09ae:
            if myMiners[address(arg1)].field_768 > -1:
                revert with 'NH{q', 17
            if myMiners[address(arg1)].field_768 < myMiners[address(arg1)].field_768:
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / myMiners[address(arg1)].field_768) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / myMiners[address(arg1)].field_768):
                        revert with 'NH{q', 18
                    return (0 / stor35 + (0 / myMiners[address(arg1)].field_768))
                if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 1
                if 0 > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 * myMiners[address(arg1)].field_768 < 0:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -(stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (0 / stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
            if stor34 and eth.balance(this.address) > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
                revert with 'NH{q', 1
            if not stor34:
                if not stor35:
                    if not myMiners[address(arg1)].field_768:
                        revert with 'NH{q', 18
                    if stor35 > -(0 / myMiners[address(arg1)].field_768) - 1:
                        revert with 'NH{q', 17
                    if stor35 + (0 / myMiners[address(arg1)].field_768) < stor35:
                        revert with 'NH{q', 1
                    if not stor35 + (0 / myMiners[address(arg1)].field_768):
                        revert with 'NH{q', 18
                    return (stor34 * eth.balance(this.address) / stor35 + (0 / myMiners[address(arg1)].field_768))
                if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                    revert with 'NH{q', 17
                if not stor35:
                    revert with 'NH{q', 18
                if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 1
                if 0 > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 * myMiners[address(arg1)].field_768 < 0:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -(stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
            if stor34 and marketGolds > -1 / stor34:
                revert with 'NH{q', 17
            if not stor34:
                revert with 'NH{q', 18
            if stor34 * marketGolds / stor34 != marketGolds:
                revert with 'NH{q', 1
            if not stor35:
                if stor34 * marketGolds > -1:
                    revert with 'NH{q', 17
                if stor34 * marketGolds < stor34 * marketGolds:
                    revert with 'NH{q', 1
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -(stor34 * marketGolds / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768))
            if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                revert with 'NH{q', 1
            if stor34 * marketGolds > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if (stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768:
                revert with 'NH{q', 18
            if stor35 > -((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768))
        if sub_a99d09ae and myMiners[address(arg1)].field_512 > -1 / sub_a99d09ae:
            revert with 'NH{q', 17
        if not sub_a99d09ae:
            revert with 'NH{q', 18
        if sub_a99d09ae * myMiners[address(arg1)].field_512 / sub_a99d09ae != myMiners[address(arg1)].field_512:
            revert with 'NH{q', 1
        if myMiners[address(arg1)].field_768 > (-1 * sub_a99d09ae * myMiners[address(arg1)].field_512) - 1:
            revert with 'NH{q', 17
        if myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512) < myMiners[address(arg1)].field_768:
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 18
                if stor35 > -(0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                    revert with 'NH{q', 18
                return (0 / stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
            if stor35 and myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512) > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 1
            if 0 > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) - 1:
                revert with 'NH{q', 17
            if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) < 0:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (0 / stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
        if stor34 and eth.balance(this.address) > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                    revert with 'NH{q', 18
                if stor35 > -(0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + (0 / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
            if stor35 and myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512) > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 1
            if 0 > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) - 1:
                revert with 'NH{q', 17
            if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) < 0:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
        if stor34 and marketGolds > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * marketGolds / stor34 != marketGolds:
            revert with 'NH{q', 1
        if not stor35:
            if stor34 * marketGolds > -1:
                revert with 'NH{q', 17
            if stor34 * marketGolds < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -(stor34 * marketGolds / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
        if stor35 and myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512) > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 1
        if stor34 * marketGolds > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) - 1:
            revert with 'NH{q', 17
        if (stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 18
        if stor35 > -((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) - 1:
            revert with 'NH{q', 17
        if stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)) < stor35:
            revert with 'NH{q', 1
        if not stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)):
            revert with 'NH{q', 18
        return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (sub_a99d09ae * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (sub_a99d09ae * myMiners[address(arg1)].field_512)))
    if not CUTOFF_STEP:
        if myMiners[address(arg1)].field_768 > -1:
            revert with 'NH{q', 17
        if myMiners[address(arg1)].field_768 < myMiners[address(arg1)].field_768:
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -(0 / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (0 / stor35 + (0 / myMiners[address(arg1)].field_768))
            if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                revert with 'NH{q', 1
            if 0 > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if stor35 * myMiners[address(arg1)].field_768 < 0:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768:
                revert with 'NH{q', 18
            if stor35 > -(stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                revert with 'NH{q', 18
            return (0 / stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
        if stor34 and eth.balance(this.address) > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
            revert with 'NH{q', 1
        if not stor34:
            if not stor35:
                if not myMiners[address(arg1)].field_768:
                    revert with 'NH{q', 18
                if stor35 > -(0 / myMiners[address(arg1)].field_768) - 1:
                    revert with 'NH{q', 17
                if stor35 + (0 / myMiners[address(arg1)].field_768) < stor35:
                    revert with 'NH{q', 1
                if not stor35 + (0 / myMiners[address(arg1)].field_768):
                    revert with 'NH{q', 18
                return (stor34 * eth.balance(this.address) / stor35 + (0 / myMiners[address(arg1)].field_768))
            if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
                revert with 'NH{q', 17
            if not stor35:
                revert with 'NH{q', 18
            if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
                revert with 'NH{q', 1
            if 0 > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if stor35 * myMiners[address(arg1)].field_768 < 0:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768:
                revert with 'NH{q', 18
            if stor35 > -(stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + (stor35 * myMiners[address(arg1)].field_768 / myMiners[address(arg1)].field_768))
        if stor34 and marketGolds > -1 / stor34:
            revert with 'NH{q', 17
        if not stor34:
            revert with 'NH{q', 18
        if stor34 * marketGolds / stor34 != marketGolds:
            revert with 'NH{q', 1
        if not stor35:
            if stor34 * marketGolds > -1:
                revert with 'NH{q', 17
            if stor34 * marketGolds < stor34 * marketGolds:
                revert with 'NH{q', 1
            if not myMiners[address(arg1)].field_768:
                revert with 'NH{q', 18
            if stor35 > -(stor34 * marketGolds / myMiners[address(arg1)].field_768) - 1:
                revert with 'NH{q', 17
            if stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768))
        if stor35 and myMiners[address(arg1)].field_768 > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if stor35 * myMiners[address(arg1)].field_768 / stor35 != myMiners[address(arg1)].field_768:
            revert with 'NH{q', 1
        if stor34 * marketGolds > (-1 * stor35 * myMiners[address(arg1)].field_768) - 1:
            revert with 'NH{q', 17
        if (stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not myMiners[address(arg1)].field_768:
            revert with 'NH{q', 18
        if stor35 > -((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) - 1:
            revert with 'NH{q', 17
        if stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768) < stor35:
            revert with 'NH{q', 1
        if not stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768):
            revert with 'NH{q', 18
        return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (stor35 * myMiners[address(arg1)].field_768) / myMiners[address(arg1)].field_768))
    if CUTOFF_STEP and myMiners[address(arg1)].field_512 > -1 / CUTOFF_STEP:
        revert with 'NH{q', 17
    if not CUTOFF_STEP:
        revert with 'NH{q', 18
    if CUTOFF_STEP * myMiners[address(arg1)].field_512 / CUTOFF_STEP != myMiners[address(arg1)].field_512:
        revert with 'NH{q', 1
    if myMiners[address(arg1)].field_768 > (-1 * CUTOFF_STEP * myMiners[address(arg1)].field_512) - 1:
        revert with 'NH{q', 17
    if myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512) < myMiners[address(arg1)].field_768:
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -(0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (0 / stor35 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
        if stor35 and myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512) > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 1
        if 0 > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) - 1:
            revert with 'NH{q', 17
        if (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) < 0:
            revert with 'NH{q', 1
        if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 18
        if stor35 > -((myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) - 1:
            revert with 'NH{q', 17
        if stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor35:
            revert with 'NH{q', 1
        if not stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 'NH{q', 18
        return (0 / stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
    if stor34 and eth.balance(this.address) > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * eth.balance(this.address) / stor34 != eth.balance(this.address):
        revert with 'NH{q', 1
    if not stor34:
        if not stor35:
            if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
                revert with 'NH{q', 18
            if stor35 > -(0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) - 1:
                revert with 'NH{q', 17
            if stor35 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor35:
                revert with 'NH{q', 1
            if not stor35 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
                revert with 'NH{q', 18
            return (stor34 * eth.balance(this.address) / stor35 + (0 / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
        if stor35 and myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512) > -1 / stor35:
            revert with 'NH{q', 17
        if not stor35:
            revert with 'NH{q', 18
        if (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 1
        if 0 > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) - 1:
            revert with 'NH{q', 17
        if (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) < 0:
            revert with 'NH{q', 1
        if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 18
        if stor35 > -((myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) - 1:
            revert with 'NH{q', 17
        if stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor35:
            revert with 'NH{q', 1
        if not stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 'NH{q', 18
        return (stor34 * eth.balance(this.address) / stor35 + ((myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
    if stor34 and marketGolds > -1 / stor34:
        revert with 'NH{q', 17
    if not stor34:
        revert with 'NH{q', 18
    if stor34 * marketGolds / stor34 != marketGolds:
        revert with 'NH{q', 1
    if not stor35:
        if stor34 * marketGolds > -1:
            revert with 'NH{q', 17
        if stor34 * marketGolds < stor34 * marketGolds:
            revert with 'NH{q', 1
        if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
            revert with 'NH{q', 18
        if stor35 > -(stor34 * marketGolds / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) - 1:
            revert with 'NH{q', 17
        if stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor35:
            revert with 'NH{q', 1
        if not stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
            revert with 'NH{q', 18
        return (stor34 * eth.balance(this.address) / stor35 + (stor34 * marketGolds / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
    if stor35 and myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512) > -1 / stor35:
        revert with 'NH{q', 17
    if not stor35:
        revert with 'NH{q', 18
    if (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / stor35 != myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
        revert with 'NH{q', 1
    if stor34 * marketGolds > (-1 * myMiners[address(arg1)].field_768 * stor35) + (-1 * CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) - 1:
        revert with 'NH{q', 17
    if (stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) < stor34 * marketGolds:
        revert with 'NH{q', 1
    if not myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512):
        revert with 'NH{q', 18
    if stor35 > -((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) - 1:
        revert with 'NH{q', 17
    if stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)) < stor35:
        revert with 'NH{q', 1
    if not stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)):
        revert with 'NH{q', 18
    return (stor34 * eth.balance(this.address) / stor35 + ((stor34 * marketGolds) + (myMiners[address(arg1)].field_768 * stor35) + (CUTOFF_STEP * myMiners[address(arg1)].field_512 * stor35) / myMiners[address(arg1)].field_768 + (CUTOFF_STEP * myMiners[address(arg1)].field_512)))
}



}
