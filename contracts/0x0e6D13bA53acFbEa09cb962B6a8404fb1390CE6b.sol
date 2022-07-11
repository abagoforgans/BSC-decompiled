contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1)
#  - harvest(uint256 arg1)
#
const HARVEST_PERIODS = 4


uint8 stor1;
uint8 stor1; offset 8
uint16 stor1;
uint256 endBlock;
uint256 raisingAmount;
uint256 offeringAmount;
uint256 totalAmount;
uint256 totalDebt;
mapping of struct userInfo;
array of address addressList;
array of uint256 harvestReleaseBlocks;
address adminAddress;
uint8 stor7; offset 160
address stakeTokenAddress;
address offeringTokenAddress;
uint256 startBlock;

function endBlock() {
    return endBlock
}

function harvestReleaseBlocks(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 4
    return harvestReleaseBlocks[arg1]
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, bool(userInfo[arg1].field_512)
}

function totalAmount() {
    return totalAmount
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
    return bool(stor7)
}

function offeringAmount() {
    return offeringAmount
}

function hasHarvested(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= 4:
        revert with 0, 50
    return bool(stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / arg2) + 1)[uint8(arg2)])
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
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmount)
}

function getTotalStakeTokenBalance() {
    if stor7:
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

function depositNative() payable {
    if block.number < startBlock:
        revert with 0, 'not iao time'
    if block.number >= endBlock:
        revert with 0, 'not iao time'
    if not stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'stake token is not native EVM token'
    if msg.value <= 0:
        revert with 0, 'value not > 0'
    if not userInfo[msg.sender].field_0:
        addressList.length++
        uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
    if userInfo[msg.sender].field_0 > !msg.value:
        revert with 0, 17
    userInfo[msg.sender].field_0 += msg.value
    if totalAmount > !msg.value:
        revert with 0, 17
    totalAmount += msg.value
    if totalDebt > !msg.value:
        revert with 0, 17
    totalDebt += msg.value
    emit Deposit(msg.value, msg.sender);
}

function getOfferingAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount <= raisingAmount:
        if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not raisingAmount:
            revert with 0, 18
        return (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount)
    if 0 == totalAmount:
        if offeringAmount and 0 > -1 / offeringAmount:
            revert with 0, 17
        else:
            return 0
    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
        revert with 0, 17
    return (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12)
}

function getOfferingAmountPerPeriod(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount <= raisingAmount:
        if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not raisingAmount:
            revert with 0, 18
        return (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4)
    if 0 == totalAmount:
        if offeringAmount and 0 > -1 / offeringAmount:
            revert with 0, 17
        else:
            return 0
    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
        revert with 0, 17
    return (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4)
}

function getRefundingAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount <= raisingAmount:
        return 0
    if 1 == bool(userInfo[address(arg1)].field_512):
        return 0
    if 0 == totalAmount:
        if raisingAmount and 0 > -1 / raisingAmount:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 < 0:
            revert with 0, 17
        return userInfo[address(arg1)].field_0
    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    if raisingAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / raisingAmount:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 < raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12:
        revert with 0, 17
    return (userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12))
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg8 == arg8
    if uint8(stor1.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor1.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor1.field_8):
        uint16(stor1.field_0) = 257
    stakeTokenAddress = arg1
    if not arg1:
        stor7 = 1
    offeringTokenAddress = arg2
    startBlock = arg3
    if arg3 > !arg4:
        revert with 0, 17
    endBlock = arg3 + arg4
    idx = 0
    while idx < 4:
        if arg5 and idx > -1 / arg5:
            revert with 0, 17
        if endBlock > !(arg5 * idx):
            revert with 0, 17
        if idx >= 4:
            revert with 0, 50
        harvestReleaseBlocks[idx] = endBlock + (arg5 * idx)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    offeringAmount = arg6
    raisingAmount = arg7
    totalAmount = 0
    adminAddress = arg8
    if not uint8(stor1.field_8):
        uint8(stor1.field_8) = 0
}

function sweepToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'caller is not admin'
    if stakeTokenAddress == arg1:
        revert with 0, 'can not sweep stake token'
    if offeringTokenAddress == arg1:
        revert with 0, 'can not sweep offering token'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
    emit EmergencySweepWithdraw(ext_call.return_data[0], msg.sender, arg1);
}

function userTokenStatus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number < endBlock:
        return 0
    if totalAmount <= raisingAmount:
        if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not raisingAmount:
            revert with 0, 18
        idx = 0
        s = 0
        while idx < 4:
            if block.number >= harvestReleaseBlocks[idx]:
                mem[0] = arg1
                mem[32] = 15
                if idx >= 4:
                    revert with 0, 50
                if not stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                    if s > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4)
                    continue 
            if idx >= 4:
                revert with 0, 50
            if block.number < harvestReleaseBlocks[idx]:
                if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        return 0, s, 0
    if 1 == bool(userInfo[address(arg1)].field_512):
        if totalAmount <= raisingAmount:
            if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not raisingAmount:
                revert with 0, 18
            idx = 0
            s = 0
            while idx < 4:
                if block.number >= harvestReleaseBlocks[idx]:
                    mem[0] = arg1
                    mem[32] = 15
                    if idx >= 4:
                        revert with 0, 50
                    if not stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                        if s > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4)
                        continue 
                if idx >= 4:
                    revert with 0, 50
                if block.number < harvestReleaseBlocks[idx]:
                    if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
        else:
            if 0 == totalAmount:
                if offeringAmount and 0 > -1 / offeringAmount:
                    revert with 0, 17
                idx = 0
                while idx < 4:
                    if block.number < harvestReleaseBlocks[idx]:
                        if idx >= 4:
                            revert with 0, 50
                    else:
                        mem[0] = arg1
                        mem[32] = 15
                        if idx >= 4:
                            revert with 0, 50
                        if stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                            if idx >= 4:
                                revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return 0
            if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not totalAmount:
                revert with 0, 18
            if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
                revert with 0, 17
            idx = 0
            s = 0
            while idx < 4:
                if block.number >= harvestReleaseBlocks[idx]:
                    mem[0] = arg1
                    mem[32] = 15
                    if idx >= 4:
                        revert with 0, 50
                    if not stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                        if s > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4)
                        continue 
                if idx >= 4:
                    revert with 0, 50
                if block.number < harvestReleaseBlocks[idx]:
                    if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
        return 0, s, 0
    if 0 == totalAmount:
        if raisingAmount and 0 > -1 / raisingAmount:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 < 0:
            revert with 0, 17
        if totalAmount <= raisingAmount:
            if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
                revert with 0, 17
            if not raisingAmount:
                revert with 0, 18
            idx = 0
            s = 0
            while idx < 4:
                if block.number >= harvestReleaseBlocks[idx]:
                    mem[0] = arg1
                    mem[32] = 15
                    if idx >= 4:
                        revert with 0, 50
                    if not stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                        if s > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4)
                        continue 
                if idx >= 4:
                    revert with 0, 50
                if block.number < harvestReleaseBlocks[idx]:
                    if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
        else:
            if 0 == totalAmount:
                if offeringAmount and 0 > -1 / offeringAmount:
                    revert with 0, 17
                idx = 0
                while idx < 4:
                    if block.number < harvestReleaseBlocks[idx]:
                        if idx >= 4:
                            revert with 0, 50
                    else:
                        mem[0] = arg1
                        mem[32] = 15
                        if idx >= 4:
                            revert with 0, 50
                        if stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                            if idx >= 4:
                                revert with 0, 50
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return userInfo[address(arg1)].field_0, 0, 0
            if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                revert with 0, 17
            if not totalAmount:
                revert with 0, 18
            if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
                revert with 0, 17
            idx = 0
            s = 0
            while idx < 4:
                if block.number >= harvestReleaseBlocks[idx]:
                    mem[0] = arg1
                    mem[32] = 15
                    if idx >= 4:
                        revert with 0, 50
                    if not stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                        if s > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4)
                        continue 
                if idx >= 4:
                    revert with 0, 50
                if block.number < harvestReleaseBlocks[idx]:
                    if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
        return userInfo[address(arg1)].field_0, s, 0
    if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not totalAmount:
        revert with 0, 18
    if raisingAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / raisingAmount:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 < raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12:
        revert with 0, 17
    if totalAmount <= raisingAmount:
        if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not raisingAmount:
            revert with 0, 18
        idx = 0
        s = 0
        while idx < 4:
            if block.number >= harvestReleaseBlocks[idx]:
                mem[0] = arg1
                mem[32] = 15
                if idx >= 4:
                    revert with 0, 50
                if not stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                    if s > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4)
                    continue 
            if idx >= 4:
                revert with 0, 50
            if block.number < harvestReleaseBlocks[idx]:
                if 0 > !(userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount / 4):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
    else:
        if 0 == totalAmount:
            if offeringAmount and 0 > -1 / offeringAmount:
                revert with 0, 17
            idx = 0
            while idx < 4:
                if block.number < harvestReleaseBlocks[idx]:
                    if idx >= 4:
                        revert with 0, 50
                else:
                    mem[0] = arg1
                    mem[32] = 15
                    if idx >= 4:
                        revert with 0, 50
                    if stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                        if idx >= 4:
                            revert with 0, 50
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), 0, 0
        if userInfo[address(arg1)].field_0 > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not totalAmount:
            revert with 0, 18
        if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount > -1 / offeringAmount:
            revert with 0, 17
        idx = 0
        s = 0
        while idx < 4:
            if block.number >= harvestReleaseBlocks[idx]:
                mem[0] = arg1
                mem[32] = 15
                if idx >= 4:
                    revert with 0, 50
                if not stor(('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor15', 15)) + (0.03125 / idx) + 1)[uint8(idx)]:
                    if s > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4)
                    continue 
            if idx >= 4:
                revert with 0, 50
            if block.number < harvestReleaseBlocks[idx]:
                if 0 > !(offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12 / 4):
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
    return userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^12), s, 0
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
    if stor7:
        if arg1 > eth.balance(this.address):
            revert with 0, 'not enough stake token'
        if stor7:
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
        mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
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
    if stor7:
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
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
