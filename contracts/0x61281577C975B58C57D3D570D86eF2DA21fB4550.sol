contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - deposit(uint256 arg1)
#  - sweepToken(address arg1, uint256 arg2)
#
uint256 sub_37dfbc4b;
address adminAddress;
uint8 stor3; offset 160
address stakeTokenAddress;
address offeringTokenAddress;
uint256 startBlock;
uint256 endBlock;
uint256 raisingAmount;
uint256 offeringAmount;
uint256 totalAmount;
uint256 totalDebt;
mapping of struct userInfo;
array of address addressList;
uint8 isInitialized;

function endBlock() {
    return endBlock
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, bool(userInfo[arg1].field_256), bool(userInfo[arg1].field_264)
}

function totalAmount() {
    return totalAmount
}

function sub_37dfbc4b(?) {
    return sub_37dfbc4b
}

function isInitialized() {
    return bool(isInitialized)
}

function startBlock() {
    return startBlock
}

function stakeToken() {
    return stakeTokenAddress
}

function raisingAmount() {
    return raisingAmount
}

function offeringToken() {
    return offeringTokenAddress
}

function addressList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < addressList.length
    return address(addressList[arg1])
}

function isNativeTokenStaking() {
    return bool(stor3)
}

function hasHarvested(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(userInfo[address(arg1)].field_264)
}

function offeringAmount() {
    return offeringAmount
}

function getAddressListLength() {
    return addressList.length
}

function adminAddress() {
    return adminAddress
}

function totalDebt() {
    return totalDebt
}

function _fallback() payable {
    revert
}

function sub_4c18c8cf(?) {
    require calldata.size - 4 >= 128
    if adminAddress != msg.sender:
        revert with 0, 'caller is not admin'
    offeringAmount = arg2
    raisingAmount = arg1
    endBlock = arg4
    sub_37dfbc4b = arg3
}

function setRaisingAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'caller is not admin'
    if block.number >= startBlock:
        revert with 0, 'cannot update during active iao'
    raisingAmount = arg1
}

function setOfferingAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'caller is not admin'
    if block.number >= startBlock:
        revert with 0, 'cannot update during active iao'
    offeringAmount = arg1
}

function getUserAllocation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalAmount:
        return 0
    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 'NH{q', 17
    if not totalAmount:
        revert with 'NH{q', 18
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmount)
}

function getTotalStakeTokenBalance() {
    if stor3:
        return eth.balance(this.address)
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg8 == arg8
    if isInitialized:
        revert with 0, 'already init'
    stakeTokenAddress = arg1
    if not arg1:
        stor3 = 1
    offeringTokenAddress = arg2
    startBlock = arg3
    if arg3 > !arg4:
        revert with 'NH{q', 17
    endBlock = arg3 + arg4
    sub_37dfbc4b = arg7
    offeringAmount = arg5
    raisingAmount = arg6
    totalAmount = 0
    adminAddress = arg8
}

function depositNative() payable {
    if block.number < startBlock:
        revert with 0, 'not iao time'
    if block.number >= endBlock:
        revert with 0, 'not iao time'
    if not stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'stake token is not native EVM token'
    if msg.value <= 0:
        revert with 0, 'value not > 0'
    if not userInfo[msg.sender].field_0:
        addressList.length++
        uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
    if userInfo[msg.sender].field_0 > !msg.value:
        revert with 'NH{q', 17
    userInfo[msg.sender].field_0 += msg.value
    if totalAmount > !msg.value:
        revert with 'NH{q', 17
    totalAmount += msg.value
    if totalDebt > !msg.value:
        revert with 'NH{q', 17
    totalDebt += msg.value
    emit Deposit(msg.value, msg.sender);
}

function getOfferingAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount <= raisingAmount:
        if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not raisingAmount:
            revert with 'NH{q', 18
        return (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount)
    if 0 == totalAmount:
        if offeringAmount and 0 > -1 / offeringAmount:
            revert with 'NH{q', 17
        else:
            return 0
    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 'NH{q', 17
    if not totalAmount:
        revert with 'NH{q', 18
    if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
        revert with 'NH{q', 17
    return (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12)
}

function getOfferingAmountPerPeriod(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount <= raisingAmount:
        if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not raisingAmount:
            revert with 'NH{q', 18
        return (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount)
    if 0 == totalAmount:
        if offeringAmount and 0 > -1 / offeringAmount:
            revert with 'NH{q', 17
        else:
            return 0
    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 'NH{q', 17
    if not totalAmount:
        revert with 'NH{q', 18
    if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
        revert with 'NH{q', 17
    return (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12)
}

function getRefundingAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount <= raisingAmount:
        return 0
    if bool(userInfo[address(arg1)].field_256) == 1:
        return 0
    if 0 == totalAmount:
        if raisingAmount and 0 > -1 / raisingAmount:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 < 0:
            revert with 'NH{q', 17
        return userInfo[address(arg1)].field_0
    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 'NH{q', 17
    if not totalAmount:
        revert with 'NH{q', 18
    if raisingAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / raisingAmount:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 < raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12:
        revert with 'NH{q', 17
    return (userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12))
}

function userTokenStatus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number >= endBlock:
        if totalAmount <= raisingAmount:
            if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            else:
                if not raisingAmount:
                    revert with 'NH{q', 18
                else:
                    if block.number < sub_37dfbc4b:
                        if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                            revert with 'NH{q', 17
                        else:
                            return 0, 0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount
                    else:
                        if userInfo[address(arg1)].field_264:
                            if block.number >= sub_37dfbc4b:
                                return 0
                            else:
                                if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                    revert with 'NH{q', 17
                                else:
                                    return 0, 0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount
                        else:
                            if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                revert with 'NH{q', 17
                            else:
                                return 0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount, 0
        else:
            if bool(userInfo[address(arg1)].field_256) != 1:
                if totalAmount != 0:
                    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 'NH{q', 17
                    else:
                        if not totalAmount:
                            revert with 'NH{q', 18
                        else:
                            if raisingAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / raisingAmount:
                                revert with 'NH{q', 17
                            else:
                                if userInfo[address(arg1)].field_0 < raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12:
                                    revert with 'NH{q', 17
                                else:
                                    if totalAmount <= raisingAmount:
                                        if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
                                            revert with 'NH{q', 17
                                        else:
                                            if not raisingAmount:
                                                revert with 'NH{q', 18
                                            else:
                                                if block.number < sub_37dfbc4b:
                                                    if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                                        revert with 'NH{q', 17
                                                    else:
                                                        return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 
                                                               0,
                                                               userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount
                                                else:
                                                    if userInfo[address(arg1)].field_264:
                                                        if block.number >= sub_37dfbc4b:
                                                            return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 0, 0
                                                        else:
                                                            if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                                                revert with 'NH{q', 17
                                                            else:
                                                                return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 
                                                                       0,
                                                                       userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount
                                                    else:
                                                        if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                                            revert with 'NH{q', 17
                                                        else:
                                                            return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 
                                                                   userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount,
                                                                   0
                                    else:
                                        if totalAmount != 0:
                                            if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                                revert with 'NH{q', 17
                                            else:
                                                if not totalAmount:
                                                    revert with 'NH{q', 18
                                                else:
                                                    if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
                                                        revert with 'NH{q', 17
                                                    else:
                                                        if block.number < sub_37dfbc4b:
                                                            if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                                                revert with 'NH{q', 17
                                                            else:
                                                                return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 
                                                                       0,
                                                                       offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12
                                                        else:
                                                            if userInfo[address(arg1)].field_264:
                                                                if block.number >= sub_37dfbc4b:
                                                                    return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 0, 0
                                                                else:
                                                                    if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                                                        revert with 'NH{q', 17
                                                                    else:
                                                                        return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 
                                                                               0,
                                                                               offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12
                                                            else:
                                                                if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                                                    revert with 'NH{q', 17
                                                                else:
                                                                    return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 
                                                                           offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12,
                                                                           0
                                        else:
                                            if offeringAmount and 0 > -1 / offeringAmount:
                                                revert with 'NH{q', 17
                                            else:
                                                if block.number < sub_37dfbc4b:
                                                    return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 0, 0
                                                else:
                                                    if userInfo[address(arg1)].field_264:
                                                        if block.number >= sub_37dfbc4b:
                                                            return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 0, 0
                                                        else:
                                                            return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 0, 0
                                                    else:
                                                        return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 0, 0
                else:
                    if raisingAmount and 0 > -1 / raisingAmount:
                        revert with 'NH{q', 17
                    else:
                        if userInfo[address(arg1)].field_0 < 0:
                            revert with 'NH{q', 17
                        else:
                            if totalAmount <= raisingAmount:
                                if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
                                    revert with 'NH{q', 17
                                else:
                                    if not raisingAmount:
                                        revert with 'NH{q', 18
                                    else:
                                        if block.number < sub_37dfbc4b:
                                            if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                                revert with 'NH{q', 17
                                            else:
                                                return userInfo[address(arg1)].field_0, 0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount
                                        else:
                                            if userInfo[address(arg1)].field_264:
                                                if block.number >= sub_37dfbc4b:
                                                    return userInfo[address(arg1)].field_0, 0, 0
                                                else:
                                                    if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                                        revert with 'NH{q', 17
                                                    else:
                                                        return userInfo[address(arg1)].field_0, 0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount
                                            else:
                                                if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                                    revert with 'NH{q', 17
                                                else:
                                                    return userInfo[address(arg1)].field_0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount, 0
                            else:
                                if totalAmount != 0:
                                    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                        revert with 'NH{q', 17
                                    else:
                                        if not totalAmount:
                                            revert with 'NH{q', 18
                                        else:
                                            if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
                                                revert with 'NH{q', 17
                                            else:
                                                if block.number < sub_37dfbc4b:
                                                    if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                                        revert with 'NH{q', 17
                                                    else:
                                                        return userInfo[address(arg1)].field_0, 0, offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12
                                                else:
                                                    if userInfo[address(arg1)].field_264:
                                                        if block.number >= sub_37dfbc4b:
                                                            return userInfo[address(arg1)].field_0, 0, 0
                                                        else:
                                                            if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                                                revert with 'NH{q', 17
                                                            else:
                                                                return userInfo[address(arg1)].field_0, 0, offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12
                                                    else:
                                                        if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                                            revert with 'NH{q', 17
                                                        else:
                                                            return userInfo[address(arg1)].field_0, offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12, 0
                                else:
                                    if offeringAmount and 0 > -1 / offeringAmount:
                                        revert with 'NH{q', 17
                                    else:
                                        if block.number < sub_37dfbc4b:
                                            return userInfo[address(arg1)].field_0, 0, 0
                                        else:
                                            if userInfo[address(arg1)].field_264:
                                                if block.number >= sub_37dfbc4b:
                                                    return userInfo[address(arg1)].field_0, 0, 0
                                                else:
                                                    return userInfo[address(arg1)].field_0, 0, 0
                                            else:
                                                return userInfo[address(arg1)].field_0, 0, 0
            else:
                if totalAmount <= raisingAmount:
                    if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
                        revert with 'NH{q', 17
                    else:
                        if not raisingAmount:
                            revert with 'NH{q', 18
                        else:
                            if block.number < sub_37dfbc4b:
                                if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                    revert with 'NH{q', 17
                                else:
                                    return 0, 0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount
                            else:
                                if userInfo[address(arg1)].field_264:
                                    if block.number >= sub_37dfbc4b:
                                        return 0
                                    else:
                                        if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                            revert with 'NH{q', 17
                                        else:
                                            return 0, 0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount
                                else:
                                    if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount):
                                        revert with 'NH{q', 17
                                    else:
                                        return 0, userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount, 0
                else:
                    if totalAmount != 0:
                        if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 'NH{q', 17
                        else:
                            if not totalAmount:
                                revert with 'NH{q', 18
                            else:
                                if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
                                    revert with 'NH{q', 17
                                else:
                                    if block.number < sub_37dfbc4b:
                                        if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                            revert with 'NH{q', 17
                                        else:
                                            return 0, 0, offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12
                                    else:
                                        if userInfo[address(arg1)].field_264:
                                            if block.number >= sub_37dfbc4b:
                                                return 0
                                            else:
                                                if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                                    revert with 'NH{q', 17
                                                else:
                                                    return 0, 0, offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12
                                        else:
                                            if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12):
                                                revert with 'NH{q', 17
                                            else:
                                                return 0, offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12, 0
                    else:
                        if offeringAmount and 0 > -1 / offeringAmount:
                            revert with 'NH{q', 17
                        else:
                            if block.number < sub_37dfbc4b:
                                return 0
                            else:
                                if userInfo[address(arg1)].field_264:
                                    if block.number >= sub_37dfbc4b:
                                        return 0
                                    else:
                                        return 0
                                else:
                                    return 0
    else:
        return 0
}

function finalWithdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'caller is not admin'
    mem[100] = this.address
    require ext_code.size(offeringTokenAddress)
    staticcall offeringTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'not enough offering token'
    if stor3:
        if arg1 > eth.balance(this.address):
            revert with 0, 'not enough stake token'
        if stor3:
            call msg.sender with:
               value arg1 wei
                 gas 23000 wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: NATIVE_TRANSFER_FAILED'
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = arg2
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
                mem[ceil32(return_data.size) + 328] = 0
                call offeringTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                        if not mem[ceil32(return_data.size) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 96] = return_data.size
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: NATIVE_TRANSFER_FAILED'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 133] = msg.sender
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 165] = arg2
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = 68
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 197] = 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(offeringTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0
                call offeringTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                        if not uint32(this.address), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 293])
                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 293]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = arg1
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + 328] = 0
        call stakeTokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[ceil32(return_data.size) + 296] = msg.sender
            mem[ceil32(return_data.size) + 328] = arg2
            mem[ceil32(return_data.size) + 260] = 68
            mem[ceil32(return_data.size) + 292 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 360] = 32
            mem[ceil32(return_data.size) + 392] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(offeringTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 424 len 96] = 0, msg.sender, arg2, 0
            mem[ceil32(return_data.size) + 492] = 0
            call offeringTokenAddress with:
               funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 456] == bool(mem[ceil32(return_data.size) + 456])
                    if not mem[ceil32(return_data.size) + 456]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = msg.sender
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg2
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 68
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 32
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425 len 96] = 0, msg.sender, arg2, 0
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 493] = 0
        call offeringTokenAddress with:
           funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 430] = 32
            mem[(4 * ceil32(return_data.size)) + 462] = 32
            mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 426
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 457])
        if mem[ceil32(return_data.size) + ceil32(return_data.size) + 457]:
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 42
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
        mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough stake token'
    if stor3:
        call msg.sender with:
           value arg1 wei
             gas 23000 wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: NATIVE_TRANSFER_FAILED'
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = arg2
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(offeringTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call offeringTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = return_data.size
            mem[(2 * ceil32(return_data.size)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: NATIVE_TRANSFER_FAILED'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133] = msg.sender
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = arg2
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 97] = 68
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(offeringTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0
            call offeringTokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                    if not uint32(this.address), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293])
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = arg1
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call stakeTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(2 * ceil32(return_data.size)) + 296] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 328] = arg2
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(offeringTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, msg.sender, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call offeringTokenAddress with:
           funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + 260] = return_data.size
    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
        if not mem[(2 * ceil32(return_data.size)) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg2
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(offeringTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, msg.sender, arg2, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call offeringTokenAddress with:
       funct Mask(32, 224, 0, msg.sender, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 'ot succeed'
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
