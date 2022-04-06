contract main {




// =====================  Runtime code  =====================


#
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const initialSupply = 6250 * 10^18

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 contractStartTimestamp;
address sub_6628d210Address;
address sub_1ad93c7eAddress;
address sub_d70d5b40Address;
uint256 stor10;
array of uint256 liquidityGenerationParticipationAgreement;
uint256 totalLPTokensMinted;
uint256 totalBNBContributed;
uint256 lPperBNBUnit;
uint8 lPGenerationCompleted;
mapping of uint256 bNBContributed;
address transferCheckerAddress;
address feeDistributorAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function totalLPTokensMinted() {
    return totalLPTokensMinted
}

function name() {
    return name[0 len name.length]
}

function feeDistributor() {
    return feeDistributorAddress
}

function LPGenerationCompleted() {
    return bool(lPGenerationCompleted)
}

function totalSupply() {
    return totalSupply
}

function sub_1ad93c7e(?) {
    return sub_1ad93c7eAddress
}

function decimals() {
    return decimals
}

function delegates(address arg1) {
    require calldata.size - 4 >= 32
    return delegates[address(arg1)]
}

function sub_6628d210(?) {
    return sub_6628d210Address
}

function contractStartTimestamp() {
    return contractStartTimestamp
}

function numCheckpoints(address arg1) {
    require calldata.size - 4 >= 32
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function owner() {
    return owner
}

function liquidityGenerationParticipationAgreement() {
    return liquidityGenerationParticipationAgreement[0 len liquidityGenerationParticipationAgreement.length]
}

function BNBContributed(address arg1) {
    require calldata.size - 4 >= 32
    return bNBContributed[arg1]
}

function totalBNBContributed() {
    return totalBNBContributed
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferCheckerAddress() {
    return transferCheckerAddress
}

function LPperBNBUnit() {
    return lPperBNBUnit
}

function sub_d70d5b40(?) {
    return address(sub_d70d5b40Address)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setFeeDistributor(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeDistributorAddress = arg1
}

function setShouldTransferChecker(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    transferCheckerAddress = arg1
}

function getCurrentVotes(address arg1) {
    require calldata.size - 4 >= 32
    if numCheckpoints[address(arg1)] > 0:
        return checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x3f45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_9743d09a(?) {
    if address(sub_d70d5b40Address):
        revert with 0, 'Token: pool already created'
    require ext_code.size(sub_6628d210Address)
    staticcall sub_6628d210Address.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1ad93c7eAddress)
    call sub_1ad93c7eAddress.createPair(address rg1, address rg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor10) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor10))
    return address(sub_d70d5b40Address)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x3f45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function emergencyDrain72hAfterLiquidityGenerationEventIsDone() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if contractStartTimestamp + (24 * 3600) >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x644c69717569646974792067656e65726174696f6e20677261636520706572696f64207374696c6c206f6e676f696e,
                    mem[211 len 17]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    balanceOf[address(msg.sender)] = balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
}

function liquidityGenerationOngoing() {
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.0xa0c4b225 with:
            gas gas_remaining wei
           args 0, 128, contractStartTimestamp + (24 * 3600), 192, block.timestamp, 21, '1 days since start is' << 88, 11, Mask(88, 0, 'Time now is')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.log(string rg1, bool rg2) with:
            gas gas_remaining wei
           args 0, 64, contractStartTimestamp + (24 * 3600) < block.timestamp, 28, Mask(224, 0, 'liquidity generation ongoing')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    return (contractStartTimestamp + (24 * 3600) > block.timestamp)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x3f45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function addLiquidity(bool arg1) payable {
    require calldata.size - 4 >= 32
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.0xa0c4b225 with:
            gas gas_remaining wei
           args 0, 128, contractStartTimestamp + (24 * 3600), 192, block.timestamp, 21, '1 days since start is' << 88, 11, Mask(88, 0, 'Time now is')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.log(string rg1, bool rg2) with:
            gas gas_remaining wei
           args 0, 64, contractStartTimestamp + (24 * 3600) < block.timestamp, 28, Mask(224, 0, 'liquidity generation ongoing')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if contractStartTimestamp + (24 * 3600) <= block.timestamp:
        revert with 0, 'Liquidity Generation Event over'
    if not arg1:
        revert with 0, 'No agreement provided'
    bNBContributed[address(msg.sender)] += msg.value
    if totalBNBContributed + msg.value < totalBNBContributed:
        revert with 0, 'SafeMath: addition overflow'
    totalBNBContributed += msg.value
    emit LiquidityAddition(msg.value, msg.sender);
}

function getSecondsLeftInLiquidityGenerationEvent() {
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.0xa0c4b225 with:
            gas gas_remaining wei
           args 0, 128, contractStartTimestamp + (24 * 3600), 192, block.timestamp, 21, '1 days since start is' << 88, 11, Mask(88, 0, 'Time now is')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.log(string rg1, bool rg2) with:
            gas gas_remaining wei
           args 0, 64, contractStartTimestamp + (24 * 3600) < block.timestamp, 28, Mask(224, 0, 'liquidity generation ongoing')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if contractStartTimestamp + (24 * 3600) <= block.timestamp:
        revert with 0, 'Event over'
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.0xa0c4b225 with:
            gas gas_remaining wei
           args 128, contractStartTimestamp + (24 * 3600), 192, block.timestamp, 21, '1 days since start is' << 88, 11, Mask(88, 0, 'Time now is')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > contractStartTimestamp + (24 * 3600):
        revert with 0, 'SafeMath: subtraction overflow'
    return (contractStartTimestamp + -block.timestamp + (24 * 3600))
}

function claimLPTokens() {
    if not lPGenerationCompleted:
        revert with 0, 'Event not over yet'
    if bNBContributed[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4e6f7468696e6720746f20636c61696d2c206d6f766520616c6f6e6720746f726e6164,
                    mem[200 len 28]
    if not bNBContributed[address(msg.sender)]:
        require ext_code.size(address(sub_d70d5b40Address))
        call address(sub_d70d5b40Address).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        bNBContributed[address(msg.sender)] = 0
        emit LPTokenClaimed(msg.sender, 0);
    else:
        require bNBContributed[address(msg.sender)]
        if bNBContributed[address(msg.sender)] * lPperBNBUnit / bNBContributed[address(msg.sender)] != lPperBNBUnit:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(address(sub_d70d5b40Address))
        call address(sub_d70d5b40Address).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, bNBContributed[address(msg.sender)] * lPperBNBUnit / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        bNBContributed[address(msg.sender)] = 0
        emit LPTokenClaimed(msg.sender, bNBContributed[address(msg.sender)] * lPperBNBUnit / 10^18);
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6554434f52453a3a6765745072696f72566f7465733a206e6f74207965742064657465726d696e65,
                    mem[204 len 24]
    if not numCheckpoints[address(arg1)]:
        return 0
    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 <= arg2:
        return checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256
    if checkpoints[address(arg1)][0].field_0 > arg2:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = 0
        mem[_33 + 32] = 0
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 20)
        _36 = mem[64]
        mem[64] = mem[64] + 64
        mem[_36] = checkpoints[address(arg1)][stor21[address(arg1)] + -(uint32(stor21[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_36 + 32] = checkpoints[address(arg1)][stor21[address(arg1)] + -(uint32(stor21[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor21[address(arg1)] + -(uint32(stor21[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 == arg2:
            return checkpoints[address(arg1)][stor21[address(arg1)] + -(uint32(stor21[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if checkpoints[address(arg1)][stor21[address(arg1)] + -(uint32(stor21[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0 >= arg2:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6f45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    require ext_code.size(transferCheckerAddress)
    call transferCheckerAddress.calculateAmountsAfterFee(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] + ext_call.return_data[32] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + ext_call.return_data[32] != arg2:
        revert with 0, 32, 36, 0x734d6174682062726f6b652c20646f65732067726176697479207374696c6c20776f726b, mem[296 len 28]
    if balanceOf[address(arg1)] + ext_call.return_data[0] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], msg.sender, arg1);
    if ext_call.return_data[32] > 0:
        if feeDistributorAddress:
            if balanceOf[stor18] + ext_call.return_data[32] < balanceOf[stor18]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor18] += ext_call.return_data[32]
            emit Transfer(ext_call.return_data[32], msg.sender, feeDistributorAddress);
            if feeDistributorAddress:
                require ext_code.size(feeDistributorAddress)
                call feeDistributorAddress.addPendingRewards(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6f45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    require ext_code.size(transferCheckerAddress)
    call transferCheckerAddress.calculateAmountsAfterFee(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] + ext_call.return_data[32] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + ext_call.return_data[32] != arg3:
        revert with 0, 32, 36, 0x734d6174682062726f6b652c20646f65732067726176697479207374696c6c20776f726b, mem[296 len 28]
    if balanceOf[address(arg2)] + ext_call.return_data[0] < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], arg1, arg2);
    if ext_call.return_data[32] > 0:
        if feeDistributorAddress:
            if balanceOf[stor18] + ext_call.return_data[32] < balanceOf[stor18]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor18] += ext_call.return_data[32]
            emit Transfer(ext_call.return_data[32], arg1, feeDistributorAddress);
            if feeDistributorAddress:
                require ext_code.size(feeDistributorAddress)
                call feeDistributorAddress.addPendingRewards(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    Mask(192, 32, arg3) >> 32,
                    0
    if not arg1:
        revert with 0, 32, 36, 0x3f45524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_3ca8f704(?) {
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.0xa0c4b225 with:
            gas gas_remaining wei
           args 0, 128, contractStartTimestamp + (24 * 3600), 192, block.timestamp, 21, '1 days since start is' << 88, 11, Mask(88, 0, 'Time now is')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    staticcall 'console.log'.log(string rg1, bool rg2) with:
            gas gas_remaining wei
           args 0, 64, contractStartTimestamp + (24 * 3600) < block.timestamp, 28, Mask(224, 0, 'liquidity generation ongoing')
    if contractStartTimestamp + (24 * 3600) < contractStartTimestamp:
        revert with 0, 'SafeMath: addition overflow'
    if contractStartTimestamp + (24 * 3600) > block.timestamp:
        revert with 0, 'TCORE LGE ongoing'
    if lPGenerationCompleted:
        revert with 0, 'TCORE LGE already finished'
    totalBNBContributed = eth.balance(this.address)
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, totalBNBContributed / 10^18, 15, Mask(120, 0, 'Balance of this')
    require ext_code.size(sub_6628d210Address)
    staticcall sub_6628d210Address.WBNB() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit() with:
       value totalBNBContributed wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address):
        revert with 0, 'Transfer Failed'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(sub_d70d5b40Address), totalBNBContributed
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(balanceOf[address(this.address)], this.address, address(sub_d70d5b40Address));
    balanceOf[address(stor10)] = balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    require ext_code.size(address(sub_d70d5b40Address))
    call address(sub_d70d5b40Address).mint(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_d70d5b40Address))
    staticcall address(sub_d70d5b40Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalLPTokensMinted = ext_call.return_data[0]
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, totalLPTokensMinted, 19, Mask(152, 0, 'Total tokens minted')
    if not totalLPTokensMinted:
        revert with 0, 'LP creation failed'
    require totalLPTokensMinted
    if 10^18 * totalLPTokensMinted / totalLPTokensMinted != 10^18:
        revert with 0, 32, 33, 0x67536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1301 len 31]
    if totalBNBContributed <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalBNBContributed
    lPperBNBUnit = 10^18 * totalLPTokensMinted / totalBNBContributed
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, lPperBNBUnit, 18, Mask(144, 0, 'Total per LP token')
    if not lPperBNBUnit:
        revert with 0, 'LP creation failed'
    lPGenerationCompleted = 1
}

function delegate(address arg1) {
    require calldata.size - 4 >= 32
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if numCheckpoints[address(arg1)] > 0:
                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[181 len 11],
                                        Mask(168, -256, mem[181 len 11]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if balanceOf[address(msg.sender)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        53,
                                        0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                        mem[181 len 11],
                                        Mask(168, -256, mem[181 len 11]) << 256
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
            else:
                if numCheckpoints[stor19[address(msg.sender)]] > 0:
                    if balanceOf[address(msg.sender)] > checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[245 len 11],
                                    Mask(168, -256, mem[245 len 11]) << 256
                    if numCheckpoints[stor19[address(msg.sender)]] <= 0:
                        checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]]].field_256 = checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor19[address(msg.sender)]] = uint32(numCheckpoints[stor19[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[405 len 11],
                                                Mask(168, -256, mem[405 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[405 len 11],
                                                Mask(168, -256, mem[405 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[341 len 11],
                                                    Mask(168, -256, mem[341 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[341 len 11],
                                                    Mask(168, -256, mem[341 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]]].field_256 = checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor19[address(msg.sender)]] = uint32(numCheckpoints[stor19[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[405 len 11],
                                                    Mask(168, -256, mem[405 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[405 len 11],
                                                    Mask(168, -256, mem[405 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    53,
                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                    mem[245 len 11],
                                    Mask(168, -256, mem[245 len 11]) << 256
                    if numCheckpoints[stor19[address(msg.sender)]] <= 0:
                        checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor19[address(msg.sender)]] = uint32(numCheckpoints[stor19[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if numCheckpoints[address(arg1)] > 0:
                                if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[405 len 11],
                                                Mask(168, -256, mem[405 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                            else:
                                if balanceOf[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                53,
                                                0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                mem[405 len 11],
                                                Mask(168, -256, mem[405 len 11]) << 256
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[341 len 11],
                                                    Mask(168, -256, mem[341 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[341 len 11],
                                                    Mask(168, -256, mem[341 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor19[address(msg.sender)]][stor21[stor19[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor19[address(msg.sender)]] = uint32(numCheckpoints[stor19[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if numCheckpoints[address(arg1)] > 0:
                                    if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)] < checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[405 len 11],
                                                    Mask(168, -256, mem[405 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                                else:
                                    if balanceOf[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    53,
                                                    0x6554434f52453a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974,
                                                    mem[405 len 11],
                                                    Mask(168, -256, mem[405 len 11]) << 256
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            checkpoints[address(arg1)][stor21[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor21[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}



}
