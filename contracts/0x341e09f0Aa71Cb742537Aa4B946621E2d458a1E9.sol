contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint256 latestDifficultyPeriodStarted;
uint256 epochCount;
uint256 _BLOCKS_PER_READJUSTMENT;
uint256 _MINIMUM_TARGET;
uint256 _MAXIMUM_TARGET;
uint256 miningTarget;
uint256 challengeNumber;
uint256 rewardEra;
uint256 maxSupplyForEra;
address lastRewardToAddress;
uint256 stor15;
uint256 lastRewardAmount;
uint256 lastRewardEthBlockNumber;
mapping of uint256 stor19;
uint256 tokensMinted;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 burnPercent;
uint256 storFEA3;

function burnPercent() {
    return burnPercent
}

function name() {
    return name[0 len name.length]
}

function lastRewardEthBlockNumber() {
    return lastRewardEthBlockNumber
}

function rewardEra() {
    return rewardEra
}

function decimals() {
    return decimals
}

function getMiningTarget() {
    return miningTarget
}

function _totalSupply() {
    return _totalSupply
}

function getChallengeNumber() {
    return challengeNumber
}

function maxSupplyForEra() {
    return maxSupplyForEra
}

function tokensMinted() {
    return tokensMinted
}

function lastRewardTo() {
    return address(lastRewardToAddress)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function epochCount() {
    return epochCount
}

function _MAXIMUM_TARGET() {
    return _MAXIMUM_TARGET
}

function miningTarget() {
    return miningTarget
}

function challengeNumber() {
    return challengeNumber
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _BLOCKS_PER_READJUSTMENT() {
    return _BLOCKS_PER_READJUSTMENT
}

function lastRewardAmount() {
    return lastRewardAmount
}

function latestDifficultyPeriodStarted() {
    return latestDifficultyPeriodStarted
}

function newOwner() {
    return newOwner
}

function _MINIMUM_TARGET() {
    return _MINIMUM_TARGET
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (_totalSupply - storFEA3)
}

function getMiningReward() {
    require 2^rewardEra > 0
    require 2^rewardEra
    return (30 * 10^decimals / 2^rewardEra)
}

function getMiningDifficulty() {
    require miningTarget > 0
    require miningTarget
    return (_MAXIMUM_TARGET / miningTarget)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function checkMintSolution(uint256 arg1, bytes32 arg2, bytes32 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require sha3(arg3, Mask(160, 96, msg.sender) >> 96, arg1) <= arg4
    return (arg2 == sha3(arg3, Mask(160, 96, msg.sender) >> 96, arg1))
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2:
        require arg2
        require burnPercent * arg2 / arg2 == burnPercent
    require burnPercent * arg2 / 1250 <= arg2
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 - (burnPercent * arg2 / 1250) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 - (burnPercent * arg2 / 1250) + balanceOf[arg1]
    emit 0xedddf252: (arg2 - (burnPercent * arg2 / 1250)), msg.sender, arg1
    require (burnPercent * arg2 / 1250) + storFEA3 >= storFEA3
    storFEA3 += burnPercent * arg2 / 1250
    emit 0xedddf252: (burnPercent * arg2 / 1250), msg.sender, 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg3:
        require arg3
        require burnPercent * arg3 / arg3 == burnPercent
    require burnPercent * arg3 / 1250 <= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 - (burnPercent * arg3 / 1250) + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] = arg3 - (burnPercent * arg3 / 1250) + balanceOf[address(arg2)]
    emit 0xedddf252: (arg3 - (burnPercent * arg3 / 1250)), arg1, arg2
    require (burnPercent * arg3 / 1250) + storFEA3 >= storFEA3
    storFEA3 += burnPercent * arg3 / 1250
    emit 0xedddf252: (burnPercent * arg3 / 1250), arg1, 0
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    allowance[msg.sender][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address rg1, address rg2, uint256 rg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function mint(uint256 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require sha3(challengeNumber, Mask(160, 96, msg.sender) >> 96, arg1) == arg2
    require sha3(challengeNumber, Mask(160, 96, msg.sender) >> 96, arg1) <= miningTarget
    stor19[stor12] = sha3(challengeNumber, Mask(160, 96, msg.sender) >> 96, arg1)
    require not stor19[stor12]
    require 2^rewardEra > 0
    require 2^rewardEra
    require (30 * 10^decimals / 2^rewardEra) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += 30 * 10^decimals / 2^rewardEra
    require (30 * 10^decimals / 2^rewardEra) + tokensMinted >= tokensMinted
    tokensMinted += 30 * 10^decimals / 2^rewardEra
    require maxSupplyForEra >= (30 * 10^decimals / 2^rewardEra) + tokensMinted
    uint256(stor15) = msg.sender or Mask(96, 160, uint256(stor15))
    lastRewardAmount = 30 * 10^decimals / 2^rewardEra
    lastRewardEthBlockNumber = block.number
    require 2^rewardEra > 0
    require 2^rewardEra
    require (30 * 10^decimals / 2^rewardEra) + tokensMinted >= tokensMinted
    if (30 * 10^decimals / 2^rewardEra) + tokensMinted > maxSupplyForEra:
        if rewardEra < 39:
            rewardEra++
    require 2^(rewardEra + 1) > 0
    require 2^(rewardEra + 1)
    maxSupplyForEra = _totalSupply - (_totalSupply / 2^(rewardEra + 1))
    require epochCount + 1 >= epochCount
    epochCount++
    require _BLOCKS_PER_READJUSTMENT
    if not epochCount + 1 % _BLOCKS_PER_READJUSTMENT:
        if block.number - latestDifficultyPeriodStarted >= 200 * _BLOCKS_PER_READJUSTMENT:
            if block.number - latestDifficultyPeriodStarted:
                require block.number - latestDifficultyPeriodStarted
                require (100 * block.number) - (100 * latestDifficultyPeriodStarted) / block.number - latestDifficultyPeriodStarted == 100
            require 200 * _BLOCKS_PER_READJUSTMENT > 0
            require 200 * _BLOCKS_PER_READJUSTMENT
            require 100 <= (100 * block.number) - (100 * latestDifficultyPeriodStarted) / 200 * _BLOCKS_PER_READJUSTMENT
            if ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 200 * _BLOCKS_PER_READJUSTMENT) - 100 <= 1000:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 200 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) / miningTarget / 2000 == ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 200 * _BLOCKS_PER_READJUSTMENT) - 100
                require (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 200 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) + miningTarget >= miningTarget
                miningTarget = (-100 * miningTarget / 2000) + ((100 * block.number) - (100 * latestDifficultyPeriodStarted) / 200 * _BLOCKS_PER_READJUSTMENT * miningTarget / 2000) + miningTarget
            else:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require 1000 * miningTarget / 2000 / miningTarget / 2000 == 1000
                require (1000 * miningTarget / 2000) + miningTarget >= miningTarget
                miningTarget += 1000 * miningTarget / 2000
        else:
            if 200 * _BLOCKS_PER_READJUSTMENT:
                require 200 * _BLOCKS_PER_READJUSTMENT
                require 20000 * _BLOCKS_PER_READJUSTMENT / 200 * _BLOCKS_PER_READJUSTMENT == 100
            require block.number - latestDifficultyPeriodStarted > 0
            require block.number - latestDifficultyPeriodStarted
            require 100 <= 20000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted
            if (20000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted) - 100 <= 1000:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require (-100 * miningTarget / 2000) + (20000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000) / miningTarget / 2000 == (20000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted) - 100
                require (-100 * miningTarget / 2000) + (20000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000) <= miningTarget
                miningTarget = miningTarget + (100 * miningTarget / 2000) - (20000 * _BLOCKS_PER_READJUSTMENT / block.number - latestDifficultyPeriodStarted * miningTarget / 2000)
            else:
                if miningTarget / 2000:
                    require miningTarget / 2000
                    require 1000 * miningTarget / 2000 / miningTarget / 2000 == 1000
                require 1000 * miningTarget / 2000 <= miningTarget
                miningTarget += -1000 * miningTarget / 2000
        latestDifficultyPeriodStarted = block.number
        if miningTarget < _MINIMUM_TARGET:
            miningTarget = _MINIMUM_TARGET
        if miningTarget > _MAXIMUM_TARGET:
            miningTarget = _MAXIMUM_TARGET
    challengeNumber = block.hash(block.number - 1)
    emit Mint(30 * 10^decimals / 2^rewardEra, epochCount, challengeNumber, msg.sender);
    return 1
}



}
