contract main {




// =====================  Runtime code  =====================


#
#  - sub_a2ea5c16(?)
#  - withdrawSaleToken(address arg1, uint256 arg2)
#
const bnbBalance = eth.balance(this.address)


uint8 paused; offset 160
uint32 stor0;
address owner;
uint256 stor0;
uint256 stor1;
address saleTokenAddress;
address priceFeedAddress;
uint256 salePrice;
uint256 stor5;
uint256 saleStartTime;
uint256 saleEndTime;
uint256 sub_3b700edf;
uint256 minimumAmount;
uint256 maximumAmount;
address sub_7e2b3a7eAddress;

function saleStartTime() {
    return saleStartTime
}

function sub_3b700edf(?) {
    return sub_3b700edf
}

function paused() {
    return bool(paused)
}

function priceFeed() {
    return priceFeedAddress
}

function sub_7e2b3a7e(?) {
    return sub_7e2b3a7eAddress
}

function owner() {
    return owner
}

function maximumAmount() {
    return maximumAmount
}

function minimumAmount() {
    return minimumAmount
}

function saleToken() {
    return saleTokenAddress
}

function saleEndTime() {
    return saleEndTime
}

function salePrice() {
    return salePrice
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSalePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    salePrice = arg1
}

function sub_058df89f(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumAmount = arg1
    maximumAmount = arg2
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function updateTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    saleStartTime = arg1
    saleEndTime = arg2
}

function sub_b7a652d2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    priceFeedAddress = address(arg1)
}

function sub_14e269e6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'address can't be zero'
    sub_7e2b3a7eAddress = address(arg1)
}

function setPreSaleTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > arg1:
        revert with 0, 'Invalid Time'
    if arg1 >= arg2:
        revert with 0, 'Invalid Time'
    saleStartTime = arg1
    saleEndTime = arg2
}

function getSaleTokenBalance() {
    require ext_code.size(saleTokenAddress)
    staticcall saleTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function getPrice() {
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function getAmountOut(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not stor5:
        if not stor5:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / stor5)
    if stor5 and arg1 > -1 / stor5:
        revert with 0, 17
    if not stor5:
        revert with 0, 18
    if stor5 * arg1 / stor5 != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor5 * arg1:
        if not stor5:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / stor5)
    if stor5 * arg1 and ext_call.return_data[32] > -1 / stor5 * arg1:
        revert with 0, 17
    if not stor5 * arg1:
        revert with 0, 18
    if stor5 * arg1 * ext_call.return_data[32] / stor5 * arg1 != ext_call.return_data[32]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18:
        if not stor5:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / stor5)
    if stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18 and salePrice > -1 / stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18:
        revert with 0, 17
    if not stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18:
        revert with 0, 18
    if stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18 != salePrice:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor5:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5)
}

function buy() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.latestRoundData() with:
            gas gas_remaining wei
    mem[96 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not stor5:
        mem[ceil32(return_data.size) + 96] = 26
        mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 160] = 26
        mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
        if not stor5:
            revert with 0, 'SafeMath: division by zero', 0
        if msg.value < minimumAmount:
            revert with 0, 'BEP20: Amount not correct'
        if msg.value > maximumAmount:
            revert with 0, 'BEP20: Amount not correct'
        if block.timestamp <= saleStartTime:
            revert with 0, 'BEP20: PreSale over'
        if block.timestamp >= saleEndTime:
            revert with 0, 'BEP20: PreSale over'
        if eth.balance(this.address) < msg.value:
            revert with 0, 'Address: insufficient balance'
        call sub_7e2b3a7eAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            mem[ceil32(return_data.size) + 260] = msg.sender
            mem[ceil32(return_data.size) + 292] = 0 / stor5
            mem[ceil32(return_data.size) + 224] = 68
            mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 256 len 4] = transfer(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + 324] = 32
            mem[ceil32(return_data.size) + 356] = 'SafeBEP20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(saleTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 388 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
            mem[ceil32(return_data.size) + 456] = 0
            call saleTokenAddress with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                    if not mem[ceil32(return_data.size) + 420]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 224] = return_data.size
            mem[ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Address: unable to send value, recipient may have reverted'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = msg.sender
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0 / stor5
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 68
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 257 len 4] = transfer(address arg1, uint256 arg2)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 32
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 'SafeBEP20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(saleTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = 0
            call saleTokenAddress with:
               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 421] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 421])
                    if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 421]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        if sub_3b700edf > !(0 / stor5):
            revert with 0, 17
        if sub_3b700edf + (0 / stor5) < sub_3b700edf:
            revert with 0, 'SafeMath: addition overflow'
        sub_3b700edf += 0 / stor5
        emit 0xc32dd7af: 0 / stor5, block.timestamp, msg.sender
    else:
        if stor5 and msg.value > -1 / stor5:
            revert with 0, 17
        if not stor5:
            revert with 0, 18
        if stor5 * msg.value / stor5 != msg.value:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor5 * msg.value:
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            mem[ceil32(return_data.size) + 160] = 26
            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
            if not stor5:
                revert with 0, 'SafeMath: division by zero', 0
            if msg.value < minimumAmount:
                revert with 0, 'BEP20: Amount not correct'
            if msg.value > maximumAmount:
                revert with 0, 'BEP20: Amount not correct'
            if block.timestamp <= saleStartTime:
                revert with 0, 'BEP20: PreSale over'
            if block.timestamp >= saleEndTime:
                revert with 0, 'BEP20: PreSale over'
            if eth.balance(this.address) < msg.value:
                revert with 0, 'Address: insufficient balance'
            call sub_7e2b3a7eAddress with:
               value msg.value wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                mem[ceil32(return_data.size) + 260] = msg.sender
                mem[ceil32(return_data.size) + 292] = 0 / stor5
                mem[ceil32(return_data.size) + 224] = 68
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 256 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + 324] = 32
                mem[ceil32(return_data.size) + 356] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(saleTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 388 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                mem[ceil32(return_data.size) + 456] = 0
                call saleTokenAddress with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                        if not mem[ceil32(return_data.size) + 420]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 224] = return_data.size
                mem[ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = msg.sender
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0 / stor5
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 68
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 257 len 4] = transfer(address arg1, uint256 arg2)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 32
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(saleTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 389 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = 0
                call saleTokenAddress with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                        if not ext_call.return_data[32]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 421] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 421])
                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 421]:
                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
            if sub_3b700edf > !(0 / stor5):
                revert with 0, 17
            if sub_3b700edf + (0 / stor5) < sub_3b700edf:
                revert with 0, 'SafeMath: addition overflow'
            sub_3b700edf += 0 / stor5
            emit 0xc32dd7af: 0 / stor5, block.timestamp, msg.sender
        else:
            if stor5 * msg.value and ext_call.return_data[32] > -1 / stor5 * msg.value:
                revert with 0, 17
            if not stor5 * msg.value:
                revert with 0, 18
            if stor5 * msg.value * ext_call.return_data[32] / stor5 * msg.value != ext_call.return_data[32]:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18:
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                if not stor5:
                    revert with 0, 'SafeMath: division by zero', 0
                if msg.value < minimumAmount:
                    revert with 0, 'BEP20: Amount not correct'
                if msg.value > maximumAmount:
                    revert with 0, 'BEP20: Amount not correct'
                if block.timestamp <= saleStartTime:
                    revert with 0, 'BEP20: PreSale over'
                if block.timestamp >= saleEndTime:
                    revert with 0, 'BEP20: PreSale over'
                if eth.balance(this.address) < msg.value:
                    revert with 0, 'Address: insufficient balance'
                call sub_7e2b3a7eAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    mem[ceil32(return_data.size) + 260] = msg.sender
                    mem[ceil32(return_data.size) + 292] = 0 / stor5
                    mem[ceil32(return_data.size) + 224] = 68
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 256 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(saleTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call saleTokenAddress with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                            if not mem[ceil32(return_data.size) + 420]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 224] = return_data.size
                    mem[ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 0 / stor5
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 68
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(saleTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = 0
                    call saleTokenAddress with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 421] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 421])
                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 421]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                if sub_3b700edf > !(0 / stor5):
                    revert with 0, 17
                if sub_3b700edf + (0 / stor5) < sub_3b700edf:
                    revert with 0, 'SafeMath: addition overflow'
                sub_3b700edf += 0 / stor5
                emit 0xc32dd7af: 0 / stor5, block.timestamp, msg.sender
            else:
                if stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 and salePrice > -1 / stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18:
                    revert with 0, 17
                if not stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18:
                    revert with 0, 18
                if stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 != salePrice:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                if not stor5:
                    revert with 0, 'SafeMath: division by zero', 0
                if msg.value < minimumAmount:
                    revert with 0, 'BEP20: Amount not correct'
                if msg.value > maximumAmount:
                    revert with 0, 'BEP20: Amount not correct'
                if block.timestamp <= saleStartTime:
                    revert with 0, 'BEP20: PreSale over'
                if block.timestamp >= saleEndTime:
                    revert with 0, 'BEP20: PreSale over'
                if eth.balance(this.address) < msg.value:
                    revert with 0, 'Address: insufficient balance'
                call sub_7e2b3a7eAddress with:
                   value msg.value wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    mem[ceil32(return_data.size) + 260] = msg.sender
                    mem[ceil32(return_data.size) + 292] = stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5
                    mem[ceil32(return_data.size) + 224] = 68
                    mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 256 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + 324] = 32
                    mem[ceil32(return_data.size) + 356] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(saleTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 388 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0
                    mem[ceil32(return_data.size) + 456] = 0
                    call saleTokenAddress with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                            if not mem[ceil32(return_data.size) + 420]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 224] = return_data.size
                    mem[ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = msg.sender
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 225] = 68
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257 len 4] = transfer(address arg1, uint256 arg2)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 'SafeBEP20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(saleTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = 0
                    call saleTokenAddress with:
                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                            if not ext_call.return_data[32]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 421] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 421])
                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 421]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                if sub_3b700edf > !(stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5):
                    revert with 0, 17
                if sub_3b700edf + (stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5) < sub_3b700edf:
                    revert with 0, 'SafeMath: addition overflow'
                sub_3b700edf += stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5
                emit 0xc32dd7af: stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, block.timestamp, msg.sender
    stor1 = 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x98d5fdca(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x5c195217(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x1cbaee2d(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x058df89f(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        minimumAmount = arg1
                        maximumAmount = arg2
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x14e269e6(?????):
                            require unknown_0x1919fed7(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            salePrice = arg1
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(arg1):
                                revert with 0, 'address can't be zero'
                            sub_7e2b3a7eAddress = address(arg1)
                else:
                    if unknown_0x1cbaee2d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return saleStartTime
                    if unknown_0x21f1b677(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        saleStartTime = arg1
                        saleEndTime = arg2
                    else:
                        if unknown_0x3b700edf(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_3b700edf
                        require unknown_0x3f4ba83a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not paused:
                            revert with 0, 'Pausable: not paused'
                        paused = 0
                        emit Unpaused(msg.sender);
            if unknown_0x741bef1a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x741bef1a(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return priceFeedAddress
                if unknown_0x7e2b3a7e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_7e2b3a7eAddress
                if uint32(call.func_hash) >> 224 != unknown_0x8456cb59(?????):
                    require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if paused:
                    revert with 0, 'Pausable: paused'
                paused = 1
                emit Paused(msg.sender);
            if uint32(call.func_hash) >> 224 != unknown_0x5c195217(?????):
                if unknown_0x5c975abb(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(paused)
                require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            require not msg.value
            require calldata.size - 4 >= 32
            require ext_code.size(priceFeedAddress)
            staticcall priceFeedAddress.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if not stor5:
                if not stor5:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / stor5)
            if stor5 and arg1 > -1 / stor5:
                revert with 0, 17
            if not stor5:
                revert with 0, 18
            if stor5 * arg1 / stor5 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor5 * arg1:
                if not stor5:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / stor5)
            if stor5 * arg1 and ext_call.return_data[32] > -1 / stor5 * arg1:
                revert with 0, 17
            if not stor5 * arg1:
                revert with 0, 18
            if stor5 * arg1 * ext_call.return_data[32] / stor5 * arg1 != ext_call.return_data[32]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18:
                if not stor5:
                    revert with 0, 'SafeMath: division by zero', 0
                return (0 / stor5)
            if stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18 and salePrice > -1 / stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18:
                revert with 0, 17
            if not stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18:
                revert with 0, 18
            if stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18 != salePrice:
                revert with 0, 'SafeMath: multiplication overflow'
            if not stor5:
                revert with 0, 'SafeMath: division by zero', 0
            return (stor5 * arg1 * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5)
        if unknown_0xd4b2c67d(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf01a88ee(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xd4b2c67d(?????):
                    if unknown_0xe985e367(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return saleTokenAddress
                    require unknown_0xed338ff1(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return saleEndTime
                require not msg.value
                require calldata.size - 4 >= 64
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if block.timestamp > arg1:
                    revert with 0, 'Invalid Time'
                if arg1 >= arg2:
                    revert with 0, 'Invalid Time'
                saleStartTime = arg1
                saleEndTime = arg2
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xf01a88ee(?????):
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
                    if unknown_0xf51f96dd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return salePrice
                    require unknown_0xf6a55a29(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require ext_code.size(saleTokenAddress)
                    staticcall saleTokenAddress.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if block.timestamp <= saleEndTime:
                    revert with 0, 'BEP20: PreSale over'
                mem[164] = address(arg1)
                mem[196] = arg2
                mem[128] = 68
                mem[164 len 28] = address(arg1) << 64
                mem[160 len 4] = transfer(address arg1, uint256 arg2)
                mem[228] = 32
                mem[260] = 'SafeBEP20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(saleTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0
                mem[360] = 0
                call saleTokenAddress with:
                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, arg2, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    require not mem[96]
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[324] == bool(mem[324])
                    if not mem[324]:
                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
        else:
            if unknown_0xa9bcea61(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xa9bcea61(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return maximumAmount
                if uint32(call.func_hash) >> 224 != unknown_0xb7a652d2(?????):
                    if unknown_0xbb0c8298(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return minimumAmount
                    require unknown_0xd013cbe2(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return eth.balance(this.address)
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                priceFeedAddress = address(arg1)
            else:
                if unknown_0x98d5fdca(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(priceFeedAddress)
                    staticcall priceFeedAddress.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                    return ext_call.return_data[32]
                if unknown_0xa2ea5c16(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if saleTokenAddress == address(arg1):
                        revert with 0, 'Unable to withdraw this token'
                    if not address(arg1):
                        if eth.balance(this.address) < arg2:
                            revert with 0, 'Address: insufficient balance'
                        call owner with:
                           value arg2 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        mem[164] = owner
                        mem[196] = arg2
                        mem[128] = 68
                        mem[164 len 28] = Mask(224, 0, stor0.field_0)
                        mem[160 len 4] = transfer(address arg1, uint256 arg2)
                        mem[228] = 32
                        mem[260] = 'SafeBEP20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 'Address: insufficient balance for call'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg2, 0
                        mem[360] = 0
                        call address(arg1) with:
                           funct Mask(32, 224, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg2, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, transfer(address arg1, uint256 arg2), Mask(224, 0, stor0.field_0), uint32(stor0.field_0), arg2, 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            require not mem[96]
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeBEP20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[324] == bool(mem[324])
                            if not mem[324]:
                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                else:
                    require unknown_0xa6f2ae3a(?????) == uint32(call.func_hash) >> 224
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if stor1 == 2:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor1 = 2
                    require ext_code.size(priceFeedAddress)
                    staticcall priceFeedAddress.latestRoundData() with:
                            gas gas_remaining wei
                    mem[128 len 160] = ext_call.return_data[0 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                    if not stor5:
                        mem[ceil32(return_data.size) + 128] = 26
                        mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 192] = 26
                        mem[ceil32(return_data.size) + 224] = 'SafeMath: division by zero'
                        if not stor5:
                            revert with 0, 'SafeMath: division by zero', 0
                        if msg.value < minimumAmount:
                            revert with 0, 'BEP20: Amount not correct'
                        if msg.value > maximumAmount:
                            revert with 0, 'BEP20: Amount not correct'
                        if block.timestamp <= saleStartTime:
                            revert with 0, 'BEP20: PreSale over'
                        if block.timestamp >= saleEndTime:
                            revert with 0, 'BEP20: PreSale over'
                        if eth.balance(this.address) < msg.value:
                            revert with 0, 'Address: insufficient balance'
                        call sub_7e2b3a7eAddress with:
                           value msg.value wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            mem[ceil32(return_data.size) + 292] = msg.sender
                            mem[ceil32(return_data.size) + 324] = 0 / stor5
                            mem[ceil32(return_data.size) + 256] = 68
                            mem[ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(return_data.size) + 288 len 4] = transfer(address arg1, uint256 arg2)
                            mem[ceil32(return_data.size) + 356] = 32
                            mem[ceil32(return_data.size) + 388] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(saleTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 420 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                            mem[ceil32(return_data.size) + 488] = 0
                            call saleTokenAddress with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                                    if not mem[ceil32(return_data.size) + 452]:
                                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 256] = return_data.size
                            mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = msg.sender
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 0 / stor5
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = 68
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 289 len 4] = transfer(address arg1, uint256 arg2)
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 32
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = 'SafeBEP20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(saleTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = 0
                            call saleTokenAddress with:
                               funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 453])
                                    if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 453]:
                                        revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                        if sub_3b700edf > !(0 / stor5):
                            revert with 0, 17
                        if sub_3b700edf + (0 / stor5) < sub_3b700edf:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_3b700edf += 0 / stor5
                        emit 0xc32dd7af: 0 / stor5, block.timestamp, msg.sender
                    else:
                        if stor5 and msg.value > -1 / stor5:
                            revert with 0, 17
                        if not stor5:
                            revert with 0, 18
                        if stor5 * msg.value / stor5 != msg.value:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not stor5 * msg.value:
                            mem[ceil32(return_data.size) + 128] = 26
                            mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 192] = 26
                            mem[ceil32(return_data.size) + 224] = 'SafeMath: division by zero'
                            if not stor5:
                                revert with 0, 'SafeMath: division by zero', 0
                            if msg.value < minimumAmount:
                                revert with 0, 'BEP20: Amount not correct'
                            if msg.value > maximumAmount:
                                revert with 0, 'BEP20: Amount not correct'
                            if block.timestamp <= saleStartTime:
                                revert with 0, 'BEP20: PreSale over'
                            if block.timestamp >= saleEndTime:
                                revert with 0, 'BEP20: PreSale over'
                            if eth.balance(this.address) < msg.value:
                                revert with 0, 'Address: insufficient balance'
                            call sub_7e2b3a7eAddress with:
                               value msg.value wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[ceil32(return_data.size) + 292] = msg.sender
                                mem[ceil32(return_data.size) + 324] = 0 / stor5
                                mem[ceil32(return_data.size) + 256] = 68
                                mem[ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(return_data.size) + 288 len 4] = transfer(address arg1, uint256 arg2)
                                mem[ceil32(return_data.size) + 356] = 32
                                mem[ceil32(return_data.size) + 388] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(saleTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 420 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                                mem[ceil32(return_data.size) + 488] = 0
                                call saleTokenAddress with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                                        if not mem[ceil32(return_data.size) + 452]:
                                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 256] = return_data.size
                                mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = msg.sender
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 0 / stor5
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = 68
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 289 len 4] = transfer(address arg1, uint256 arg2)
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 32
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = 'SafeBEP20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(saleTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = 0
                                call saleTokenAddress with:
                                   funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeBEP20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 453])
                                        if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 453]:
                                            revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                            if sub_3b700edf > !(0 / stor5):
                                revert with 0, 17
                            if sub_3b700edf + (0 / stor5) < sub_3b700edf:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_3b700edf += 0 / stor5
                            emit 0xc32dd7af: 0 / stor5, block.timestamp, msg.sender
                        else:
                            if stor5 * msg.value and ext_call.return_data[32] > -1 / stor5 * msg.value:
                                revert with 0, 17
                            if not stor5 * msg.value:
                                revert with 0, 18
                            if stor5 * msg.value * ext_call.return_data[32] / stor5 * msg.value != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 128] = 26
                            mem[ceil32(return_data.size) + 160] = 'SafeMath: division by zero'
                            if not stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18:
                                mem[ceil32(return_data.size) + 192] = 26
                                mem[ceil32(return_data.size) + 224] = 'SafeMath: division by zero'
                                if not stor5:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if msg.value < minimumAmount:
                                    revert with 0, 'BEP20: Amount not correct'
                                if msg.value > maximumAmount:
                                    revert with 0, 'BEP20: Amount not correct'
                                if block.timestamp <= saleStartTime:
                                    revert with 0, 'BEP20: PreSale over'
                                if block.timestamp >= saleEndTime:
                                    revert with 0, 'BEP20: PreSale over'
                                if eth.balance(this.address) < msg.value:
                                    revert with 0, 'Address: insufficient balance'
                                call sub_7e2b3a7eAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + 292] = msg.sender
                                    mem[ceil32(return_data.size) + 324] = 0 / stor5
                                    mem[ceil32(return_data.size) + 256] = 68
                                    mem[ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(return_data.size) + 288 len 4] = transfer(address arg1, uint256 arg2)
                                    mem[ceil32(return_data.size) + 356] = 32
                                    mem[ceil32(return_data.size) + 388] = 'SafeBEP20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(saleTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 420 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                                    mem[ceil32(return_data.size) + 488] = 0
                                    call saleTokenAddress with:
                                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                                            if not mem[ceil32(return_data.size) + 452]:
                                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 256] = return_data.size
                                    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = msg.sender
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = 0 / stor5
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = 68
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 289 len 4] = transfer(address arg1, uint256 arg2)
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 32
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = 'SafeBEP20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(saleTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len 96] = transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = 0
                                    call saleTokenAddress with:
                                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, 0 / stor5, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 453])
                                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 453]:
                                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                if sub_3b700edf > !(0 / stor5):
                                    revert with 0, 17
                                if sub_3b700edf + (0 / stor5) < sub_3b700edf:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_3b700edf += 0 / stor5
                                emit 0xc32dd7af: 0 / stor5, block.timestamp, msg.sender
                            else:
                                if stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 and salePrice > -1 / stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18:
                                    revert with 0, 17
                                if not stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18:
                                    revert with 0, 18
                                if stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 != salePrice:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 192] = 26
                                mem[ceil32(return_data.size) + 224] = 'SafeMath: division by zero'
                                if not stor5:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if msg.value < minimumAmount:
                                    revert with 0, 'BEP20: Amount not correct'
                                if msg.value > maximumAmount:
                                    revert with 0, 'BEP20: Amount not correct'
                                if block.timestamp <= saleStartTime:
                                    revert with 0, 'BEP20: PreSale over'
                                if block.timestamp >= saleEndTime:
                                    revert with 0, 'BEP20: PreSale over'
                                if eth.balance(this.address) < msg.value:
                                    revert with 0, 'Address: insufficient balance'
                                call sub_7e2b3a7eAddress with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + 292] = msg.sender
                                    mem[ceil32(return_data.size) + 324] = stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5
                                    mem[ceil32(return_data.size) + 256] = 68
                                    mem[ceil32(return_data.size) + 292 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(return_data.size) + 288 len 4] = transfer(address arg1, uint256 arg2)
                                    mem[ceil32(return_data.size) + 356] = 32
                                    mem[ceil32(return_data.size) + 388] = 'SafeBEP20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(saleTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 420 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0
                                    mem[ceil32(return_data.size) + 488] = 0
                                    call saleTokenAddress with:
                                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                                            if not mem[ceil32(return_data.size) + 452]:
                                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 256] = return_data.size
                                    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = msg.sender
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 257] = 68
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 289 len 4] = transfer(address arg1, uint256 arg2)
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = 32
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 389] = 'SafeBEP20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(saleTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 421 len 96] = transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = 0
                                    call saleTokenAddress with:
                                       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 453 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeBEP20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 453] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 453])
                                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 453]:
                                                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
                                if sub_3b700edf > !(stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5):
                                    revert with 0, 17
                                if sub_3b700edf + (stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5) < sub_3b700edf:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_3b700edf += stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5
                                emit 0xc32dd7af: stor5 * msg.value * ext_call.return_data[32] / 100000000 * 10^18 * salePrice / stor5, block.timestamp, msg.sender
                    stor1 = 1
}



}
