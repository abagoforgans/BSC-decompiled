contract main {




// =====================  Runtime code  =====================


const MAX_TREASURY_FEE = 1000


uint8 stor0; offset 160
address owner;
uint256 stor1;
uint8 stor2; offset 160
uint8 stor2; offset 168
address oracleAddress;
address adminAddress;
address operatorAddress;
uint256 bufferSeconds;
uint256 intervalSeconds;
uint256 minBetAmount;
uint256 treasuryFee;
uint256 treasuryAmount;
uint256 currentEpoch;
uint256 oracleLatestRoundId;
uint256 oracleUpdateAllowance;
mapping of struct ledger;
mapping of struct rounds;
array of uint256 userRounds;

function genesisLockOnce() {
    return bool(uint8(stor2.field_160))
}

function operatorAddress() {
    return operatorAddress
}

function treasuryAmount() {
    return treasuryAmount
}

function paused() {
    return bool(stor0)
}

function oracleUpdateAllowance() {
    return oracleUpdateAllowance
}

function ledger(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if ledger[arg1][arg2].field_0 >= 2:
        revert with 'NH{q', 33
    return ledger[arg1][arg2].field_0, ledger[arg1][arg2].field_256, bool(ledger[arg1][arg2].field_512)
}

function currentEpoch() {
    return currentEpoch
}

function intervalSeconds() {
    return intervalSeconds
}

function oracle() {
    return oracleAddress
}

function rounds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rounds[arg1].field_0, 
           rounds[arg1].field_256,
           rounds[arg1].field_512,
           rounds[arg1].field_768,
           rounds[arg1].field_1024,
           rounds[arg1].field_1280,
           rounds[arg1].field_1536,
           rounds[arg1].field_1792,
           rounds[arg1].field_2048,
           rounds[arg1].field_2304,
           rounds[arg1].field_2560,
           rounds[arg1].field_2816,
           rounds[arg1].field_3072,
           bool(rounds[arg1].field_3328)
}

function owner() {
    return owner
}

function treasuryFee() {
    return treasuryFee
}

function userRounds(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < userRounds[arg1]
    return userRounds[arg1][arg2]
}

function bufferSeconds() {
    return bufferSeconds
}

function oracleLatestRoundId() {
    return oracleLatestRoundId
}

function genesisStartOnce() {
    return bool(uint8(stor2.field_168))
}

function minBetAmount() {
    return minBetAmount
}

function adminAddress() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function betBull(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    emit 0x765cb391: msg.value
    emit 0xb0ed21b5: minBetAmount
    emit BetBull(msg.value, msg.sender, arg1);
    stor1 = 1
}

function betBear(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0, 'Contract not allowed'
    if msg.sender != tx.origin:
        revert with 0, 'Proxy contract not allowed'
    emit 0x765cb391: msg.value
    emit 0xb0ed21b5: minBetAmount
    if msg.value < minBetAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Bet amount must be greater than minBetAmount'
    emit BetBear(msg.value, msg.sender, arg1);
    stor1 = 1
}



}
