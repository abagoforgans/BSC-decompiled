contract main {




// =====================  Runtime code  =====================


#
#  - sellEggs()
#  - buyEggs(address arg1, uint256 arg2)
#  - sub_64c03a5e(?)
#  - sub_6ed2be1a(?)
#
const getTimeStamp = block.timestamp


address sub_176c8fd2Address;
uint256 sub_195a7339;
uint256 sub_b25e3c74;
uint256 sub_c63568c7;
uint256 PERCENTS_DIVIDER;
uint256 LOTTERY;
uint256 sub_1714d7f3;
uint256 sub_cf1cdecd;
uint256 sub_ebebcf3d;
uint256 MARKETING;
uint256 sub_59eec895;
uint256 sub_3a6cac7f;
uint256 sub_d7206d5d;
uint256 sub_c688f0fb;
uint256 sub_752a2628;
uint256 sub_0420c98e;
uint256 sub_ea4319b3;
uint256 sub_878fc432;
uint256 sub_99212eba;
uint256 sub_6cf46a5c;
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
uint256 stor40;
uint256 stor41;
uint8 contractStarted;
uint8 sub_bc13e89e; offset 8
uint256 stor42; offset 8
uint256 CUTOFF_STEP;
uint256 MIN_INVEST;
uint256 sub_950d91e9;
uint256 sub_94c2c612;
uint256 sub_1848b8dc;
address owner;
address projectAddress;
address partner1Address;
address partner2Address;
address marketingAddress;
address buybackAddress;
array of struct sub_2a3a0571;
mapping of struct myMiners;
mapping of uint256 userTickets;
mapping of address sub_c361c14d;
array of uint256 stor33502907836418749244169045844382937189522934634747984393157770024170991419832;
array of address stor33502907836418749244169045844382937189522934634747984393157770024170991419833;
array of uint256 stor33502907836418749244169045844382937189522934634747984393157770024170991419834;
array of uint256 stor33502907836418749244169045844382937189522934634747984393157770024170991419835;
array of uint256 stor33502907836418749244169045844382937189522934634747984393157770024170991419836;

function PERCENTS_DIVIDER() {
    return PERCENTS_DIVIDER
}

function sub_028ef4a5(?) {
    return sub_028ef4a5
}

function sub_0420c98e(?) {
    return sub_0420c98e
}

function getUserTickets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userTickets[stor28][address(arg1)]
}

function getMyMiners() {
    return myMiners[msg.sender].field_512
}

function sub_1714d7f3(?) {
    return sub_1714d7f3
}

function sub_176c8fd2(?) {
    return sub_176c8fd2Address
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
           myMiners[address(arg1)].field_2560,
           myMiners[address(arg1)].field_3072,
           myMiners[address(arg1)].field_2816
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

function sub_6cf46a5c(?) {
    return sub_6cf46a5c
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

function sub_878fc432(?) {
    return sub_878fc432
}

function partner2() {
    return partner2Address
}

function sub_8d1cad09(?) {
    return sub_8d1cad09
}

function owner() {
    return owner
}

function sub_94c2c612(?) {
    return sub_94c2c612
}

function sub_950d91e9(?) {
    return sub_950d91e9
}

function sub_99212eba(?) {
    return sub_99212eba
}

function partner1() {
    return partner1Address
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
           myMiners[arg1].field_2560,
           myMiners[arg1].field_2816,
           myMiners[arg1].field_3072
}

function sub_b25e3c74(?) {
    return sub_b25e3c74
}

function sub_bc13e89e(?) {
    return bool(sub_bc13e89e)
}

function sub_bdb6ce3d(?) {
    return sub_bdb6ce3d
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

function sub_c688f0fb(?) {
    return sub_c688f0fb
}

function sub_cf1cdecd(?) {
    return sub_cf1cdecd
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

function sub_ea4319b3(?) {
    return sub_ea4319b3
}

function sub_ebebcf3d(?) {
    return sub_ebebcf3d
}

function project() {
    return projectAddress
}

function buyback() {
    return buybackAddress
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

function sub_27ce6ee7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 20
    MARKETING = arg1
}

function sub_e6fe62c7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 2
    sub_ea4319b3 = arg1
}

function sub_7a62ead7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 50
    sub_59eec895 = arg1
}

function sub_9b9cb69f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 30
    sub_c688f0fb = arg1
}

function sub_d708c0ce(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 50
    sub_3a6cac7f = arg1
}

function sub_bfa9f304(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 <= 500
    sub_0420c98e = arg1
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

function sub_b8c770da(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    require arg1 >= 1
    require arg1 <= 100
    sub_e07661c1 = arg1
}

function sub_0d4b511a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    partner2Address = address(arg1)
}

function sub_796ed767(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    partner1Address = address(arg1)
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
    require arg1 >= 479520
    require arg1 <= 720 * 24 * 3600
    sub_195a7339 = arg1
}

function sub_f2e86acf(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg1 >= 479520
    require arg1 <= 720 * 24 * 3600
    sub_b25e3c74 = arg1
}

function sub_45f98c29(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    MIN_INVEST = 10^18 * arg1
}

function sub_bcc20aee(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_8d1cad09 = 10^18 * arg1
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

function getBalance() {
    require ext_code.size(sub_176c8fd2Address)
    staticcall sub_176c8fd2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_208b276a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    require arg2
    require arg2 <= sub_028ef4a5
    if myMiners[address(arg1)].field_512 > !arg2:
        revert with 0, 17
    if myMiners[address(arg1)].field_512 + arg2 < myMiners[address(arg1)].field_512:
        revert with 0, 1
    myMiners[address(arg1)].field_512 += arg2
}

function sub_df8300e1(?) {
    require calldata.size - 4 >= 128
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Admin use only.'
    if arg2 > 900:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Additional compound bonus max value is 900(90%).'
    if arg3 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Additional referral bonus max value is 100(10%).'
    if arg4 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Additional ticket bonus max value is 100 tickets.'
    stor42 = Mask(248, 0, bool(arg1))
    sub_878fc432 = arg2
    sub_99212eba = arg3
    sub_6cf46a5c = arg4
    return bool(arg1)
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
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (0 / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor41 + (stor41 * arg1 / arg1))
    if stor40 and arg3 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg3 / stor40 != arg3:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (stor40 * arg3 / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (stor40 * arg3 / stor41 + (stor41 * arg1 / arg1))
    if stor40 and arg2 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg2 / stor40 != arg2:
        revert with 0, 1
    if not stor41:
        if stor40 * arg2 > -1:
            revert with 0, 17
        if stor40 * arg2 < stor40 * arg2:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor40 * arg2 / arg1):
            revert with 0, 17
        if stor41 + (stor40 * arg2 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor40 * arg2 / arg1):
            revert with 0, 18
        return (stor40 * arg3 / stor41 + (stor40 * arg2 / arg1))
    if stor41 and arg1 > -1 / stor41:
        revert with 0, 17
    if not stor41:
        revert with 0, 18
    if stor41 * arg1 / stor41 != arg1:
        revert with 0, 1
    if stor40 * arg2 > !(stor41 * arg1):
        revert with 0, 17
    if (stor40 * arg2) + (stor41 * arg1) < stor40 * arg2:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor41 > !((stor40 * arg2) + (stor41 * arg1) / arg1):
        revert with 0, 17
    if stor41 + ((stor40 * arg2) + (stor41 * arg1) / arg1) < stor41:
        revert with 0, 1
    if not stor41 + ((stor40 * arg2) + (stor41 * arg1) / arg1):
        revert with 0, 18
    return (stor40 * arg3 / stor41 + ((stor40 * arg2) + (stor41 * arg1) / arg1))
}

function calculateEggBuy(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (0 / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor41 + (stor41 * arg1 / arg1))
    if stor40 and marketEggs > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * marketEggs / stor40 != marketEggs:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (stor40 * marketEggs / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1))
    if stor40 and arg2 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * arg2 / stor40 != arg2:
        revert with 0, 1
    if not stor41:
        if stor40 * arg2 > -1:
            revert with 0, 17
        if stor40 * arg2 < stor40 * arg2:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor40 * arg2 / arg1):
            revert with 0, 17
        if stor41 + (stor40 * arg2 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor40 * arg2 / arg1):
            revert with 0, 18
        return (stor40 * marketEggs / stor41 + (stor40 * arg2 / arg1))
    if stor41 and arg1 > -1 / stor41:
        revert with 0, 17
    if not stor41:
        revert with 0, 18
    if stor41 * arg1 / stor41 != arg1:
        revert with 0, 1
    if stor40 * arg2 > !(stor41 * arg1):
        revert with 0, 17
    if (stor40 * arg2) + (stor41 * arg1) < stor40 * arg2:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor41 > !((stor40 * arg2) + (stor41 * arg1) / arg1):
        revert with 0, 17
    if stor41 + ((stor40 * arg2) + (stor41 * arg1) / arg1) < stor41:
        revert with 0, 1
    if not stor41 + ((stor40 * arg2) + (stor41 * arg1) / arg1):
        revert with 0, 18
    return (stor40 * marketEggs / stor41 + ((stor40 * arg2) + (stor41 * arg1) / arg1))
}

function calculateEggSell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_176c8fd2Address)
    staticcall sub_176c8fd2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (0 / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor41 + (stor41 * arg1 / arg1))
    if stor40 and ext_call.return_data[0] > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * ext_call.return_data[0] / stor40 != ext_call.return_data[0]:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (stor40 * ext_call.return_data[0] / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (stor40 * ext_call.return_data[0] / stor41 + (stor41 * arg1 / arg1))
    if stor40 and marketEggs > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * marketEggs / stor40 != marketEggs:
        revert with 0, 1
    if not stor41:
        if stor40 * marketEggs > -1:
            revert with 0, 17
        if stor40 * marketEggs < stor40 * marketEggs:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor40 * marketEggs / arg1):
            revert with 0, 17
        if stor41 + (stor40 * marketEggs / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor40 * marketEggs / arg1):
            revert with 0, 18
        return (stor40 * ext_call.return_data[0] / stor41 + (stor40 * marketEggs / arg1))
    if stor41 and arg1 > -1 / stor41:
        revert with 0, 17
    if not stor41:
        revert with 0, 18
    if stor41 * arg1 / stor41 != arg1:
        revert with 0, 1
    if stor40 * marketEggs > !(stor41 * arg1):
        revert with 0, 17
    if (stor40 * marketEggs) + (stor41 * arg1) < stor40 * marketEggs:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor41 > !((stor40 * marketEggs) + (stor41 * arg1) / arg1):
        revert with 0, 17
    if stor41 + ((stor40 * marketEggs) + (stor41 * arg1) / arg1) < stor41:
        revert with 0, 1
    if not stor41 + ((stor40 * marketEggs) + (stor41 * arg1) / arg1):
        revert with 0, 18
    return (stor40 * ext_call.return_data[0] / stor41 + ((stor40 * marketEggs) + (stor41 * arg1) / arg1))
}

function calculateEggBuySimple(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_176c8fd2Address)
    staticcall sub_176c8fd2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (0 / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor41 + (stor41 * arg1 / arg1))
    if stor40 and marketEggs > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * marketEggs / stor40 != marketEggs:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (stor40 * marketEggs / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1))
    if stor40 and ext_call.return_data[0] > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * ext_call.return_data[0] / stor40 != ext_call.return_data[0]:
        revert with 0, 1
    if not stor41:
        if stor40 * ext_call.return_data[0] > -1:
            revert with 0, 17
        if stor40 * ext_call.return_data[0] < stor40 * ext_call.return_data[0]:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor40 * ext_call.return_data[0] / arg1):
            revert with 0, 17
        if stor41 + (stor40 * ext_call.return_data[0] / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor40 * ext_call.return_data[0] / arg1):
            revert with 0, 18
        return (stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1))
    if stor41 and arg1 > -1 / stor41:
        revert with 0, 17
    if not stor41:
        revert with 0, 18
    if stor41 * arg1 / stor41 != arg1:
        revert with 0, 1
    if stor40 * ext_call.return_data[0] > !(stor41 * arg1):
        revert with 0, 17
    if (stor40 * ext_call.return_data[0]) + (stor41 * arg1) < stor40 * ext_call.return_data[0]:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor41 > !((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1):
        revert with 0, 17
    if stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) < stor41:
        revert with 0, 1
    if not stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1):
        revert with 0, 18
    return (stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1))
}

function sub_cc3e9c78(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_176c8fd2Address)
    staticcall sub_176c8fd2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg2:
        revert with 0, 17
    if ext_call.return_data[0] + arg2 < ext_call.return_data[0]:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return (0 / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return (0 / stor41 + (stor41 * arg1 / arg1))
    if stor40 and ext_call.return_data[0] + arg2 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if (ext_call.return_data[0] * stor40) + (arg2 * stor40) / stor40 != ext_call.return_data[0] + arg2:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            return ((ext_call.return_data[0] * stor40) + (arg2 * stor40) / stor41 + (0 / arg1))
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        return ((ext_call.return_data[0] * stor40) + (arg2 * stor40) / stor41 + (stor41 * arg1 / arg1))
    if stor40 and marketEggs > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * marketEggs / stor40 != marketEggs:
        revert with 0, 1
    if not stor41:
        if stor40 * marketEggs > -1:
            revert with 0, 17
        if stor40 * marketEggs < stor40 * marketEggs:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor40 * marketEggs / arg1):
            revert with 0, 17
        if stor41 + (stor40 * marketEggs / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor40 * marketEggs / arg1):
            revert with 0, 18
        return ((ext_call.return_data[0] * stor40) + (arg2 * stor40) / stor41 + (stor40 * marketEggs / arg1))
    if stor41 and arg1 > -1 / stor41:
        revert with 0, 17
    if not stor41:
        revert with 0, 18
    if stor41 * arg1 / stor41 != arg1:
        revert with 0, 1
    if stor40 * marketEggs > !(stor41 * arg1):
        revert with 0, 17
    if (stor40 * marketEggs) + (stor41 * arg1) < stor40 * marketEggs:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor41 > !((stor40 * marketEggs) + (stor41 * arg1) / arg1):
        revert with 0, 17
    if stor41 + ((stor40 * marketEggs) + (stor41 * arg1) / arg1) < stor41:
        revert with 0, 1
    if not stor41 + ((stor40 * marketEggs) + (stor41 * arg1) / arg1):
        revert with 0, 18
    return ((ext_call.return_data[0] * stor40) + (arg2 * stor40) / stor41 + ((stor40 * marketEggs) + (stor41 * arg1) / arg1))
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

function chooseWinner() {
    if sub_360498d1 > block.timestamp:
        revert with 0, 1
    if block.timestamp < sub_360498d1:
        revert with 0, 17
    if block.timestamp - sub_360498d1 < sub_bdb6ce3d:
        if participants < sub_e2662c6b:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Lottery must run for LOTTERY_STEP or there must be MAX_LOTTERY_PARTICIPANTS particpants'
    if not participants:
        sub_360498d1 = block.timestamp
    else:
        if participants > test266151307():
            revert with 0, 65
        if participants:
            mem[128 len 32 * participants] = call.data[calldata.size len 32 * participants]
        if participants > test266151307():
            revert with 0, 65
        mem[(32 * participants) + 128] = participants
        if participants:
            mem[(32 * participants) + 160 len 32 * participants] = call.data[calldata.size len 32 * participants]
        idx = 0
        s = 0
        while idx < participants:
            if s > -2:
                revert with 0, 17
            if s + 1 < s:
                revert with 0, 1
            mem[0] = sub_c361c14d[stor28][idx]
            mem[32] = sha3(sub_c5196426, 56)
            if s + 1 > !(userTickets[stor28][stor57[stor28][idx]] / 10^18):
                revert with 0, 17
            if userTickets[stor28][stor57[stor28][idx]] / 10^18 < 0:
                revert with 0, 1
            if idx >= participants:
                revert with 0, 50
            mem[(32 * idx) + 128] = s + 1
            if idx >= mem[(32 * participants) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * participants) + 160] = s + (userTickets[stor28][stor57[stor28][idx]] / 10^18) + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (userTickets[stor28][stor57[stor28][idx]] / 10^18) + 1
            continue 
        if block.number < 1:
            revert with 0, 17
        mem[(64 * participants) + 164] = this.address
        require ext_code.size(sub_176c8fd2Address)
        staticcall sub_176c8fd2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(64 * participants) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(64 * participants) + ceil32(return_data.size) + 192] = block.hash(block.number - 1)
        mem[(64 * participants) + ceil32(return_data.size) + 224] = block.timestamp
        mem[(64 * participants) + ceil32(return_data.size) + 256] = currentPot
        mem[(64 * participants) + ceil32(return_data.size) + 288] = block.difficulty
        mem[(64 * participants) + ceil32(return_data.size) + 320] = marketEggs
        mem[(64 * participants) + ceil32(return_data.size) + 352] = ext_call.return_data[0]
        mem[(64 * participants) + ceil32(return_data.size) + 160] = 192
        require participants
        if sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketEggs, ext_call.return_data[0]) % participants > -2:
            revert with 0, 17
        if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketEggs, ext_call.return_data[0]) % participants) + 1 < sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketEggs, ext_call.return_data[0]) % participants:
            revert with 0, 1
        idx = 0
        while idx < participants:
            if idx >= participants:
                revert with 0, 50
            if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketEggs, ext_call.return_data[0]) % participants) + 1 < mem[(32 * idx) + 128]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[(32 * participants) + 128]:
                revert with 0, 50
            if (sha3(block.hash(block.number - 1), block.timestamp, currentPot, block.difficulty, marketEggs, ext_call.return_data[0]) % participants) + 1 > mem[(32 * idx) + (32 * participants) + 160]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not currentPot:
                require ext_code.size(sub_176c8fd2Address)
                staticcall sub_176c8fd2Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 > ext_call.return_data[0]:
                    revert with 0, 1
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                if not stor40:
                    if stor41:
                        if stor41 and 0 > -1 / stor41:
                            revert with 0, 17
                        if stor41:
                            if 0 / stor41:
                                revert with 0, 1
                else:
                    if stor40 and marketEggs > -1 / stor40:
                        revert with 0, 17
                    if stor40:
                        if stor40 * marketEggs / stor40 != marketEggs:
                            revert with 0, 1
                        if not stor40:
                            if stor41:
                                if stor41 and 0 > -1 / stor41:
                                    revert with 0, 17
                                if stor41:
                                    if 0 / stor41:
                                        revert with 0, 1
                        else:
                            if stor40 and ext_call.return_data[0] > -1 / stor40:
                                revert with 0, 17
                            if stor40:
                                if stor40 * ext_call.return_data[0] / stor40 != ext_call.return_data[0]:
                                    revert with 0, 1
                                if not stor41:
                                    if stor40 * ext_call.return_data[0] > -1:
                                        revert with 0, 17
                                    if stor40 * ext_call.return_data[0] < stor40 * ext_call.return_data[0]:
                                        revert with 0, 1
                                else:
                                    if stor41 and 0 > -1 / stor41:
                                        revert with 0, 17
                                    if stor41:
                                        if 0 / stor41:
                                            revert with 0, 1
                                        if stor40 * ext_call.return_data[0] > -1:
                                            revert with 0, 17
                                        if stor40 * ext_call.return_data[0] < stor40 * ext_call.return_data[0]:
                                            revert with 0, 1
                revert with 0, 18
            if currentPot and 9 > -1 / currentPot:
                revert with 0, 17
            if not currentPot:
                revert with 0, 18
            if 9 * currentPot / currentPot != 9:
                revert with 0, 1
            require ext_code.size(sub_176c8fd2Address)
            staticcall sub_176c8fd2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 9 * currentPot / 10 > ext_call.return_data[0]:
                revert with 0, 1
            if ext_call.return_data[0] < 9 * currentPot / 10:
                revert with 0, 17
            if not stor40:
                if not stor41:
                    if not 9 * currentPot / 10:
                        revert with 0, 18
                    if stor41 > !(0 / 9 * currentPot / 10):
                        revert with 0, 17
                    if stor41 + (0 / 9 * currentPot / 10) < stor41:
                        revert with 0, 1
                    if not stor41 + (0 / 9 * currentPot / 10):
                        revert with 0, 18
                    if not sub_b25e3c74:
                        revert with 0, 18
                    if myMiners[stor57[stor28][idx]].field_512 > !(0 / stor41 + (0 / 9 * currentPot / 10) / sub_b25e3c74):
                        revert with 0, 17
                    if myMiners[stor57[stor28][idx]].field_512 + (0 / stor41 + (0 / 9 * currentPot / 10) / sub_b25e3c74) < myMiners[stor57[stor28][idx]].field_512:
                        revert with 0, 1
                    myMiners[stor57[stor28][idx]].field_512 += 0 / stor41 + (0 / 9 * currentPot / 10) / sub_b25e3c74
                    if myMiners[stor57[stor28][idx]].field_1024 > !(0 / stor41 + (0 / 9 * currentPot / 10)):
                        revert with 0, 17
                    if myMiners[stor57[stor28][idx]].field_1024 + (0 / stor41 + (0 / 9 * currentPot / 10)) < myMiners[stor57[stor28][idx]].field_1024:
                        revert with 0, 1
                    myMiners[stor57[stor28][idx]].field_1024 += 0 / stor41 + (0 / 9 * currentPot / 10)
                    if sub_474a5ec1 > !(0 / stor41 + (0 / 9 * currentPot / 10)):
                        revert with 0, 17
                    if sub_474a5ec1 + (0 / stor41 + (0 / 9 * currentPot / 10)) < sub_474a5ec1:
                        revert with 0, 1
                    sub_474a5ec1 += 0 / stor41 + (0 / 9 * currentPot / 10)
                else:
                    if stor41 and 9 * currentPot / 10 > -1 / stor41:
                        revert with 0, 17
                    if not stor41:
                        revert with 0, 18
                    if stor41 * 9 * currentPot / 10 / stor41 != 9 * currentPot / 10:
                        revert with 0, 1
                    if 0 > !(stor41 * 9 * currentPot / 10):
                        revert with 0, 17
                    if stor41 * 9 * currentPot / 10 < 0:
                        revert with 0, 1
                    if not 9 * currentPot / 10:
                        revert with 0, 18
                    if stor41 > !(stor41 * 9 * currentPot / 10 / 9 * currentPot / 10):
                        revert with 0, 17
                    if stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10) < stor41:
                        revert with 0, 1
                    if not stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10):
                        revert with 0, 18
                    if not sub_b25e3c74:
                        revert with 0, 18
                    if myMiners[stor57[stor28][idx]].field_512 > !(0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_b25e3c74):
                        revert with 0, 17
                    if myMiners[stor57[stor28][idx]].field_512 + (0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_b25e3c74) < myMiners[stor57[stor28][idx]].field_512:
                        revert with 0, 1
                    myMiners[stor57[stor28][idx]].field_512 += 0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_b25e3c74
                    if myMiners[stor57[stor28][idx]].field_1024 > !(0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)):
                        revert with 0, 17
                    if myMiners[stor57[stor28][idx]].field_1024 + (0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)) < myMiners[stor57[stor28][idx]].field_1024:
                        revert with 0, 1
                    myMiners[stor57[stor28][idx]].field_1024 += 0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)
                    if sub_474a5ec1 > !(0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)):
                        revert with 0, 17
                    if sub_474a5ec1 + (0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)) < sub_474a5ec1:
                        revert with 0, 1
                    sub_474a5ec1 += 0 / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)
            else:
                if stor40 and marketEggs > -1 / stor40:
                    revert with 0, 17
                if not stor40:
                    revert with 0, 18
                if stor40 * marketEggs / stor40 != marketEggs:
                    revert with 0, 1
                if not stor40:
                    if not stor41:
                        if not 9 * currentPot / 10:
                            revert with 0, 18
                        if stor41 > !(0 / 9 * currentPot / 10):
                            revert with 0, 17
                        if stor41 + (0 / 9 * currentPot / 10) < stor41:
                            revert with 0, 1
                        if not stor41 + (0 / 9 * currentPot / 10):
                            revert with 0, 18
                        if not sub_b25e3c74:
                            revert with 0, 18
                        if myMiners[stor57[stor28][idx]].field_512 > !(stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10) / sub_b25e3c74):
                            revert with 0, 17
                        if myMiners[stor57[stor28][idx]].field_512 + (stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10) / sub_b25e3c74) < myMiners[stor57[stor28][idx]].field_512:
                            revert with 0, 1
                        myMiners[stor57[stor28][idx]].field_512 += stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10) / sub_b25e3c74
                        if myMiners[stor57[stor28][idx]].field_1024 > !(stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10)):
                            revert with 0, 17
                        if myMiners[stor57[stor28][idx]].field_1024 + (stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10)) < myMiners[stor57[stor28][idx]].field_1024:
                            revert with 0, 1
                        myMiners[stor57[stor28][idx]].field_1024 += stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10)
                        if sub_474a5ec1 > !(stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10)):
                            revert with 0, 17
                        if sub_474a5ec1 + (stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 0, 1
                        sub_474a5ec1 += stor40 * marketEggs / stor41 + (0 / 9 * currentPot / 10)
                    else:
                        if stor41 and 9 * currentPot / 10 > -1 / stor41:
                            revert with 0, 17
                        if not stor41:
                            revert with 0, 18
                        if stor41 * 9 * currentPot / 10 / stor41 != 9 * currentPot / 10:
                            revert with 0, 1
                        if 0 > !(stor41 * 9 * currentPot / 10):
                            revert with 0, 17
                        if stor41 * 9 * currentPot / 10 < 0:
                            revert with 0, 1
                        if not 9 * currentPot / 10:
                            revert with 0, 18
                        if stor41 > !(stor41 * 9 * currentPot / 10 / 9 * currentPot / 10):
                            revert with 0, 17
                        if stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10) < stor41:
                            revert with 0, 1
                        if not stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10):
                            revert with 0, 18
                        if not sub_b25e3c74:
                            revert with 0, 18
                        if myMiners[stor57[stor28][idx]].field_512 > !(stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_b25e3c74):
                            revert with 0, 17
                        if myMiners[stor57[stor28][idx]].field_512 + (stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_b25e3c74) < myMiners[stor57[stor28][idx]].field_512:
                            revert with 0, 1
                        myMiners[stor57[stor28][idx]].field_512 += stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10) / sub_b25e3c74
                        if myMiners[stor57[stor28][idx]].field_1024 > !(stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)):
                            revert with 0, 17
                        if myMiners[stor57[stor28][idx]].field_1024 + (stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)) < myMiners[stor57[stor28][idx]].field_1024:
                            revert with 0, 1
                        myMiners[stor57[stor28][idx]].field_1024 += stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)
                        if sub_474a5ec1 > !(stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)):
                            revert with 0, 17
                        if sub_474a5ec1 + (stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 0, 1
                        sub_474a5ec1 += stor40 * marketEggs / stor41 + (stor41 * 9 * currentPot / 10 / 9 * currentPot / 10)
                else:
                    if stor40 and ext_call.return_data[0] - (9 * currentPot / 10) > -1 / stor40:
                        revert with 0, 17
                    if not stor40:
                        revert with 0, 18
                    if (ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / stor40 != ext_call.return_data[0] - (9 * currentPot / 10):
                        revert with 0, 1
                    if not stor41:
                        if (ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) > -1:
                            revert with 0, 17
                        if not 9 * currentPot / 10:
                            revert with 0, 18
                        if stor41 > !((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10):
                            revert with 0, 17
                        if stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10) < stor41:
                            revert with 0, 1
                        if not stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10):
                            revert with 0, 18
                        if not sub_b25e3c74:
                            revert with 0, 18
                        if myMiners[stor57[stor28][idx]].field_512 > !(stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10) / sub_b25e3c74):
                            revert with 0, 17
                        if myMiners[stor57[stor28][idx]].field_512 + (stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10) / sub_b25e3c74) < myMiners[stor57[stor28][idx]].field_512:
                            revert with 0, 1
                        myMiners[stor57[stor28][idx]].field_512 += stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10) / sub_b25e3c74
                        if myMiners[stor57[stor28][idx]].field_1024 > !(stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10)):
                            revert with 0, 17
                        if myMiners[stor57[stor28][idx]].field_1024 + (stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10)) < myMiners[stor57[stor28][idx]].field_1024:
                            revert with 0, 1
                        myMiners[stor57[stor28][idx]].field_1024 += stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10)
                        if sub_474a5ec1 > !(stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10)):
                            revert with 0, 17
                        if sub_474a5ec1 + (stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 0, 1
                        sub_474a5ec1 += stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) / 9 * currentPot / 10)
                    else:
                        if stor41 and 9 * currentPot / 10 > -1 / stor41:
                            revert with 0, 17
                        if not stor41:
                            revert with 0, 18
                        if stor41 * 9 * currentPot / 10 / stor41 != 9 * currentPot / 10:
                            revert with 0, 1
                        if (ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) > !(stor41 * 9 * currentPot / 10):
                            revert with 0, 17
                        if stor41 * 9 * currentPot / 10 < 0:
                            revert with 0, 1
                        if not 9 * currentPot / 10:
                            revert with 0, 18
                        if stor41 > !((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10):
                            revert with 0, 17
                        if stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10) < stor41:
                            revert with 0, 1
                        if not stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10):
                            revert with 0, 18
                        if not sub_b25e3c74:
                            revert with 0, 18
                        if myMiners[stor57[stor28][idx]].field_512 > !(stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10) / sub_b25e3c74):
                            revert with 0, 17
                        if myMiners[stor57[stor28][idx]].field_512 + (stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10) / sub_b25e3c74) < myMiners[stor57[stor28][idx]].field_512:
                            revert with 0, 1
                        myMiners[stor57[stor28][idx]].field_512 += stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10) / sub_b25e3c74
                        if myMiners[stor57[stor28][idx]].field_1024 > !(stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10)):
                            revert with 0, 17
                        if myMiners[stor57[stor28][idx]].field_1024 + (stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10)) < myMiners[stor57[stor28][idx]].field_1024:
                            revert with 0, 1
                        myMiners[stor57[stor28][idx]].field_1024 += stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10)
                        if sub_474a5ec1 > !(stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10)):
                            revert with 0, 17
                        if sub_474a5ec1 + (stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10)) < sub_474a5ec1:
                            revert with 0, 1
                        sub_474a5ec1 += stor40 * marketEggs / stor41 + ((ext_call.return_data[0] * stor40) - (9 * currentPot / 10 * stor40) + (stor41 * 9 * currentPot / 10) / 9 * currentPot / 10)
            if not currentPot:
                if not PERCENTS_DIVIDER:
                    revert with 0, 18
                require ext_code.size(sub_176c8fd2Address)
                call sub_176c8fd2Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args buybackAddress, 0 / PERCENTS_DIVIDER
            else:
                if currentPot and LOTTERY > -1 / currentPot:
                    revert with 0, 17
                if not currentPot:
                    revert with 0, 18
                if currentPot * LOTTERY / currentPot != LOTTERY:
                    revert with 0, 1
                if not PERCENTS_DIVIDER:
                    revert with 0, 18
                require ext_code.size(sub_176c8fd2Address)
                call sub_176c8fd2Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args buybackAddress, currentPot * LOTTERY / PERCENTS_DIVIDER
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            sub_2a3a0571.length++
            stor4A11[stor54.length] = sub_c5196426
            stor4A11[stor54.length] = sub_c361c14d[stor28][idx]
            stor4A11[stor54.length] = 9 * currentPot / 10
            stor4A11[stor54.length] = participants
            stor4A11[stor54.length] = totalTickets
            emit LotteryWinner((9 * currentPot / 10), sub_c361c14d[stor28][idx], sub_c5196426);
            currentPot = 0
            participants = 0
            totalTickets = 0
            sub_360498d1 = block.timestamp
            if sub_c5196426 > -2:
                revert with 0, 17
            if sub_c5196426 + 1 < sub_c5196426:
                revert with 0, 1
            sub_c5196426++
}

function sub_bdd1ca27(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_176c8fd2Address)
    staticcall sub_176c8fd2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 1
    if arg1 > ext_call.return_data[0] + arg1:
        revert with 0, 1
    if ext_call.return_data[0] + arg1 < arg1:
        revert with 0, 17
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            if not sub_195a7339:
                revert with 0, 18
            if 0 / stor41 + (0 / arg1) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 0, 17
            if 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 != 0 / stor41 + (0 / arg1) / sub_195a7339:
                revert with 0, 1
            require ext_code.size(sub_176c8fd2Address)
            staticcall sub_176c8fd2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !arg1:
                revert with 0, 17
            if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                revert with 0, 1
            if not stor40:
                if not stor41:
                    if not 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                        revert with 0, 18
                    if stor41 > !(0 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                        revert with 0, 17
                    if stor41 + (0 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                        revert with 0, 1
                    if not stor41 + (0 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                        revert with 0, 18
                    return 0 / stor41 + (0 / arg1) / sub_195a7339, 0 / stor41 + (0 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339)
                if stor41 and 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339 > -1 / stor41:
                    revert with 0, 17
                if not stor41:
                    revert with 0, 18
                if 24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if 24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 < 0:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 18
                return 0 / stor41 + (0 / arg1) / sub_195a7339, 
                       0 / stor41 + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339)
            if stor40 and ext_call.return_data[0] + arg1 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor40 != ext_call.return_data[0] + arg1:
                revert with 0, 1
            if not stor40:
                if not stor41:
                    if not 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                        revert with 0, 18
                    if stor41 > !(0 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                        revert with 0, 17
                    if stor41 + (0 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                        revert with 0, 1
                    if not stor41 + (0 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                        revert with 0, 18
                    return 0 / stor41 + (0 / arg1) / sub_195a7339, 
                           (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (0 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339)
                if stor41 and 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339 > -1 / stor41:
                    revert with 0, 17
                if not stor41:
                    revert with 0, 18
                if 24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if 24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 < 0:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 18
                return 0 / stor41 + (0 / arg1) / sub_195a7339, 
                       (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339)
            if stor40 and marketEggs > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if stor40 * marketEggs / stor40 != marketEggs:
                revert with 0, 1
            if not stor41:
                if stor40 * marketEggs > -1:
                    revert with 0, 17
                if stor40 * marketEggs < stor40 * marketEggs:
                    revert with 0, 1
                if not 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(stor40 * marketEggs / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (stor40 * marketEggs / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (stor40 * marketEggs / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 18
                return 0 / stor41 + (0 / arg1) / sub_195a7339, 
                       (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (stor40 * marketEggs / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339)
            if stor41 and 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339 > -1 / stor41:
                revert with 0, 17
            if not stor41:
                revert with 0, 18
            if 24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                revert with 0, 1
            if stor40 * marketEggs > !(24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                revert with 0, 17
            if (stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339) < stor40 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !((stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339) / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339) / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339) / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339):
                revert with 0, 18
            return 0 / stor41 + (0 / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (0 / arg1) / sub_195a7339) / 24 * 3600 * 0 / stor41 + (0 / arg1) / sub_195a7339)
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        if not sub_195a7339:
            revert with 0, 18
        if 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 != 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
            revert with 0, 1
        require ext_code.size(sub_176c8fd2Address)
        staticcall sub_176c8fd2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg1:
            revert with 0, 17
        if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
            revert with 0, 1
        if not stor40:
            if not stor41:
                if not 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(0 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (0 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (0 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                    revert with 0, 18
                return 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                       0 / stor41 + (0 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
            if stor41 and 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 > -1 / stor41:
                revert with 0, 17
            if not stor41:
                revert with 0, 18
            if 24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 18
            return 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                   0 / stor41 + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
        if stor40 and ext_call.return_data[0] + arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor40 != ext_call.return_data[0] + arg1:
            revert with 0, 1
        if not stor40:
            if not stor41:
                if not 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(0 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (0 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (0 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                    revert with 0, 18
                return 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                       (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (0 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
            if stor41 and 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 > -1 / stor41:
                revert with 0, 17
            if not stor41:
                revert with 0, 18
            if 24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 18
            return 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
        if stor40 and marketEggs > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * marketEggs / stor40 != marketEggs:
            revert with 0, 1
        if not stor41:
            if stor40 * marketEggs > -1:
                revert with 0, 17
            if stor40 * marketEggs < stor40 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(stor40 * marketEggs / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (stor40 * marketEggs / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (stor40 * marketEggs / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 18
            return 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (stor40 * marketEggs / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
        if stor41 and 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if 24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
            revert with 0, 1
        if stor40 * marketEggs > !(24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
            revert with 0, 17
        if (stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor40 * marketEggs:
            revert with 0, 1
        if not 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
            revert with 0, 18
        if stor41 > !((stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
            revert with 0, 17
        if stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
            revert with 0, 1
        if not stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
            revert with 0, 18
        return 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
               (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) / 24 * 3600 * 0 / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
    if stor40 and marketEggs > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * marketEggs / stor40 != marketEggs:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not arg1:
                revert with 0, 18
            if stor41 > !(0 / arg1):
                revert with 0, 17
            if stor41 + (0 / arg1) < stor41:
                revert with 0, 1
            if not stor41 + (0 / arg1):
                revert with 0, 18
            if not sub_195a7339:
                revert with 0, 18
            if stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 0, 17
            if 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 != stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                revert with 0, 1
            require ext_code.size(sub_176c8fd2Address)
            staticcall sub_176c8fd2Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > !arg1:
                revert with 0, 17
            if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                revert with 0, 1
            if not stor40:
                if not stor41:
                    if not 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                        revert with 0, 18
                    if stor41 > !(0 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                        revert with 0, 17
                    if stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                        revert with 0, 1
                    if not stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                        revert with 0, 18
                    return stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339, 
                           0 / stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339)
                if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 > -1 / stor41:
                    revert with 0, 17
                if not stor41:
                    revert with 0, 18
                if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 < 0:
                    revert with 0, 1
                if not 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 18
                return stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339, 
                       0 / stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339)
            if stor40 and ext_call.return_data[0] + arg1 > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor40 != ext_call.return_data[0] + arg1:
                revert with 0, 1
            if not stor40:
                if not stor41:
                    if not 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                        revert with 0, 18
                    if stor41 > !(0 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                        revert with 0, 17
                    if stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                        revert with 0, 1
                    if not stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                        revert with 0, 18
                    return stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339, 
                           (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339)
                if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 > -1 / stor41:
                    revert with 0, 17
                if not stor41:
                    revert with 0, 18
                if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 1
                if 0 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 < 0:
                    revert with 0, 1
                if not 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 18
                return stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339, 
                       (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339)
            if stor40 and marketEggs > -1 / stor40:
                revert with 0, 17
            if not stor40:
                revert with 0, 18
            if stor40 * marketEggs / stor40 != marketEggs:
                revert with 0, 1
            if not stor41:
                if stor40 * marketEggs > -1:
                    revert with 0, 17
                if stor40 * marketEggs < stor40 * marketEggs:
                    revert with 0, 1
                if not 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                    revert with 0, 18
                return stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339, 
                       (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339)
            if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 > -1 / stor41:
                revert with 0, 17
            if not stor41:
                revert with 0, 18
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                revert with 0, 1
            if stor40 * marketEggs > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                revert with 0, 17
            if (stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) < stor40 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (0 / arg1) / sub_195a7339)
        if stor41 and arg1 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if stor41 * arg1 / stor41 != arg1:
            revert with 0, 1
        if 0 > !(stor41 * arg1):
            revert with 0, 17
        if stor41 * arg1 < 0:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor41 * arg1 / arg1):
            revert with 0, 17
        if stor41 + (stor41 * arg1 / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor41 * arg1 / arg1):
            revert with 0, 18
        if not sub_195a7339:
            revert with 0, 18
        if stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 != stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
            revert with 0, 1
        require ext_code.size(sub_176c8fd2Address)
        staticcall sub_176c8fd2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg1:
            revert with 0, 17
        if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
            revert with 0, 1
        if not stor40:
            if not stor41:
                if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                    revert with 0, 18
                return stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                       0 / stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
            if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 > -1 / stor41:
                revert with 0, 17
            if not stor41:
                revert with 0, 18
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                   0 / stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
        if stor40 and ext_call.return_data[0] + arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor40 != ext_call.return_data[0] + arg1:
            revert with 0, 1
        if not stor40:
            if not stor41:
                if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                    revert with 0, 18
                return stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                       (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
            if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 > -1 / stor41:
                revert with 0, 17
            if not stor41:
                revert with 0, 18
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
        if stor40 and marketEggs > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * marketEggs / stor40 != marketEggs:
            revert with 0, 1
        if not stor41:
            if stor40 * marketEggs > -1:
                revert with 0, 17
            if stor40 * marketEggs < stor40 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
        if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
            revert with 0, 1
        if stor40 * marketEggs > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
            revert with 0, 17
        if (stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor40 * marketEggs:
            revert with 0, 1
        if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339:
            revert with 0, 18
        if stor41 > !((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
            revert with 0, 17
        if stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) < stor41:
            revert with 0, 1
        if not stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339):
            revert with 0, 18
        return stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339, 
               (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (stor41 * arg1 / arg1) / sub_195a7339)
    if stor40 and ext_call.return_data[0] > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * ext_call.return_data[0] / stor40 != ext_call.return_data[0]:
        revert with 0, 1
    if not stor41:
        if stor40 * ext_call.return_data[0] > -1:
            revert with 0, 17
        if stor40 * ext_call.return_data[0] < stor40 * ext_call.return_data[0]:
            revert with 0, 1
        if not arg1:
            revert with 0, 18
        if stor41 > !(stor40 * ext_call.return_data[0] / arg1):
            revert with 0, 17
        if stor41 + (stor40 * ext_call.return_data[0] / arg1) < stor41:
            revert with 0, 1
        if not stor41 + (stor40 * ext_call.return_data[0] / arg1):
            revert with 0, 18
        if not sub_195a7339:
            revert with 0, 18
        if stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
            revert with 0, 17
        if 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 != stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
            revert with 0, 1
        require ext_code.size(sub_176c8fd2Address)
        staticcall sub_176c8fd2Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !arg1:
            revert with 0, 17
        if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
            revert with 0, 1
        if not stor40:
            if not stor41:
                if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                    revert with 0, 18
                return stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339, 
                       0 / stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339)
            if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 > -1 / stor41:
                revert with 0, 17
            if not stor41:
                revert with 0, 18
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339, 
                   0 / stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339)
        if stor40 and ext_call.return_data[0] + arg1 > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor40 != ext_call.return_data[0] + arg1:
            revert with 0, 1
        if not stor40:
            if not stor41:
                if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
                    revert with 0, 18
                if stor41 > !(0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                    revert with 0, 17
                if stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) < stor41:
                    revert with 0, 1
                if not stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                    revert with 0, 18
                return stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339, 
                       (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339)
            if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 > -1 / stor41:
                revert with 0, 17
            if not stor41:
                revert with 0, 18
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
                revert with 0, 1
            if 0 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                revert with 0, 17
            if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 < 0:
                revert with 0, 1
            if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339)
        if stor40 and marketEggs > -1 / stor40:
            revert with 0, 17
        if not stor40:
            revert with 0, 18
        if stor40 * marketEggs / stor40 != marketEggs:
            revert with 0, 1
        if not stor41:
            if stor40 * marketEggs > -1:
                revert with 0, 17
            if stor40 * marketEggs < stor40 * marketEggs:
                revert with 0, 1
            if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339)
        if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
            revert with 0, 1
        if stor40 * marketEggs > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
            revert with 0, 17
        if (stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) < stor40 * marketEggs:
            revert with 0, 1
        if not 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339:
            revert with 0, 18
        if stor41 > !((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
            revert with 0, 17
        if stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) < stor41:
            revert with 0, 1
        if not stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339):
            revert with 0, 18
        return stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339, 
               (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + (stor40 * ext_call.return_data[0] / arg1) / sub_195a7339)
    if stor41 and arg1 > -1 / stor41:
        revert with 0, 17
    if not stor41:
        revert with 0, 18
    if stor41 * arg1 / stor41 != arg1:
        revert with 0, 1
    if stor40 * ext_call.return_data[0] > !(stor41 * arg1):
        revert with 0, 17
    if (stor40 * ext_call.return_data[0]) + (stor41 * arg1) < stor40 * ext_call.return_data[0]:
        revert with 0, 1
    if not arg1:
        revert with 0, 18
    if stor41 > !((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1):
        revert with 0, 17
    if stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) < stor41:
        revert with 0, 1
    if not stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1):
        revert with 0, 18
    if not sub_195a7339:
        revert with 0, 18
    if stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
        revert with 0, 17
    if 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 != stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
        revert with 0, 1
    require ext_code.size(sub_176c8fd2Address)
    staticcall sub_176c8fd2Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(0 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339, 
                   0 / stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339)
        if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
            revert with 0, 1
        if 0 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
            revert with 0, 17
        if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 < 0:
            revert with 0, 1
        if not 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
            revert with 0, 18
        if stor41 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
            revert with 0, 17
        if stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) < stor41:
            revert with 0, 1
        if not stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
            revert with 0, 18
        return stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339, 
               0 / stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339)
    if stor40 and ext_call.return_data[0] + arg1 > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor40 != ext_call.return_data[0] + arg1:
        revert with 0, 1
    if not stor40:
        if not stor41:
            if not 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
                revert with 0, 18
            if stor41 > !(0 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
                revert with 0, 17
            if stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) < stor41:
                revert with 0, 1
            if not stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
                revert with 0, 18
            return stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339, 
                   (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (0 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339)
        if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 > -1 / stor41:
            revert with 0, 17
        if not stor41:
            revert with 0, 18
        if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
            revert with 0, 1
        if 0 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
            revert with 0, 17
        if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 < 0:
            revert with 0, 1
        if not 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
            revert with 0, 18
        if stor41 > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
            revert with 0, 17
        if stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) < stor41:
            revert with 0, 1
        if not stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
            revert with 0, 18
        return stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339, 
               (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339)
    if stor40 and marketEggs > -1 / stor40:
        revert with 0, 17
    if not stor40:
        revert with 0, 18
    if stor40 * marketEggs / stor40 != marketEggs:
        revert with 0, 1
    if not stor41:
        if stor40 * marketEggs > -1:
            revert with 0, 17
        if stor40 * marketEggs < stor40 * marketEggs:
            revert with 0, 1
        if not 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
            revert with 0, 18
        if stor41 > !(stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
            revert with 0, 17
        if stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) < stor41:
            revert with 0, 1
        if not stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
            revert with 0, 18
        return stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339, 
               (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + (stor40 * marketEggs / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339)
    if stor41 and 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 > -1 / stor41:
        revert with 0, 17
    if not stor41:
        revert with 0, 18
    if 24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339 / stor41 != 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
        revert with 0, 1
    if stor40 * marketEggs > !(24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
        revert with 0, 17
    if (stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) < stor40 * marketEggs:
        revert with 0, 1
    if not 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339:
        revert with 0, 18
    if stor41 > !((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
        revert with 0, 17
    if stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) < stor41:
        revert with 0, 1
    if not stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339):
        revert with 0, 18
    return stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339, 
           (ext_call.return_data[0] * stor40) + (arg1 * stor40) / stor41 + ((stor40 * marketEggs) + (24 * 3600 * stor41 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339) / 24 * 3600 * stor40 * marketEggs / stor41 + ((stor40 * ext_call.return_data[0]) + (stor41 * arg1) / arg1) / sub_195a7339)
}



}
