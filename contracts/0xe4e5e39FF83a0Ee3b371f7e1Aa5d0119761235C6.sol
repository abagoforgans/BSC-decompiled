contract main {




// =====================  Runtime code  =====================


const getAPY_T = 2190

const getAPY_M = 1460


address stor1;
uint256 stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
address stor16;
address stor17;
address stor18;
uint256 totalUsers;
mapping of uint256 contractTokenBalance;
uint256 totalBUSDStaked;
uint256 totalTokenStaked;
uint256 sentAirdrop;
uint256 ownerManualAirdrop;
uint256 ownerManualAirdropCheckpoint;
array of uint256 stor25;
mapping of struct userDownlineCount;
mapping of uint256 stor27;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 limitSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor9;

function getUserDownlineCount(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userDownlineCount[address(arg1)].field_3840), 
           uint256(userDownlineCount[address(arg1)].field_4096),
           uint256(userDownlineCount[address(arg1)].field_4352)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function limitSupply() {
    return limitSupply
}

function totalTokenStaked() {
    return totalTokenStaked
}

function decimals() {
    return decimals
}

function getContractTokenBalance() {
    return contractTokenBalance[address(this.address)]
}

function getCurrentUserBonAirdrop(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userDownlineCount[address(arg1)].field_768)
}

function getUserReferralTotalBonus(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userDownlineCount[address(arg1)].field_3328)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return contractTokenBalance[address(arg1)]
}

function totalBUSDStaked() {
    return totalBUSDStaked
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ownerManualAirdropCheckpoint() {
    return ownerManualAirdropCheckpoint
}

function getUserTokenStaked(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userDownlineCount[address(arg1)].field_2304)
}

function getUserBUSDStaked(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userDownlineCount[address(arg1)].field_1280)
}

function sentAirdrop() {
    return sentAirdrop
}

function totalUsers() {
    return totalUsers
}

function getUserCountAirdrop(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userDownlineCount[address(arg1)].field_512)
}

function getUserBonAirdrop(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userDownlineCount[address(arg1)].field_768)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getUserReferralBonus(address arg1) {
    require calldata.size - 4 >= 32
    return uint256(userDownlineCount[address(arg1)].field_3072)
}

function getUserTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    return contractTokenBalance[address(arg1)]
}

function ownerManualAirdrop() {
    return ownerManualAirdrop
}

function _fallback() payable {
    revert
}

function getUserBUSDBalance(address arg1) {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function getContractLaunchTime() {
    if stor10 <= block.timestamp:
        return 0
    return (stor10 - block.timestamp)
}

function getCurrentDay() {
    if block.timestamp <= stor10:
        return 0
    return (block.timestamp - stor10 / 24 * 3600)
}

function getAvailableAirdrop() {
    if 100000 * 10^18 <= sentAirdrop:
        return 0
    return (-sentAirdrop + 100000 * 10^18)
}

function getTokenSoldToday() {
    if block.timestamp <= stor10:
        return stor27[0]
    return stor27[block.timestamp - stor10 / 24 * 3600]
}

function availableSupply() {
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    return (limitSupply - totalSupply)
}

function getContractBUSDBalance() {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTokenAvailableToSell() {
    if block.timestamp <= stor10:
        if 40000 * 10^18 <= stor27[0]:
            return 0
        return (-stor27[0] + 40000 * 10^18)
    if 40000 * 10^18 <= stor27[block.timestamp - stor10 / 24 * 3600]:
        return 0
    return (-stor27[block.timestamp - stor10 / 24 * 3600] + 40000 * 10^18)
}

function getUserReferralWithdrawn(address arg1) {
    require calldata.size - 4 >= 32
    if uint256(userDownlineCount[address(arg1)].field_3072) > uint256(userDownlineCount[address(arg1)].field_3328):
        revert with 0, 'SafeMath: subtraction overflow'
    return (uint256(userDownlineCount[address(arg1)].field_3328) - uint256(userDownlineCount[address(arg1)].field_3072))
}

function getUserTimeToUnstake(address arg1) {
    require calldata.size - 4 >= 32
    if uint256(userDownlineCount[address(arg1)].field_2560) + (168 * 24 * 3600) < uint256(userDownlineCount[address(arg1)].field_2560):
        revert with 0, 'SafeMath: addition overflow'
    if uint256(userDownlineCount[address(arg1)].field_2560) + (168 * 24 * 3600) <= block.timestamp:
        return 0
    return (uint256(userDownlineCount[address(arg1)].field_2560) + -block.timestamp + (168 * 24 * 3600))
}

function getUserTimeToNextAirdrop(address arg1) {
    require calldata.size - 4 >= 32
    if uint256(userDownlineCount[address(arg1)].field_256) + (168 * 24 * 3600) < uint256(userDownlineCount[address(arg1)].field_256):
        revert with 0, 'SafeMath: addition overflow'
    if uint256(userDownlineCount[address(arg1)].field_256) + (168 * 24 * 3600) <= block.timestamp:
        return 0
    return (uint256(userDownlineCount[address(arg1)].field_256) + -block.timestamp + (168 * 24 * 3600))
}

function withdrawRef() {
    if uint256(userDownlineCount[address(msg.sender)].field_3072) <= 0:
        revert with 0, 'User has no dividends'
    uint256(userDownlineCount[address(msg.sender)].field_3072) = 0
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, uint256(userDownlineCount[address(msg.sender)].field_3072)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getUserAirdropReqInv(address arg1) {
    require calldata.size - 4 >= 32
    if uint256(userDownlineCount[address(arg1)].field_512) + 1 < uint256(userDownlineCount[address(arg1)].field_512):
        revert with 0, 'SafeMath: addition overflow'
    if not uint256(userDownlineCount[address(arg1)].field_512) + 1:
        return 0
    require uint256(userDownlineCount[address(arg1)].field_512) + 1
    if (100 * 10^18 * uint256(userDownlineCount[address(arg1)].field_512)) + 100 * 10^18 / uint256(userDownlineCount[address(arg1)].field_512) + 1 != 100 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((100 * 10^18 * uint256(userDownlineCount[address(arg1)].field_512)) + 100 * 10^18)
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function getTimeToNextDay() {
    if block.timestamp <= stor10:
        return (24 * 3600)
    if not block.timestamp - stor10 / 24 * 3600:
        if block.timestamp - stor10 > 24 * 3600:
            revert with 0, 'SafeMath: subtraction overflow'
        return (-block.timestamp + stor10 + (24 * 3600))
    require block.timestamp - stor10 / 24 * 3600
    if 24 * 3600 * block.timestamp - stor10 / 24 * 3600 / block.timestamp - stor10 / 24 * 3600 != 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (24 * 3600 * block.timestamp - stor10 / 24 * 3600) + (24 * 3600) < 24 * 3600 * block.timestamp - stor10 / 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp - stor10 > (24 * 3600 * block.timestamp - stor10 / 24 * 3600) + (24 * 3600):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((24 * 3600 * block.timestamp - stor10 / 24 * 3600) + -block.timestamp + stor10 + (24 * 3600))
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 232 len 28]
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0x6e45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[ceil32(arg3.length) + 230 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}

function getTokenPrice() {
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalSupply > limitSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if limitSupply + -totalSupply + 1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if limitSupply + -totalSupply + 1:
            return (0 / limitSupply + -totalSupply + 1)
    else:
        if ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if limitSupply + -totalSupply + 1:
                return (10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1)
    revert
}

function claimAirdropM() {
    if stor11 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f,
                    mem[197 len 31]
    if ownerManualAirdrop + 10000 * 10^18 < ownerManualAirdrop:
        revert with 0, 'SafeMath: addition overflow'
    ownerManualAirdrop += 10000 * 10^18
    if ownerManualAirdrop > 50000 * 10^18:
        revert with 0, 'Airdrop limit exceed'
    if ownerManualAirdropCheckpoint + (120 * 24 * 3600) < ownerManualAirdropCheckpoint:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < ownerManualAirdropCheckpoint + (120 * 24 * 3600):
        revert with 0, 'Time limit error'
    ownerManualAirdropCheckpoint = block.timestamp
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if limitSupply - totalSupply < 10000 * 10^18:
        revert with 0, 'Supply exceed'
    if totalSupply + 10000 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 10000 * 10^18
    if contractTokenBalance[address(msg.sender)] + 10000 * 10^18 < contractTokenBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(msg.sender)] += 10000 * 10^18
    emit Transfer(10000 * 10^18, 0, msg.sender);
    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                        10000 * 10^18,
                        10000 * 10^18,
                        0,
                        7,
                        'AIRDROP',
                        msg.sender,
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
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > contractTokenBalance[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    contractTokenBalance[address(arg1)] -= arg3
    if contractTokenBalance[address(arg2)] + arg3 < contractTokenBalance[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e45524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor9[address(arg1)]:
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
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if arg2 > contractTokenBalance[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        contractTokenBalance[address(msg.sender)] -= arg2
        if contractTokenBalance[address(arg1)] + arg2 < contractTokenBalance[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        contractTokenBalance[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not msg.sender:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[232 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x6e45524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[230 len 30]
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
        require ext_code.size(arg1)
        call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, arg2, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function tokenToBUSD(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalSupply > limitSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if limitSupply + -totalSupply + 1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require limitSupply + -totalSupply + 1
        if not arg1:
            return 0
        require arg1
        if arg1 * 0 / limitSupply + -totalSupply + 1 / arg1 != 0 / limitSupply + -totalSupply + 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (arg1 * 0 / limitSupply + -totalSupply + 1 / 10^18)
    require ext_call.return_data[0]
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if limitSupply + -totalSupply + 1 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require limitSupply + -totalSupply + 1
    if not arg1:
        return 0
    require arg1
    if arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / arg1 != 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18)
}

function claimAirdrop() {
    if 100000 * 10^18 <= sentAirdrop:
        revert with 0, 'Airdrop limit exceed'
    if -sentAirdrop + 100000 * 10^18 < 100 * 10^18:
        revert with 0, 'Airdrop limit exceed'
    if uint256(userDownlineCount[address(msg.sender)].field_512) + 1 < uint256(userDownlineCount[address(msg.sender)].field_512):
        revert with 0, 'SafeMath: addition overflow'
    if not uint256(userDownlineCount[address(msg.sender)].field_512) + 1:
        require uint256(userDownlineCount[address(msg.sender)].field_1280) >= 0
    else:
        require uint256(userDownlineCount[address(msg.sender)].field_512) + 1
        if (100 * 10^18 * uint256(userDownlineCount[address(msg.sender)].field_512)) + 100 * 10^18 / uint256(userDownlineCount[address(msg.sender)].field_512) + 1 != 100 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require uint256(userDownlineCount[address(msg.sender)].field_1280) >= (100 * 10^18 * uint256(userDownlineCount[address(msg.sender)].field_512)) + 100 * 10^18
    if uint256(userDownlineCount[address(msg.sender)].field_256) + (168 * 24 * 3600) < uint256(userDownlineCount[address(msg.sender)].field_256):
        revert with 0, 'SafeMath: addition overflow'
    require block.timestamp > uint256(userDownlineCount[address(msg.sender)].field_256) + (168 * 24 * 3600)
    require uint256(userDownlineCount[address(msg.sender)].field_768) >= 5
    uint256(userDownlineCount[address(msg.sender)].field_512)++
    uint256(userDownlineCount[address(msg.sender)].field_256) = block.timestamp
    uint256(userDownlineCount[address(msg.sender)].field_768) = 0
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if limitSupply - totalSupply < 100 * 10^18:
        revert with 0, 'Supply exceed'
    if totalSupply + 100 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 100 * 10^18
    if contractTokenBalance[address(msg.sender)] + 100 * 10^18 < contractTokenBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(msg.sender)] += 100 * 10^18
    emit Transfer(100 * 10^18, 0, msg.sender);
    if sentAirdrop + 100 * 10^18 < sentAirdrop:
        revert with 0, 'SafeMath: addition overflow'
    sentAirdrop += 100 * 10^18
    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                        100 * 10^18,
                        100 * 10^18,
                        0,
                        7,
                        'AIRDROP',
                        msg.sender,
}

function BUSDToToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalSupply > limitSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if limitSupply + -totalSupply + 1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if limitSupply + -totalSupply + 1:
            if not arg1:
                if 0 / limitSupply + -totalSupply + 1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / limitSupply + -totalSupply + 1:
                    return (0 / 0 / limitSupply + -totalSupply + 1)
            else:
                if arg1:
                    if 10^18 * arg1 / arg1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / limitSupply + -totalSupply + 1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / limitSupply + -totalSupply + 1:
                        return (10^18 * arg1 / 0 / limitSupply + -totalSupply + 1)
    else:
        if ext_call.return_data[0]:
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if limitSupply + -totalSupply + 1:
                if not arg1:
                    if 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
                        return (0 / 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1)
                else:
                    if arg1:
                        if 10^18 * arg1 / arg1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
                            return (10^18 * arg1 / 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1)
    revert
}

function getUserUnclaimedTokens_M(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 > block.timestamp:
        if block.timestamp < block.timestamp:
            if uint256(userDownlineCount[address(arg1)].field_1280):
                require uint256(userDownlineCount[address(arg1)].field_1280)
                if 0 / uint256(userDownlineCount[address(arg1)].field_1280):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        if uint256(userDownlineCount[address(arg1)].field_1792) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return uint256(userDownlineCount[address(arg1)].field_1792)
    if uint256(userDownlineCount[address(arg1)].field_1024) >= block.timestamp:
        if uint256(userDownlineCount[address(arg1)].field_1792) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return uint256(userDownlineCount[address(arg1)].field_1792)
    if not uint256(userDownlineCount[address(arg1)].field_1280):
        if uint256(userDownlineCount[address(arg1)].field_1792) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return uint256(userDownlineCount[address(arg1)].field_1792)
    require uint256(userDownlineCount[address(arg1)].field_1280)
    if (block.timestamp * uint256(userDownlineCount[address(arg1)].field_1280)) - (uint256(userDownlineCount[address(arg1)].field_1024) * uint256(userDownlineCount[address(arg1)].field_1280)) / uint256(userDownlineCount[address(arg1)].field_1280) != block.timestamp - uint256(userDownlineCount[address(arg1)].field_1024):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * uint256(userDownlineCount[address(arg1)].field_1280)) - (uint256(userDownlineCount[address(arg1)].field_1024) * uint256(userDownlineCount[address(arg1)].field_1280)):
        if uint256(userDownlineCount[address(arg1)].field_1792) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return uint256(userDownlineCount[address(arg1)].field_1792)
    require (block.timestamp * uint256(userDownlineCount[address(arg1)].field_1280)) - (uint256(userDownlineCount[address(arg1)].field_1024) * uint256(userDownlineCount[address(arg1)].field_1280))
    if (40 * block.timestamp * uint256(userDownlineCount[address(arg1)].field_1280)) - (40 * uint256(userDownlineCount[address(arg1)].field_1024) * uint256(userDownlineCount[address(arg1)].field_1280)) / (block.timestamp * uint256(userDownlineCount[address(arg1)].field_1280)) - (uint256(userDownlineCount[address(arg1)].field_1024) * uint256(userDownlineCount[address(arg1)].field_1280)) != 40:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((40 * block.timestamp * uint256(userDownlineCount[address(arg1)].field_1280)) - (40 * uint256(userDownlineCount[address(arg1)].field_1024) * uint256(userDownlineCount[address(arg1)].field_1280)) / 24 * 3600 / 1000) + uint256(userDownlineCount[address(arg1)].field_1792) < (40 * block.timestamp * uint256(userDownlineCount[address(arg1)].field_1280)) - (40 * uint256(userDownlineCount[address(arg1)].field_1024) * uint256(userDownlineCount[address(arg1)].field_1280)) / 24 * 3600 / 1000:
        revert with 0, 'SafeMath: addition overflow'
    return (((40 * block.timestamp * uint256(userDownlineCount[address(arg1)].field_1280)) - (40 * uint256(userDownlineCount[address(arg1)].field_1024) * uint256(userDownlineCount[address(arg1)].field_1280)) / 24 * 3600 / 1000) + uint256(userDownlineCount[address(arg1)].field_1792))
}

function getUserUnclaimedTokens_T(address arg1) {
    require calldata.size - 4 >= 32
    if stor10 > block.timestamp:
        if block.timestamp < block.timestamp:
            if uint256(userDownlineCount[address(arg1)].field_2304):
                require uint256(userDownlineCount[address(arg1)].field_2304)
                if 0 / uint256(userDownlineCount[address(arg1)].field_2304):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
        if uint256(userDownlineCount[address(arg1)].field_2816) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return uint256(userDownlineCount[address(arg1)].field_2816)
    if uint256(userDownlineCount[address(arg1)].field_2048) >= block.timestamp:
        if uint256(userDownlineCount[address(arg1)].field_2816) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return uint256(userDownlineCount[address(arg1)].field_2816)
    if not uint256(userDownlineCount[address(arg1)].field_2304):
        if uint256(userDownlineCount[address(arg1)].field_2816) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return uint256(userDownlineCount[address(arg1)].field_2816)
    require uint256(userDownlineCount[address(arg1)].field_2304)
    if (block.timestamp * uint256(userDownlineCount[address(arg1)].field_2304)) - (uint256(userDownlineCount[address(arg1)].field_2048) * uint256(userDownlineCount[address(arg1)].field_2304)) / uint256(userDownlineCount[address(arg1)].field_2304) != block.timestamp - uint256(userDownlineCount[address(arg1)].field_2048):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.timestamp * uint256(userDownlineCount[address(arg1)].field_2304)) - (uint256(userDownlineCount[address(arg1)].field_2048) * uint256(userDownlineCount[address(arg1)].field_2304)):
        if uint256(userDownlineCount[address(arg1)].field_2816) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return uint256(userDownlineCount[address(arg1)].field_2816)
    require (block.timestamp * uint256(userDownlineCount[address(arg1)].field_2304)) - (uint256(userDownlineCount[address(arg1)].field_2048) * uint256(userDownlineCount[address(arg1)].field_2304))
    if (60 * block.timestamp * uint256(userDownlineCount[address(arg1)].field_2304)) - (60 * uint256(userDownlineCount[address(arg1)].field_2048) * uint256(userDownlineCount[address(arg1)].field_2304)) / (block.timestamp * uint256(userDownlineCount[address(arg1)].field_2304)) - (uint256(userDownlineCount[address(arg1)].field_2048) * uint256(userDownlineCount[address(arg1)].field_2304)) != 60:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ((60 * block.timestamp * uint256(userDownlineCount[address(arg1)].field_2304)) - (60 * uint256(userDownlineCount[address(arg1)].field_2048) * uint256(userDownlineCount[address(arg1)].field_2304)) / 24 * 3600 / 1000) + uint256(userDownlineCount[address(arg1)].field_2816) < (60 * block.timestamp * uint256(userDownlineCount[address(arg1)].field_2304)) - (60 * uint256(userDownlineCount[address(arg1)].field_2048) * uint256(userDownlineCount[address(arg1)].field_2304)) / 24 * 3600 / 1000:
        revert with 0, 'SafeMath: addition overflow'
    return (((60 * block.timestamp * uint256(userDownlineCount[address(arg1)].field_2304)) - (60 * uint256(userDownlineCount[address(arg1)].field_2048) * uint256(userDownlineCount[address(arg1)].field_2304)) / 24 * 3600 / 1000) + uint256(userDownlineCount[address(arg1)].field_2816))
}

function claimToken_M() {
    if stor10 > block.timestamp:
        if block.timestamp < block.timestamp:
            if uint256(userDownlineCount[address(msg.sender)].field_1280):
                require uint256(userDownlineCount[address(msg.sender)].field_1280)
                if 0 / uint256(userDownlineCount[address(msg.sender)].field_1280):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
    else:
        if uint256(userDownlineCount[address(msg.sender)].field_1024) < block.timestamp:
            if uint256(userDownlineCount[address(msg.sender)].field_1280):
                require uint256(userDownlineCount[address(msg.sender)].field_1280)
                if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / uint256(userDownlineCount[address(msg.sender)].field_1280) != block.timestamp - uint256(userDownlineCount[address(msg.sender)].field_1024):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)):
                    require (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280))
                    if (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) != 40:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000 > 0:
                        if uint256(userDownlineCount[address(msg.sender)].field_1792) + ((40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000) < uint256(userDownlineCount[address(msg.sender)].field_1792):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(userDownlineCount[address(msg.sender)].field_1792) += (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000
                        uint256(userDownlineCount[address(msg.sender)].field_1024) = block.timestamp
    uint256(userDownlineCount[address(msg.sender)].field_1792) = 0
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if limitSupply - totalSupply < uint256(userDownlineCount[address(msg.sender)].field_1792):
        revert with 0, 'Supply exceed'
    if totalSupply + uint256(userDownlineCount[address(msg.sender)].field_1792) < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += uint256(userDownlineCount[address(msg.sender)].field_1792)
    if contractTokenBalance[address(msg.sender)] + uint256(userDownlineCount[address(msg.sender)].field_1792) < contractTokenBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(msg.sender)] += uint256(userDownlineCount[address(msg.sender)].field_1792)
    emit Transfer(uint256(userDownlineCount[address(msg.sender)].field_1792), 0, msg.sender);
    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                        uint256(userDownlineCount[address(msg.sender)].field_1792),
                        uint256(userDownlineCount[address(msg.sender)].field_1792),
                        0,
                        5,
                        'CLAIM',
                        msg.sender,
}

function claimToken_T() {
    if stor10 > block.timestamp:
        if block.timestamp < block.timestamp:
            if uint256(userDownlineCount[address(msg.sender)].field_2304):
                require uint256(userDownlineCount[address(msg.sender)].field_2304)
                if 0 / uint256(userDownlineCount[address(msg.sender)].field_2304):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
    else:
        if uint256(userDownlineCount[address(msg.sender)].field_2048) < block.timestamp:
            if uint256(userDownlineCount[address(msg.sender)].field_2304):
                require uint256(userDownlineCount[address(msg.sender)].field_2304)
                if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / uint256(userDownlineCount[address(msg.sender)].field_2304) != block.timestamp - uint256(userDownlineCount[address(msg.sender)].field_2048):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)):
                    require (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304))
                    if (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) != 60:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000 > 0:
                        if uint256(userDownlineCount[address(msg.sender)].field_2816) + ((60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000) < uint256(userDownlineCount[address(msg.sender)].field_2816):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(userDownlineCount[address(msg.sender)].field_2816) += (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000
                        uint256(userDownlineCount[address(msg.sender)].field_2048) = block.timestamp
    uint256(userDownlineCount[address(msg.sender)].field_2816) = 0
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > limitSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if limitSupply - totalSupply < uint256(userDownlineCount[address(msg.sender)].field_2816):
        revert with 0, 'Supply exceed'
    if totalSupply + uint256(userDownlineCount[address(msg.sender)].field_2816) < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += uint256(userDownlineCount[address(msg.sender)].field_2816)
    if contractTokenBalance[address(msg.sender)] + uint256(userDownlineCount[address(msg.sender)].field_2816) < contractTokenBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(msg.sender)] += uint256(userDownlineCount[address(msg.sender)].field_2816)
    emit Transfer(uint256(userDownlineCount[address(msg.sender)].field_2816), 0, msg.sender);
    emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                        uint256(userDownlineCount[address(msg.sender)].field_2816),
                        uint256(userDownlineCount[address(msg.sender)].field_2816),
                        0,
                        5,
                        'CLAIM',
                        msg.sender,
}

function unStakeToken() {
    if uint256(userDownlineCount[address(msg.sender)].field_2560) + (168 * 24 * 3600) < uint256(userDownlineCount[address(msg.sender)].field_2560):
        revert with 0, 'SafeMath: addition overflow'
    require block.timestamp > uint256(userDownlineCount[address(msg.sender)].field_2560) + (168 * 24 * 3600)
    if stor10 > block.timestamp:
        if block.timestamp < block.timestamp:
            if uint256(userDownlineCount[address(msg.sender)].field_2304):
                require uint256(userDownlineCount[address(msg.sender)].field_2304)
                if 0 / uint256(userDownlineCount[address(msg.sender)].field_2304):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
    else:
        if uint256(userDownlineCount[address(msg.sender)].field_2048) < block.timestamp:
            if uint256(userDownlineCount[address(msg.sender)].field_2304):
                require uint256(userDownlineCount[address(msg.sender)].field_2304)
                if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / uint256(userDownlineCount[address(msg.sender)].field_2304) != block.timestamp - uint256(userDownlineCount[address(msg.sender)].field_2048):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)):
                    require (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304))
                    if (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) != 60:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000 > 0:
                        if uint256(userDownlineCount[address(msg.sender)].field_2816) + ((60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000) < uint256(userDownlineCount[address(msg.sender)].field_2816):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(userDownlineCount[address(msg.sender)].field_2816) += (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000
                        uint256(userDownlineCount[address(msg.sender)].field_2048) = block.timestamp
    uint256(userDownlineCount[address(msg.sender)].field_2304) = 0
    if uint256(userDownlineCount[address(msg.sender)].field_2304) > totalTokenStaked:
        revert with 0, 'SafeMath: subtraction overflow'
    totalTokenStaked -= uint256(userDownlineCount[address(msg.sender)].field_2304)
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if uint256(userDownlineCount[address(msg.sender)].field_2304) > contractTokenBalance[address(this.address)]:
        revert with 0, 'SafeMath: subtraction overflow'
    contractTokenBalance[address(this.address)] -= uint256(userDownlineCount[address(msg.sender)].field_2304)
    if contractTokenBalance[address(msg.sender)] + uint256(userDownlineCount[address(msg.sender)].field_2304) < contractTokenBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(msg.sender)] += uint256(userDownlineCount[address(msg.sender)].field_2304)
    emit Transfer(uint256(userDownlineCount[address(msg.sender)].field_2304), this.address, msg.sender);
}

function stakeToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < stor10:
        revert with 0, 'Stake not available yet'
    if arg1 > contractTokenBalance[address(msg.sender)]:
        revert with 0, 'Insufficient Token Balance'
    if not uint256(userDownlineCount[address(msg.sender)].field_2304):
        uint256(userDownlineCount[address(msg.sender)].field_2048) = block.timestamp
    else:
        if stor10 > block.timestamp:
            if block.timestamp < block.timestamp:
                if uint256(userDownlineCount[address(msg.sender)].field_2304):
                    require uint256(userDownlineCount[address(msg.sender)].field_2304)
                    if 0 / uint256(userDownlineCount[address(msg.sender)].field_2304):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
        else:
            if uint256(userDownlineCount[address(msg.sender)].field_2048) < block.timestamp:
                if uint256(userDownlineCount[address(msg.sender)].field_2304):
                    require uint256(userDownlineCount[address(msg.sender)].field_2304)
                    if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / uint256(userDownlineCount[address(msg.sender)].field_2304) != block.timestamp - uint256(userDownlineCount[address(msg.sender)].field_2048):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)):
                        require (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304))
                        if (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) != 60:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000 > 0:
                            if uint256(userDownlineCount[address(msg.sender)].field_2816) + ((60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000) < uint256(userDownlineCount[address(msg.sender)].field_2816):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(userDownlineCount[address(msg.sender)].field_2816) += (60 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_2304)) - (60 * uint256(userDownlineCount[address(msg.sender)].field_2048) * uint256(userDownlineCount[address(msg.sender)].field_2304)) / 24 * 3600 / 1000
                            uint256(userDownlineCount[address(msg.sender)].field_2048) = block.timestamp
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg1 > contractTokenBalance[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    contractTokenBalance[address(msg.sender)] -= arg1
    if contractTokenBalance[address(this.address)] + arg1 < contractTokenBalance[address(this.address)]:
        revert with 0, 'SafeMath: addition overflow'
    contractTokenBalance[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    uint256(userDownlineCount[address(msg.sender)].field_2560) = block.timestamp
    if uint256(userDownlineCount[address(msg.sender)].field_2304) + arg1 < uint256(userDownlineCount[address(msg.sender)].field_2304):
        revert with 0, 'SafeMath: addition overflow'
    uint256(userDownlineCount[address(msg.sender)].field_2304) += arg1
    if totalTokenStaked + arg1 < totalTokenStaked:
        revert with 0, 'SafeMath: addition overflow'
    totalTokenStaked += arg1
}

function sellToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= contractTokenBalance[address(msg.sender)]:
        if arg1 <= 0:
            revert with 0, 'Token amount can not be 0'
        if block.timestamp <= stor10:
            if stor27[0] + arg1 < stor27[0]:
                revert with 0, 'SafeMath: addition overflow'
            if stor27[0] + arg1 > 40000 * 10^18:
                revert with 0, 'Daily Sell Limit exceed'
        else:
            if stor27[block.timestamp - stor10 / 24 * 3600] + arg1 < stor27[block.timestamp - stor10 / 24 * 3600]:
                revert with 0, 'SafeMath: addition overflow'
            if stor27[block.timestamp - stor10 / 24 * 3600] + arg1 > 40000 * 10^18:
                revert with 0, 'Daily Sell Limit exceed'
        if block.timestamp <= stor10:
            if stor27[0] + arg1 < stor27[0]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= stor10:
                stor27[0] += arg1
            else:
                stor27[block.timestamp - stor10 / 24 * 3600] = stor27[0] + arg1
        else:
            if stor27[block.timestamp - stor10 / 24 * 3600] + arg1 < stor27[block.timestamp - stor10 / 24 * 3600]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= stor10:
                stor27[0] = stor27[block.timestamp - stor10 / 24 * 3600] + arg1
            else:
                stor27[block.timestamp - stor10 / 24 * 3600] += arg1
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require limitSupply + -totalSupply + 1
            if not arg1:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    ext_call.return_data[0],
                                    arg1,
                                    0,
                                    4,
                                    'SELL',
                                    msg.sender,
            else:
                require arg1
                if arg1 * 0 / limitSupply + -totalSupply + 1 / arg1 != 0 / limitSupply + -totalSupply + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1 * 0 / limitSupply + -totalSupply + 1 / 10^18:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * 0 / limitSupply + -totalSupply + 1 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    ext_call.return_data[0],
                                    arg1,
                                    arg1 * 0 / limitSupply + -totalSupply + 1 / 10^18,
                                    4,
                                    'SELL',
                                    msg.sender,
        else:
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require limitSupply + -totalSupply + 1
            if not arg1:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    ext_call.return_data[0],
                                    arg1,
                                    0,
                                    4,
                                    'SELL',
                                    msg.sender,
            else:
                require arg1
                if arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / arg1 != 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if arg1 > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] -= arg1
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                emit Transfer(arg1, msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    ext_call.return_data[0],
                                    arg1,
                                    arg1 * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18,
                                    4,
                                    'SELL',
                                    msg.sender,
    else:
        if contractTokenBalance[address(msg.sender)] <= 0:
            revert with 0, 'Token amount can not be 0'
        if block.timestamp <= stor10:
            if stor27[0] + contractTokenBalance[address(msg.sender)] < stor27[0]:
                revert with 0, 'SafeMath: addition overflow'
            if stor27[0] + contractTokenBalance[address(msg.sender)] > 40000 * 10^18:
                revert with 0, 'Daily Sell Limit exceed'
        else:
            if stor27[block.timestamp - stor10 / 24 * 3600] + contractTokenBalance[address(msg.sender)] < stor27[block.timestamp - stor10 / 24 * 3600]:
                revert with 0, 'SafeMath: addition overflow'
            if stor27[block.timestamp - stor10 / 24 * 3600] + contractTokenBalance[address(msg.sender)] > 40000 * 10^18:
                revert with 0, 'Daily Sell Limit exceed'
        if block.timestamp <= stor10:
            if stor27[0] + contractTokenBalance[address(msg.sender)] < stor27[0]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= stor10:
                stor27[0] += contractTokenBalance[address(msg.sender)]
            else:
                stor27[block.timestamp - stor10 / 24 * 3600] = stor27[0] + contractTokenBalance[address(msg.sender)]
        else:
            if stor27[block.timestamp - stor10 / 24 * 3600] + contractTokenBalance[address(msg.sender)] < stor27[block.timestamp - stor10 / 24 * 3600]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= stor10:
                stor27[0] = stor27[block.timestamp - stor10 / 24 * 3600] + contractTokenBalance[address(msg.sender)]
            else:
                stor27[block.timestamp - stor10 / 24 * 3600] += contractTokenBalance[address(msg.sender)]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require limitSupply + -totalSupply + 1
            if not contractTokenBalance[address(msg.sender)]:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if contractTokenBalance[address(msg.sender)] > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] = 0
                if contractTokenBalance[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= contractTokenBalance[address(msg.sender)]
                emit Transfer(contractTokenBalance[address(msg.sender)], msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    ext_call.return_data[0],
                                    contractTokenBalance[address(msg.sender)],
                                    0,
                                    4,
                                    'SELL',
                                    msg.sender,
            else:
                require contractTokenBalance[address(msg.sender)]
                if contractTokenBalance[address(msg.sender)] * 0 / limitSupply + -totalSupply + 1 / contractTokenBalance[address(msg.sender)] != 0 / limitSupply + -totalSupply + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= contractTokenBalance[address(msg.sender)] * 0 / limitSupply + -totalSupply + 1 / 10^18:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if contractTokenBalance[address(msg.sender)] > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] = 0
                if contractTokenBalance[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= contractTokenBalance[address(msg.sender)]
                emit Transfer(contractTokenBalance[address(msg.sender)], msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, contractTokenBalance[address(msg.sender)] * 0 / limitSupply + -totalSupply + 1 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    ext_call.return_data[0],
                                    contractTokenBalance[address(msg.sender)],
                                    contractTokenBalance[address(msg.sender)] * 0 / limitSupply + -totalSupply + 1 / 10^18,
                                    4,
                                    'SELL',
                                    msg.sender,
        else:
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply > limitSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if limitSupply + -totalSupply + 1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require limitSupply + -totalSupply + 1
            if not contractTokenBalance[address(msg.sender)]:
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if contractTokenBalance[address(msg.sender)] > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] = 0
                if contractTokenBalance[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= contractTokenBalance[address(msg.sender)]
                emit Transfer(contractTokenBalance[address(msg.sender)], msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    ext_call.return_data[0],
                                    contractTokenBalance[address(msg.sender)],
                                    0,
                                    4,
                                    'SELL',
                                    msg.sender,
            else:
                require contractTokenBalance[address(msg.sender)]
                if contractTokenBalance[address(msg.sender)] * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / contractTokenBalance[address(msg.sender)] != 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= contractTokenBalance[address(msg.sender)] * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18:
                    revert with 0, 'Insufficient Contract Balance'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x7745524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                                mem[197 len 31]
                if contractTokenBalance[address(msg.sender)] > contractTokenBalance[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                contractTokenBalance[address(msg.sender)] = 0
                if contractTokenBalance[address(msg.sender)] > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= contractTokenBalance[address(msg.sender)]
                emit Transfer(contractTokenBalance[address(msg.sender)], msg.sender, 0);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, contractTokenBalance[address(msg.sender)] * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenOperation(address arg1, string arg2, uint256 arg3, uint256 arg4):
                                    ext_call.return_data[0],
                                    contractTokenBalance[address(msg.sender)],
                                    contractTokenBalance[address(msg.sender)] * 10^18 * ext_call.return_data[0] / limitSupply + -totalSupply + 1 / 10^18,
                                    4,
                                    'SELL',
                                    msg.sender,
}

function stakeBUSD(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require block.timestamp > 456422 * 3600
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor12, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor13, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor14, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor15, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor16, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor17, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor18, 0
    else:
        require arg2
        if 15 * arg2 / arg2 != 15:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor12, 15 * arg2 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor13, 15 * arg2 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor14, 15 * arg2 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor15, 15 * arg2 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor16, 15 * arg2 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor17, 15 * arg2 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args stor18, 15 * arg2 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = msg.sender
    mem[32] = 26
    if userDownlineCount[address(msg.sender)].field_0:
        idx = 0
        s = stor[sha3(mem[0 len 64])]
        while idx < stor25.length:
            require idx < stor25.length
            if address(s):
                if not arg2:
                    if uint256(userDownlineCount[address(s)].field_3072) < uint256(userDownlineCount[address(s)].field_3072):
                        revert with 0, 'SafeMath: addition overflow'
                    if uint256(userDownlineCount[address(s)].field_3328) < uint256(userDownlineCount[address(s)].field_3328):
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require arg2
                    if arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / arg2 != stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if uint256(userDownlineCount[address(s)].field_3072) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[address(s)].field_3072):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(userDownlineCount[address(s)].field_3072) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                    if uint256(userDownlineCount[address(s)].field_3328) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[address(s)].field_3328):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(userDownlineCount[address(s)].field_3328) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                mem[0] = address(s)
                mem[32] = 26
                idx = idx + 1
                s = userDownlineCount[address(s)].field_0
                continue 
            if not arg2:
                if uint256(userDownlineCount[stor11].field_3072) < uint256(userDownlineCount[stor11].field_3072):
                    revert with 0, 'SafeMath: addition overflow'
                if uint256(userDownlineCount[stor11].field_3328) < uint256(userDownlineCount[stor11].field_3328):
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require arg2
                if arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / arg2 != stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint256(userDownlineCount[stor11].field_3072) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[stor11].field_3072):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(userDownlineCount[stor11].field_3072) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                if uint256(userDownlineCount[stor11].field_3328) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[stor11].field_3328):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(userDownlineCount[stor11].field_3328) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
            mem[0] = stor11
            mem[32] = 26
            idx = idx + 1
            s = userDownlineCount[stor11].field_0
            continue 
    else:
        if msg.sender == stor11:
            if userDownlineCount[address(msg.sender)].field_0:
                idx = 0
                s = stor[sha3(mem[0 len 64])]
                while idx < stor25.length:
                    require idx < stor25.length
                    if address(s):
                        if not arg2:
                            if uint256(userDownlineCount[address(s)].field_3072) < uint256(userDownlineCount[address(s)].field_3072):
                                revert with 0, 'SafeMath: addition overflow'
                            if uint256(userDownlineCount[address(s)].field_3328) < uint256(userDownlineCount[address(s)].field_3328):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require arg2
                            if arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / arg2 != stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if uint256(userDownlineCount[address(s)].field_3072) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[address(s)].field_3072):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(userDownlineCount[address(s)].field_3072) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                            if uint256(userDownlineCount[address(s)].field_3328) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[address(s)].field_3328):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(userDownlineCount[address(s)].field_3328) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                        mem[0] = address(s)
                        mem[32] = 26
                        idx = idx + 1
                        s = userDownlineCount[address(s)].field_0
                        continue 
                    if not arg2:
                        if uint256(userDownlineCount[stor11].field_3072) < uint256(userDownlineCount[stor11].field_3072):
                            revert with 0, 'SafeMath: addition overflow'
                        if uint256(userDownlineCount[stor11].field_3328) < uint256(userDownlineCount[stor11].field_3328):
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require arg2
                        if arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / arg2 != stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if uint256(userDownlineCount[stor11].field_3072) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[stor11].field_3072):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(userDownlineCount[stor11].field_3072) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                        if uint256(userDownlineCount[stor11].field_3328) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[stor11].field_3328):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(userDownlineCount[stor11].field_3328) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                    mem[0] = stor11
                    mem[32] = 26
                    idx = idx + 1
                    s = userDownlineCount[stor11].field_0
                    continue 
        else:
            if uint256(userDownlineCount[address(arg1)].field_1280):
                userDownlineCount[address(msg.sender)].field_0 = arg1
            else:
                userDownlineCount[address(msg.sender)].field_0 = stor11
            idx = 0
            s = userDownlineCount[address(msg.sender)].field_0
            while idx < stor25.length:
                if address(s):
                    require idx < 3
                    if uint256(userDownlineCount[address(s)][idx].field_3840) + 1 < uint256(userDownlineCount[address(s)][idx].field_3840):
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < 3
                    uint256(userDownlineCount[address(s)][idx].field_3840)++
                    if not idx:
                        if uint256(userDownlineCount[address(s)].field_768) + 1 < uint256(userDownlineCount[address(s)].field_768):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(userDownlineCount[address(s)].field_768)++
                    mem[0] = address(s)
                    mem[32] = 26
                    idx = idx + 1
                    s = userDownlineCount[address(s)].field_0
                    continue 
                if userDownlineCount[address(msg.sender)].field_0:
                    idx = 0
                    s = userDownlineCount[address(msg.sender)].field_0
                    while idx < stor25.length:
                        require idx < stor25.length
                        if address(s):
                            if not arg2:
                                if uint256(userDownlineCount[address(s)].field_3072) < uint256(userDownlineCount[address(s)].field_3072):
                                    revert with 0, 'SafeMath: addition overflow'
                                if uint256(userDownlineCount[address(s)].field_3328) < uint256(userDownlineCount[address(s)].field_3328):
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require arg2
                                if arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / arg2 != stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if uint256(userDownlineCount[address(s)].field_3072) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[address(s)].field_3072):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(userDownlineCount[address(s)].field_3072) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                                if uint256(userDownlineCount[address(s)].field_3328) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[address(s)].field_3328):
                                    revert with 0, 'SafeMath: addition overflow'
                                uint256(userDownlineCount[address(s)].field_3328) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                            mem[0] = address(s)
                            mem[32] = 26
                            idx = idx + 1
                            s = userDownlineCount[address(s)].field_0
                            continue 
                        if not arg2:
                            if uint256(userDownlineCount[stor11].field_3072) < uint256(userDownlineCount[stor11].field_3072):
                                revert with 0, 'SafeMath: addition overflow'
                            if uint256(userDownlineCount[stor11].field_3328) < uint256(userDownlineCount[stor11].field_3328):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require arg2
                            if arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / arg2 != stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if uint256(userDownlineCount[stor11].field_3072) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[stor11].field_3072):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(userDownlineCount[stor11].field_3072) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                            if uint256(userDownlineCount[stor11].field_3328) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[stor11].field_3328):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(userDownlineCount[stor11].field_3328) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                        mem[0] = stor11
                        mem[32] = 26
                        idx = idx + 1
                        s = userDownlineCount[stor11].field_0
                        continue 
                if not uint256(userDownlineCount[address(msg.sender)].field_1280):
                    if block.timestamp <= stor10:
                        uint256(userDownlineCount[address(msg.sender)].field_1024) = stor10
                    else:
                        uint256(userDownlineCount[address(msg.sender)].field_1024) = block.timestamp
                    totalUsers++
                else:
                    if stor10 > block.timestamp:
                        if block.timestamp < block.timestamp:
                            if uint256(userDownlineCount[address(msg.sender)].field_1280):
                                require uint256(userDownlineCount[address(msg.sender)].field_1280)
                                if 0 / uint256(userDownlineCount[address(msg.sender)].field_1280):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                    else:
                        if uint256(userDownlineCount[address(msg.sender)].field_1024) < block.timestamp:
                            if uint256(userDownlineCount[address(msg.sender)].field_1280):
                                require uint256(userDownlineCount[address(msg.sender)].field_1280)
                                if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / uint256(userDownlineCount[address(msg.sender)].field_1280) != block.timestamp - uint256(userDownlineCount[address(msg.sender)].field_1024):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)):
                                    require (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280))
                                    if (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) != 40:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000 > 0:
                                        if uint256(userDownlineCount[address(msg.sender)].field_1792) + ((40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000) < uint256(userDownlineCount[address(msg.sender)].field_1792):
                                            revert with 0, 'SafeMath: addition overflow'
                                        uint256(userDownlineCount[address(msg.sender)].field_1792) += (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000
                                        uint256(userDownlineCount[address(msg.sender)].field_1024) = block.timestamp
                uint256(userDownlineCount[address(msg.sender)].field_1536) = block.timestamp
                if uint256(userDownlineCount[address(msg.sender)].field_1280) + arg2 < uint256(userDownlineCount[address(msg.sender)].field_1280):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(userDownlineCount[address(msg.sender)].field_1280) += arg2
                if totalBUSDStaked + arg2 < totalBUSDStaked:
                    revert with 0, 'SafeMath: addition overflow'
                totalBUSDStaked += arg2
            if userDownlineCount[address(msg.sender)].field_0:
                idx = 0
                s = userDownlineCount[address(msg.sender)].field_0
                while idx < stor25.length:
                    require idx < stor25.length
                    if address(s):
                        if not arg2:
                            if uint256(userDownlineCount[address(s)].field_3072) < uint256(userDownlineCount[address(s)].field_3072):
                                revert with 0, 'SafeMath: addition overflow'
                            if uint256(userDownlineCount[address(s)].field_3328) < uint256(userDownlineCount[address(s)].field_3328):
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require arg2
                            if arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / arg2 != stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if uint256(userDownlineCount[address(s)].field_3072) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[address(s)].field_3072):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(userDownlineCount[address(s)].field_3072) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                            if uint256(userDownlineCount[address(s)].field_3328) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[address(s)].field_3328):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(userDownlineCount[address(s)].field_3328) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                        mem[0] = address(s)
                        mem[32] = 26
                        idx = idx + 1
                        s = userDownlineCount[address(s)].field_0
                        continue 
                    if not arg2:
                        if uint256(userDownlineCount[stor11].field_3072) < uint256(userDownlineCount[stor11].field_3072):
                            revert with 0, 'SafeMath: addition overflow'
                        if uint256(userDownlineCount[stor11].field_3328) < uint256(userDownlineCount[stor11].field_3328):
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        require arg2
                        if arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / arg2 != stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if uint256(userDownlineCount[stor11].field_3072) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[stor11].field_3072):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(userDownlineCount[stor11].field_3072) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                        if uint256(userDownlineCount[stor11].field_3328) + (arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000) < uint256(userDownlineCount[stor11].field_3328):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(userDownlineCount[stor11].field_3328) += arg2 * stor('array', ('div', 0.03125, ('var', 0)), ('name', 'stor25', 25))[uint8(idx)] / 1000
                    mem[0] = stor11
                    mem[32] = 26
                    idx = idx + 1
                    s = userDownlineCount[stor11].field_0
                    continue 
    if not uint256(userDownlineCount[address(msg.sender)].field_1280):
        if block.timestamp <= stor10:
            uint256(userDownlineCount[address(msg.sender)].field_1024) = stor10
        else:
            uint256(userDownlineCount[address(msg.sender)].field_1024) = block.timestamp
        totalUsers++
    else:
        if stor10 > block.timestamp:
            if block.timestamp < block.timestamp:
                if uint256(userDownlineCount[address(msg.sender)].field_1280):
                    require uint256(userDownlineCount[address(msg.sender)].field_1280)
                    if 0 / uint256(userDownlineCount[address(msg.sender)].field_1280):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
        else:
            if uint256(userDownlineCount[address(msg.sender)].field_1024) < block.timestamp:
                if uint256(userDownlineCount[address(msg.sender)].field_1280):
                    require uint256(userDownlineCount[address(msg.sender)].field_1280)
                    if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / uint256(userDownlineCount[address(msg.sender)].field_1280) != block.timestamp - uint256(userDownlineCount[address(msg.sender)].field_1024):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)):
                        require (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280))
                        if (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / (block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) != 40:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000 > 0:
                            if uint256(userDownlineCount[address(msg.sender)].field_1792) + ((40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000) < uint256(userDownlineCount[address(msg.sender)].field_1792):
                                revert with 0, 'SafeMath: addition overflow'
                            uint256(userDownlineCount[address(msg.sender)].field_1792) += (40 * block.timestamp * uint256(userDownlineCount[address(msg.sender)].field_1280)) - (40 * uint256(userDownlineCount[address(msg.sender)].field_1024) * uint256(userDownlineCount[address(msg.sender)].field_1280)) / 24 * 3600 / 1000
                            uint256(userDownlineCount[address(msg.sender)].field_1024) = block.timestamp
    uint256(userDownlineCount[address(msg.sender)].field_1536) = block.timestamp
    if uint256(userDownlineCount[address(msg.sender)].field_1280) + arg2 < uint256(userDownlineCount[address(msg.sender)].field_1280):
        revert with 0, 'SafeMath: addition overflow'
    uint256(userDownlineCount[address(msg.sender)].field_1280) += arg2
    if totalBUSDStaked + arg2 < totalBUSDStaked:
        revert with 0, 'SafeMath: addition overflow'
    totalBUSDStaked += arg2
}



}
