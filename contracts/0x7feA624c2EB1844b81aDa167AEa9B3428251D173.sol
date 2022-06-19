contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#  - _fallback()
#
address owner;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint8 stor2; offset 16
address sub_f2124dfdAddress; offset 24
uint256 rewardsPerBlock;
address feeAddress;
array of struct poolInfo;
array of struct sub_e44f5c50;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 sub_a7966a5b;
uint256 sub_e7926d5c;
address stor11;
mapping of struct userInfo;
mapping of uint8 stor13;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() {
    return totalAllocPoint
}

function sub_2d9fe8cc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function feeAddress() {
    return feeAddress
}

function startBlock() {
    return startBlock
}

function rewardsPerBlock() {
    return rewardsPerBlock
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_a7966a5b(?) {
    return sub_a7966a5b
}

function sub_e44f5c50(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_e44f5c50.length
    return sub_e44f5c50[arg1].field_0, sub_e44f5c50[arg1].field_256
}

function sub_e7926d5c(?) {
    return sub_e7926d5c
}

function sub_f2124dfd(?) {
    return sub_f2124dfdAddress
}

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_f317cd86(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a7966a5b = arg1
}

function updateTokenContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f2124dfdAddress = arg1
}

function setDefaultFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0, 'fee too high'
    sub_e7926d5c = arg1
}

function setActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor2.field_0) = uint8(arg1)
    emit SetActive(arg1);
}

function withdrawBNB() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call feeAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Invalid Address'
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
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

function sub_655061f6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    idx = 0
    while idx < sub_e44f5c50.length:
        mem[0] = 6
        if userInfo[arg2][address(arg1)].field_512 > !sub_e44f5c50[idx].field_256:
            revert with 0, 17
        if block.timestamp >= userInfo[arg2][address(arg1)].field_512 + sub_e44f5c50[idx].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= sub_e44f5c50.length:
            revert with 0, 50
        return sub_e44f5c50[idx].field_0
    return sub_e7926d5c
}

function withdrawToken() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall sub_f2124dfdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall sub_f2124dfdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call sub_f2124dfdAddress.0xa9059cbb with:
         gas gas_remaining wei
        args feeAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'safeTokenTransfer: transfer failed'
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_d4851066(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    sub_e44f5c50.length = 0
    mem[0] = 6
    idx = 0
    while 2 * sub_e44f5c50.length > idx:
        sub_e44f5c50[idx].field_0 = 0
        sub_e44f5c50[idx].field_256 = 0
        idx = idx + 2
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[(32 * idx) + 128] > 2500:
            revert with 0, 'fee too high'
        _49 = mem[64]
        mem[64] = mem[64] + 64
        if idx >= mem[96]:
            revert with 0, 50
        mem[_49] = mem[(32 * idx) + 128]
        if idx >= mem[(32 * arg1.length) + 128]:
            revert with 0, 50
        mem[_49 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
        sub_e44f5c50.length++
        mem[0] = 6
        sub_e44f5c50[sub_e44f5c50.length].field_0 = mem[_49]
        sub_e44f5c50[sub_e44f5c50.length].field_256 = mem[_49 + 32]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _45 = mem[64]
    mem[mem[64]] = 64
    _48 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _64 = mem[(32 * arg1.length) + 128]
    mem[_45 + (32 * mem[96]) + 96] = mem[(32 * arg1.length) + 128]
    mem[_45 + (32 * _48) + 128 len 32 * _64] = mem[(32 * arg1.length) + 160 len 32 * _64]
    emit 0x30451ca9: mem[mem[64] len _45 + (32 * _48) + (32 * _64) + -mem[64] + 128]
}

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_9]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not mem[_9]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_15]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not mem[_15]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_15]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_15]
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardsPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_16]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_16]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 13
    if stor13[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _38 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_38]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_38]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_38]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_38]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    stor13[address(arg2)] = 1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    if block.number > startBlock:
        stor36B6[stor5.length] = block.number
    else:
        stor36B6[stor5.length] = startBlock
    stor36B6[stor5.length] = 0
}

function pendingRewards(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number < poolInfo[arg1].field_512:
        revert with 0, 17
    if block.number - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function sub_185fe209(?) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor2.field_0):
        revert with 0, 'Not active'
    if uint8(stor2.field_8):
        revert with 0, 'Token swap in progress'
    if uint8(stor2.field_16):
        revert with 0, 'Add LP in progress'
    if msg.value < sub_a7966a5b:
        revert with 0, 'Not enough BNB to swap'
    if msg.value < msg.value / 2:
        revert with 0, 17
    mem[100] = this.address
    staticcall sub_f2124dfdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor2.field_8) = 1
    mem[ceil32(return_data.size) + 96] = 2
    staticcall stor11.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = sub_f2124dfdAddress
    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 128
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 356
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(stor11)
    call stor11.mem[mem[64] len 4] with:
       value msg.value / 2 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor2.field_8) = 0
    mem[mem[64] + 4] = this.address
    staticcall sub_f2124dfdAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _240 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _241 = mem[_240]
    if mem[_240] < ext_call.return_data[0]:
        revert with 0, 17
    uint8(stor2.field_16) = 1
    mem[mem[64] + 68] = 0
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    call stor11.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value msg.value - (msg.value / 2) wei
         gas gas_remaining wei
        args 0, sub_f2124dfdAddress, _241 - ext_call.return_data[0], 0, 0, this.address, block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _244 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _247 = mem[_244 + 64]
    uint8(stor2.field_16) = 0
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[32] = sha3(arg1, 12)
    mem[0] = 5
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 17
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(msg.sender)].field_256:
                revert with 0, 17
            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
                mem[mem[64] + 4] = this.address
                staticcall sub_f2124dfdAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _275 = mem[_268]
                mem[mem[64] + 4] = msg.sender
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= mem[_268]:
                    mem[mem[64] + 36] = (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    call sub_f2124dfdAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _282 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_282] == bool(mem[_282])
                    if not mem[_282]:
                        revert with 0, 'safeTokenTransfer: transfer failed'
                else:
                    mem[mem[64] + 36] = _275
                    call sub_f2124dfdAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _275
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_283] == bool(mem[_283])
                    if not mem[_283]:
                        revert with 0, 'safeTokenTransfer: transfer failed'
    else:
        mem[mem[64] + 4] = this.address
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _254 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_254]:
            poolInfo[arg1].field_512 = block.number
            if userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 17
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(msg.sender)].field_256:
                    revert with 0, 17
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
                    mem[mem[64] + 4] = this.address
                    staticcall sub_f2124dfdAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _284 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _294 = mem[_284]
                    mem[mem[64] + 4] = msg.sender
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= mem[_284]:
                        mem[mem[64] + 36] = (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        call sub_f2124dfdAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_304] == bool(mem[_304])
                        if not mem[_304]:
                            revert with 0, 'safeTokenTransfer: transfer failed'
                    else:
                        mem[mem[64] + 36] = _294
                        call sub_f2124dfdAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, _294
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_305] == bool(mem[_305])
                        if not mem[_305]:
                            revert with 0, 'safeTokenTransfer: transfer failed'
        else:
            if not poolInfo[arg1].field_256:
                poolInfo[arg1].field_512 = block.number
                if userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 17
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
                        mem[mem[64] + 4] = this.address
                        staticcall sub_f2124dfdAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _289 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _299 = mem[_289]
                        mem[mem[64] + 4] = msg.sender
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= mem[_289]:
                            mem[mem[64] + 36] = (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            call sub_f2124dfdAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_310] == bool(mem[_310])
                            if not mem[_310]:
                                revert with 0, 'safeTokenTransfer: transfer failed'
                        else:
                            mem[mem[64] + 36] = _299
                            call sub_f2124dfdAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _299
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _311 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_311] == bool(mem[_311])
                            if not mem[_311]:
                                revert with 0, 'safeTokenTransfer: transfer failed'
            else:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not mem[_254]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / mem[_254]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / mem[_254]
                poolInfo[arg1].field_512 = block.number
                if userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 17
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(msg.sender)].field_256:
                        revert with 0, 17
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
                        mem[mem[64] + 4] = this.address
                        staticcall sub_f2124dfdAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _411 = mem[_406]
                        mem[mem[64] + 4] = msg.sender
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= mem[_406]:
                            mem[mem[64] + 36] = (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            call sub_f2124dfdAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _416 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_416] == bool(mem[_416])
                            if not mem[_416]:
                                revert with 0, 'safeTokenTransfer: transfer failed'
                        else:
                            mem[mem[64] + 36] = _411
                            call sub_f2124dfdAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _411
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _417 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_417] == bool(mem[_417])
                            if not mem[_417]:
                                revert with 0, 'safeTokenTransfer: transfer failed'
    if _247:
        if userInfo[arg1][address(msg.sender)].field_0 > !_247:
            revert with 0, 17
        userInfo[arg1][address(msg.sender)].field_0 += _247
    if not userInfo[arg1][address(msg.sender)].field_512:
        userInfo[arg1][address(msg.sender)].field_512 = block.timestamp
    if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
        revert with 0, 17
    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(_247, msg.sender, arg1);
    stor1 = 1
}



}
