contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address addrAdmin; offset 8
address operatorAddress;
mapping of uint8 stor2;
mapping of uint256 playerToIndexMap;
mapping of address indexToPlayerMap;
mapping of struct stor5;
array of uint256 playerStakeArray;
address stor7;
address stor8;
address addrOperator;
uint256 stakeCd;
uint256 unfreezingBalance;

function playerToIndexMap(address arg1) {
    return playerToIndexMap[arg1]
}

function operator() {
    return operatorAddress
}

function playerStakeArray(uint256 arg1) {
    require arg1 < playerStakeArray.length
    return playerStakeArray[arg1]
}

function indexToPlayerMap(uint256 arg1) {
    return indexToPlayerMap[arg1]
}

function unfreezingBalance() {
    return unfreezingBalance
}

function stakeCd() {
    return stakeCd
}

function isPaused() {
    return bool(stor0)
}

function addrAdmin() {
    return addrAdmin
}

function addrOperator() {
    return addrOperator
}

function isStakePaused() {
    return bool(stor0)
}

function pauseControllerMap(address arg1) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function getParam() {
    return stor7, stor8
}

function getMaxHolderIndex() {
    return (playerStakeArray.length - 1)
}

function setPause(bool arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    stor0 = uint8(arg1)
}

function setDevBLink(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    stor8 = arg1
}

function setStakePause(bool arg1) {
    if not stor2[address(msg.sender)]:
        require msg.sender == addrAdmin
    stor0 = uint8(arg1)
}

function setBLinkToken(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    stor7 = arg1
}

function setAddrOperator(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    addrOperator = arg1
}

function setPauseController(address arg1, bool arg2) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    stor2[address(arg1)] = uint8(arg2)
}

function setStakeCd(uint256 arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1 >= 1
    require arg1 <= 2400 * 24 * 3600
    stakeCd = arg1
}

function setAdmin(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_newAdmin can't be address 0'
    addrAdmin = arg1
}

function getStakeAmountByIndex(uint256 arg1) {
    if arg1 <= 0:
        return 0
    if arg1 >= playerStakeArray.length:
        return 0
    return indexToPlayerMap[arg1], playerStakeArray[arg1]
}

function setOperator(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_addr can't be address 0'
    operatorAddress = arg1
}

function getDevBLinkAmount() {
    require ext_code.size(stor8)
    call stor8.0x274b4379 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getStakeInfoByAddress(address arg1) {
    require arg1
    if playerToIndexMap[address(arg1)] <= 0:
        return address(arg1), 0, 0, 0
    if playerToIndexMap[address(arg1)] >= playerStakeArray.length:
        return address(arg1), 0, 0, 0
    return address(arg1), playerStakeArray[stor3[address(arg1)]], stor5[address(arg1)].field_0, stor5[address(arg1)].field_0
}

function WithdrawUnfreeze() {
    require stor5[address(msg.sender)].field_0 > 0
    require stor5[address(msg.sender)].field_224 <= block.timestamp
    require unfreezingBalance >= stor5[address(msg.sender)].field_0
    unfreezingBalance -= stor5[address(msg.sender)].field_0
    stor5[address(msg.sender)].field_0 = 0
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor5[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit WithdrawUnstakeBLink(stor5[address(msg.sender)].field_0, msg.sender);
}

function getTotalStakeBLink() {
    require ext_code.size(stor8)
    call stor8.0x274b4379 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require 2 * ext_call.return_data[0] >= unfreezingBalance
    return ext_call.return_data[0], (2 * ext_call.return_data[0]) - unfreezingBalance
}

function withdrawUnfreezeForece(address arg1) {
    if addrAdmin != msg.sender:
        require msg.sender == addrOperator
    require arg1
    require stor5[address(arg1)].field_0 > 0
    require stor5[address(arg1)].field_224 <= block.timestamp
    require unfreezingBalance >= stor5[address(arg1)].field_0
    unfreezingBalance -= stor5[address(arg1)].field_0
    stor5[address(arg1)].field_0 = 0
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), stor5[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit WithdrawUnstakeBLink(stor5[address(arg1)].field_0, arg1);
}

function CancelUnfreeze() {
    require not stor0
    require stor5[address(msg.sender)].field_0 > 0
    require unfreezingBalance >= stor5[address(msg.sender)].field_0
    require playerToIndexMap[address(msg.sender)] > 0
    require playerToIndexMap[address(msg.sender)] < playerStakeArray.length
    require playerStakeArray[stor3[address(msg.sender)]] + stor5[address(msg.sender)].field_0 >= playerStakeArray[stor3[address(msg.sender)]]
    unfreezingBalance -= stor5[address(msg.sender)].field_0
    stor5[address(msg.sender)].field_0 = 0
    require playerToIndexMap[address(msg.sender)] < playerStakeArray.length
    playerStakeArray[stor3[address(msg.sender)]] += stor5[address(msg.sender)].field_0
    emit UnstakeBLinkCancel(stor5[address(msg.sender)].field_0, playerStakeArray[stor3[address(msg.sender)]] + stor5[address(msg.sender)].field_0, msg.sender);
}

function Unfreeze(uint256 arg1) {
    require not stor0
    require playerToIndexMap[address(msg.sender)] > 0
    require playerToIndexMap[address(msg.sender)] < playerStakeArray.length
    require playerStakeArray[stor3[address(msg.sender)]] >= arg1
    require stor5[address(msg.sender)].field_0 + arg1 >= stor5[address(msg.sender)].field_0
    require playerToIndexMap[address(msg.sender)] < playerStakeArray.length
    playerStakeArray[stor3[address(msg.sender)]] -= arg1
    stor5[address(msg.sender)].field_0 = stor5[address(msg.sender)].field_0 + arg1 or block.timestamp + stakeCd << 224
    require unfreezingBalance + arg1 >= unfreezingBalance
    unfreezingBalance += arg1
    emit UnstakeBLink(stor5[address(msg.sender)].field_0, stor5[address(msg.sender)].field_0 + arg1, playerStakeArray[stor3[address(msg.sender)]] - arg1, block.timestamp + stakeCd, msg.sender);
}

function stakeDirect(uint256 arg1) {
    require not stor0
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not playerToIndexMap[address(msg.sender)]:
        playerToIndexMap[address(msg.sender)] = playerStakeArray.length
        indexToPlayerMap[stor6.length] = msg.sender
        playerStakeArray.length++
        playerStakeArray[playerStakeArray.length] = arg1
        emit StakeBLink(arg1, arg1, msg.sender);
    else:
        require playerToIndexMap[address(msg.sender)] < playerStakeArray.length
        require playerStakeArray[stor3[address(msg.sender)]] + arg1 >= arg1
        require playerStakeArray[stor3[address(msg.sender)]] + arg1 >= playerStakeArray[stor3[address(msg.sender)]]
        require playerToIndexMap[address(msg.sender)] < playerStakeArray.length
        playerStakeArray[stor3[address(msg.sender)]] += arg1
        emit StakeBLink(arg1, playerStakeArray[stor3[address(msg.sender)]] + arg1, msg.sender);
}

function receiveApproval(address arg1, uint256 arg2, bytes arg3) {
    require not stor0
    require msg.sender == stor7
    require arg2 >= 10^6
    require ext_code.size(stor7)
    call stor7.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not playerToIndexMap[address(arg1)]:
        playerToIndexMap[address(arg1)] = playerStakeArray.length
        indexToPlayerMap[stor6.length] = arg1
        playerStakeArray.length++
        playerStakeArray[playerStakeArray.length] = arg2
        emit StakeBLink(arg2, arg2, arg1);
    else:
        require playerToIndexMap[address(arg1)] < playerStakeArray.length
        require playerStakeArray[stor3[address(arg1)]] + arg2 >= arg2
        require playerStakeArray[stor3[address(arg1)]] + arg2 >= playerStakeArray[stor3[address(arg1)]]
        require playerToIndexMap[address(arg1)] < playerStakeArray.length
        playerStakeArray[stor3[address(arg1)]] += arg2
        emit StakeBLink(arg2, playerStakeArray[stor3[address(arg1)]] + arg2, arg1);
}

function unfreezeForece(uint256 arg1) {
    require not stor0
    if addrAdmin != msg.sender:
        require msg.sender == addrOperator
    require arg1 > 0
    require arg1 < playerStakeArray.length
    if indexToPlayerMap[arg1]:
        if stor5[stor4[arg1]].field_0 <= 0:
            if playerStakeArray[arg1] > 0:
                emit UnstakeBLink(stor5[stor4[arg1]].field_0, playerStakeArray[arg1], 0, block.timestamp, indexToPlayerMap[arg1]);
                require arg1 < playerStakeArray.length
                playerStakeArray[arg1] = 0
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args indexToPlayerMap[arg1], playerStakeArray[arg1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit WithdrawUnstakeBLink(playerStakeArray[arg1], indexToPlayerMap[arg1]);
        else:
            require unfreezingBalance >= stor5[stor4[arg1]].field_0
            unfreezingBalance -= stor5[stor4[arg1]].field_0
            stor5[stor4[arg1]].field_0 = 0
            require playerStakeArray[arg1] + stor5[stor4[arg1]].field_0 >= playerStakeArray[arg1]
            if playerStakeArray[arg1] + stor5[stor4[arg1]].field_0 > 0:
                emit UnstakeBLink(stor5[stor4[arg1]].field_0, playerStakeArray[arg1] + stor5[stor4[arg1]].field_0, 0, block.timestamp, indexToPlayerMap[arg1]);
                require arg1 < playerStakeArray.length
                playerStakeArray[arg1] = 0
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args indexToPlayerMap[arg1], playerStakeArray[arg1] + stor5[stor4[arg1]].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit WithdrawUnstakeBLink((playerStakeArray[arg1] + stor5[stor4[arg1]].field_0), indexToPlayerMap[arg1]);
}



}
