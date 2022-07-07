contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1


address owner;
address sub_1a665955Address;
address sub_bc6a9e01Address;
uint256 sub_671882b0;
uint256 rewardPerBlock;
address feeAddress;
address buyBackWalletAddress;
uint256 performanceFee;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 stor13;
mapping of uint8 stor14;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278000;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278001;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278002;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278003;
array of uint256 stor49791959467252497455735130940088646708311117250336157395101362029847983278004;
array of struct stor49791959467252497455735130940088646708311117250336157395101362029847983278005;

function poolLength() {
    return poolInfo.length
}

function poolInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1552
}

function totalAllocPoint() {
    return totalAllocPoint
}

function sub_1a665955(?) {
    return sub_1a665955Address
}

function buyBackWallet() {
    return buyBackWalletAddress
}

function feeAddress() {
    return feeAddress
}

function startBlock() {
    return startBlock
}

function sub_671882b0(?) {
    return sub_671882b0
}

function performanceFee() {
    return performanceFee
}

function rewardPerBlock() {
    return rewardPerBlock
}

function owner() {
    return owner
}

function userInfo(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_bc6a9e01(?) {
    return sub_bc6a9e01Address
}

function poolExistence(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[arg1])
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

function getMultiplier(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 0, 17
    if arg2 - arg1 and 1 > -1 / arg2 - arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function setPerformanceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if buyBackWalletAddress != msg.sender:
        revert with 0, 'setPerformanceFee: FORBIDDEN'
    performanceFee = arg1
    emit SetPerformanceFee(arg1);
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function setBuyBackWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if buyBackWalletAddress != msg.sender:
        revert with 0, 'setBuyBackWallet: FORBIDDEN'
    buyBackWalletAddress = arg1
    emit 0x5dcc871d: arg1, msg.sender
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

function sub_015d5238(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_bc6a9e01Address:
        call this.address with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_bc6a9e01Address)
        staticcall sub_bc6a9e01Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bc6a9e01Address)
        call sub_bc6a9e01Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function recoverWrongToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_1a665955Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot recover reward token or reflection token'
    if sub_bc6a9e01Address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot recover reward token or reflection token'
    if stor14[address(arg1)]:
        revert with 0, 'token is using on pool'
    if not arg1:
        call this.address with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updateStartBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        revert with 0, 'farm is running now'
    if arg1 <= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'should be greater than current block'
    startBlock = arg1
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        poolInfo[idx].field_512 = startBlock
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not sub_bc6a9e01Address:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_bc6a9e01Address)
        staticcall sub_bc6a9e01Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_bc6a9e01Address)
        call sub_bc6a9e01Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function emergencyWithdrawRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_1a665955Address)
    staticcall sub_1a665955Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1a665955Address)
    if arg1:
        if arg1 <= ext_call.return_data[0]:
            call sub_1a665955Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
        else:
            call sub_1a665955Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
    else:
        staticcall sub_1a665955Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_1a665955Address)
        call sub_1a665955Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'safeTokenTransfer: transfer failed'
}

function pendingRewards(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
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
    if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if block.number - poolInfo[arg1].field_512 and rewardPerBlock > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
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
                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and rewardPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                if not sub_bc6a9e01Address:
                    if eth.balance(this.address) <= stor13:
                        if not totalAllocPoint:
                            revert with 0, 18
                        if sub_671882b0 > !(0 / totalAllocPoint):
                            revert with 0, 17
                        sub_671882b0 += 0 / totalAllocPoint
                        if sub_671882b0 < poolInfo[arg1].field_1280:
                            revert with 0, 17
                        if poolInfo[arg1].field_256 and sub_671882b0 - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_256:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_1024 > !((sub_671882b0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_1024 += (sub_671882b0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]
                        poolInfo[arg1].field_1280 = sub_671882b0
                        if stor13 > -1:
                            revert with 0, 17
                    else:
                        if eth.balance(this.address) < stor13:
                            revert with 0, 17
                        if eth.balance(this.address) - stor13 and 10^12 > -1 / eth.balance(this.address) - stor13:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if sub_671882b0 > !((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint):
                            revert with 0, 17
                        sub_671882b0 += (10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint
                        if sub_671882b0 < poolInfo[arg1].field_1280:
                            revert with 0, 17
                        if poolInfo[arg1].field_256 and sub_671882b0 - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_256:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_1024 > !((sub_671882b0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_1024 += (sub_671882b0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]
                        poolInfo[arg1].field_1280 = sub_671882b0
                        if stor13 > !(eth.balance(this.address) - stor13):
                            revert with 0, 17
                        stor13 = eth.balance(this.address)
                else:
                    require ext_code.size(sub_bc6a9e01Address)
                    staticcall sub_bc6a9e01Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= stor13:
                        if not totalAllocPoint:
                            revert with 0, 18
                        if sub_671882b0 > !(0 / totalAllocPoint):
                            revert with 0, 17
                        sub_671882b0 += 0 / totalAllocPoint
                        if sub_671882b0 < poolInfo[arg1].field_1280:
                            revert with 0, 17
                        if poolInfo[arg1].field_256 and sub_671882b0 - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_256:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_1024 > !((sub_671882b0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_1024 += (sub_671882b0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]
                        poolInfo[arg1].field_1280 = sub_671882b0
                        if stor13 > -1:
                            revert with 0, 17
                    else:
                        if ext_call.return_data[0] < stor13:
                            revert with 0, 17
                        if ext_call.return_data[0] - stor13 and 10^12 > -1 / ext_call.return_data[0] - stor13:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if sub_671882b0 > !((10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint):
                            revert with 0, 17
                        sub_671882b0 += (10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint
                        if sub_671882b0 < poolInfo[arg1].field_1280:
                            revert with 0, 17
                        if poolInfo[arg1].field_256 and sub_671882b0 - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_256:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_1024 > !((sub_671882b0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_1024 += (sub_671882b0 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]
                        poolInfo[arg1].field_1280 = sub_671882b0
                        if stor13 > !(ext_call.return_data[0] - stor13):
                            revert with 0, 17
                        stor13 = ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14 = mem[_13]
            if mem[_13]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not mem[_13]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_13]
                    if not sub_bc6a9e01Address:
                        if eth.balance(this.address) <= stor13:
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_671882b0 > !(0 / totalAllocPoint):
                                revert with 0, 17
                            sub_671882b0 += 0 / totalAllocPoint
                            if sub_671882b0 < poolInfo[idx].field_1280:
                                revert with 0, 17
                            if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                revert with 0, 17
                            if not mem[_13]:
                                revert with 0, 18
                            if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_13]):
                                revert with 0, 17
                            poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_13]
                            poolInfo[idx].field_1280 = sub_671882b0
                            if stor13 > -1:
                                revert with 0, 17
                        else:
                            if eth.balance(this.address) < stor13:
                                revert with 0, 17
                            if eth.balance(this.address) - stor13 and 10^12 > -1 / eth.balance(this.address) - stor13:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_671882b0 > !((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint):
                                revert with 0, 17
                            sub_671882b0 += (10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint
                            if sub_671882b0 < poolInfo[idx].field_1280:
                                revert with 0, 17
                            if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                revert with 0, 17
                            if not mem[_13]:
                                revert with 0, 18
                            if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_13]):
                                revert with 0, 17
                            poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_13]
                            poolInfo[idx].field_1280 = sub_671882b0
                            if stor13 > !(eth.balance(this.address) - stor13):
                                revert with 0, 17
                            stor13 = eth.balance(this.address)
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_bc6a9e01Address)
                        staticcall sub_bc6a9e01Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_17] <= stor13:
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_671882b0 > !(0 / totalAllocPoint):
                                revert with 0, 17
                            sub_671882b0 += 0 / totalAllocPoint
                            if sub_671882b0 < poolInfo[idx].field_1280:
                                revert with 0, 17
                            if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                revert with 0, 17
                            if not _14:
                                revert with 0, 18
                            if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _14):
                                revert with 0, 17
                            poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _14
                            poolInfo[idx].field_1280 = sub_671882b0
                            if stor13 > -1:
                                revert with 0, 17
                        else:
                            if mem[_17] < stor13:
                                revert with 0, 17
                            if mem[_17] - stor13 and 10^12 > -1 / mem[_17] - stor13:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_671882b0 > !((10^12 * mem[_17]) - (10^12 * stor13) / totalAllocPoint):
                                revert with 0, 17
                            sub_671882b0 += (10^12 * mem[_17]) - (10^12 * stor13) / totalAllocPoint
                            if sub_671882b0 < poolInfo[idx].field_1280:
                                revert with 0, 17
                            if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                revert with 0, 17
                            if not _14:
                                revert with 0, 18
                            if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _14):
                                revert with 0, 17
                            poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _14
                            poolInfo[idx].field_1280 = sub_671882b0
                            if stor13 > !(mem[_17] - stor13):
                                revert with 0, 17
                            stor13 = mem[_17]
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
        mem[0] = 9
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _19 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _20 = mem[_19]
            if mem[_19]:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not mem[_19]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_19]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_19]
                    if not sub_bc6a9e01Address:
                        if eth.balance(this.address) <= stor13:
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_671882b0 > !(0 / totalAllocPoint):
                                revert with 0, 17
                            sub_671882b0 += 0 / totalAllocPoint
                            if sub_671882b0 < poolInfo[idx].field_1280:
                                revert with 0, 17
                            if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                revert with 0, 17
                            if not mem[_19]:
                                revert with 0, 18
                            if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_19]):
                                revert with 0, 17
                            poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_19]
                            poolInfo[idx].field_1280 = sub_671882b0
                            if stor13 > -1:
                                revert with 0, 17
                        else:
                            if eth.balance(this.address) < stor13:
                                revert with 0, 17
                            if eth.balance(this.address) - stor13 and 10^12 > -1 / eth.balance(this.address) - stor13:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_671882b0 > !((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint):
                                revert with 0, 17
                            sub_671882b0 += (10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint
                            if sub_671882b0 < poolInfo[idx].field_1280:
                                revert with 0, 17
                            if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                revert with 0, 17
                            if not mem[_19]:
                                revert with 0, 18
                            if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_19]):
                                revert with 0, 17
                            poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_19]
                            poolInfo[idx].field_1280 = sub_671882b0
                            if stor13 > !(eth.balance(this.address) - stor13):
                                revert with 0, 17
                            stor13 = eth.balance(this.address)
                    else:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_bc6a9e01Address)
                        staticcall sub_bc6a9e01Address.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_23] <= stor13:
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_671882b0 > !(0 / totalAllocPoint):
                                revert with 0, 17
                            sub_671882b0 += 0 / totalAllocPoint
                            if sub_671882b0 < poolInfo[idx].field_1280:
                                revert with 0, 17
                            if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                revert with 0, 17
                            if not _20:
                                revert with 0, 18
                            if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _20):
                                revert with 0, 17
                            poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _20
                            poolInfo[idx].field_1280 = sub_671882b0
                            if stor13 > -1:
                                revert with 0, 17
                        else:
                            if mem[_23] < stor13:
                                revert with 0, 17
                            if mem[_23] - stor13 and 10^12 > -1 / mem[_23] - stor13:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if sub_671882b0 > !((10^12 * mem[_23]) - (10^12 * stor13) / totalAllocPoint):
                                revert with 0, 17
                            sub_671882b0 += (10^12 * mem[_23]) - (10^12 * stor13) / totalAllocPoint
                            if sub_671882b0 < poolInfo[idx].field_1280:
                                revert with 0, 17
                            if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                revert with 0, 17
                            if not _20:
                                revert with 0, 18
                            if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _20):
                                revert with 0, 17
                            poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _20
                            poolInfo[idx].field_1280 = sub_671882b0
                            if stor13 > !(mem[_23] - stor13):
                                revert with 0, 17
                            stor13 = mem[_23]
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    rewardPerBlock = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function sub_876ba4b7(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^12 < userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^12) - userInfo[arg1][address(arg2)].field_512)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^12 < userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^12) - userInfo[arg1][address(arg2)].field_512)
    if not sub_bc6a9e01Address:
        if eth.balance(this.address) <= stor13:
            if not totalAllocPoint:
                revert with 0, 18
            if sub_671882b0 > !(0 / totalAllocPoint):
                revert with 0, 17
            if sub_671882b0 + (0 / totalAllocPoint) < poolInfo[arg1].field_1280:
                revert with 0, 17
            if poolInfo[arg1].field_256 and sub_671882b0 + (0 / totalAllocPoint) - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_256:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_1024 > !((sub_671882b0 * poolInfo[arg1].field_256) + (0 / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]):
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + ((sub_671882b0 * poolInfo[arg1].field_256) + (0 / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + ((sub_671882b0 * poolInfo[arg1].field_256) + (0 / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + ((sub_671882b0 * poolInfo[arg1].field_256) + (0 / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
        if eth.balance(this.address) < stor13:
            revert with 0, 17
        if eth.balance(this.address) - stor13 and 10^12 > -1 / eth.balance(this.address) - stor13:
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if sub_671882b0 > !((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint):
            revert with 0, 17
        if sub_671882b0 + ((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint) < poolInfo[arg1].field_1280:
            revert with 0, 17
        if poolInfo[arg1].field_256 and sub_671882b0 + ((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint) - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_256:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_1024 > !((sub_671882b0 * poolInfo[arg1].field_256) + ((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + ((sub_671882b0 * poolInfo[arg1].field_256) + ((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + ((sub_671882b0 * poolInfo[arg1].field_256) + ((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + ((sub_671882b0 * poolInfo[arg1].field_256) + ((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
    require ext_code.size(sub_bc6a9e01Address)
    staticcall sub_bc6a9e01Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor13:
        if not totalAllocPoint:
            revert with 0, 18
        if sub_671882b0 > !(0 / totalAllocPoint):
            revert with 0, 17
        if sub_671882b0 + (0 / totalAllocPoint) < poolInfo[arg1].field_1280:
            revert with 0, 17
        if poolInfo[arg1].field_256 and sub_671882b0 + (0 / totalAllocPoint) - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_256:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_1024 > !((sub_671882b0 * poolInfo[arg1].field_256) + (0 / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + ((sub_671882b0 * poolInfo[arg1].field_256) + (0 / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + ((sub_671882b0 * poolInfo[arg1].field_256) + (0 / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + ((sub_671882b0 * poolInfo[arg1].field_256) + (0 / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
    if ext_call.return_data[0] < stor13:
        revert with 0, 17
    if ext_call.return_data[0] - stor13 and 10^12 > -1 / ext_call.return_data[0] - stor13:
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if sub_671882b0 > !((10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint):
        revert with 0, 17
    if sub_671882b0 + ((10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint) < poolInfo[arg1].field_1280:
        revert with 0, 17
    if poolInfo[arg1].field_256 and sub_671882b0 + ((10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint) - poolInfo[arg1].field_1280 > -1 / poolInfo[arg1].field_256:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_1024 > !((sub_671882b0 * poolInfo[arg1].field_256) + ((10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_1024 + ((sub_671882b0 * poolInfo[arg1].field_256) + ((10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + ((sub_671882b0 * poolInfo[arg1].field_256) + ((10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_512:
        revert with 0, 17
    return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + ((sub_671882b0 * poolInfo[arg1].field_256) + ((10^12 * ext_call.return_data[0]) - (10^12 * stor13) / totalAllocPoint * poolInfo[arg1].field_256) - (poolInfo[arg1].field_1280 * poolInfo[arg1].field_256) / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_512)
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint16 arg4, bool arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg4 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _28 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _29 = mem[_28]
                if mem[_28]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_28]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_28]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_28]
                        if not sub_bc6a9e01Address:
                            if eth.balance(this.address) <= stor13:
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if sub_671882b0 > !(0 / totalAllocPoint):
                                    revert with 0, 17
                                sub_671882b0 += 0 / totalAllocPoint
                                if sub_671882b0 < poolInfo[idx].field_1280:
                                    revert with 0, 17
                                if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                    revert with 0, 17
                                if not mem[_28]:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_28]):
                                    revert with 0, 17
                                poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_28]
                                poolInfo[idx].field_1280 = sub_671882b0
                                if stor13 > -1:
                                    revert with 0, 17
                            else:
                                if eth.balance(this.address) < stor13:
                                    revert with 0, 17
                                if eth.balance(this.address) - stor13 and 10^12 > -1 / eth.balance(this.address) - stor13:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if sub_671882b0 > !((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint):
                                    revert with 0, 17
                                sub_671882b0 += (10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint
                                if sub_671882b0 < poolInfo[idx].field_1280:
                                    revert with 0, 17
                                if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                    revert with 0, 17
                                if not mem[_28]:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_28]):
                                    revert with 0, 17
                                poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_28]
                                poolInfo[idx].field_1280 = sub_671882b0
                                if stor13 > !(eth.balance(this.address) - stor13):
                                    revert with 0, 17
                                stor13 = eth.balance(this.address)
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_bc6a9e01Address)
                            staticcall sub_bc6a9e01Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _35 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_35] <= stor13:
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if sub_671882b0 > !(0 / totalAllocPoint):
                                    revert with 0, 17
                                sub_671882b0 += 0 / totalAllocPoint
                                if sub_671882b0 < poolInfo[idx].field_1280:
                                    revert with 0, 17
                                if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                    revert with 0, 17
                                if not _29:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _29):
                                    revert with 0, 17
                                poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _29
                                poolInfo[idx].field_1280 = sub_671882b0
                                if stor13 > -1:
                                    revert with 0, 17
                            else:
                                if mem[_35] < stor13:
                                    revert with 0, 17
                                if mem[_35] - stor13 and 10^12 > -1 / mem[_35] - stor13:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if sub_671882b0 > !((10^12 * mem[_35]) - (10^12 * stor13) / totalAllocPoint):
                                    revert with 0, 17
                                sub_671882b0 += (10^12 * mem[_35]) - (10^12 * stor13) / totalAllocPoint
                                if sub_671882b0 < poolInfo[idx].field_1280:
                                    revert with 0, 17
                                if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                    revert with 0, 17
                                if not _29:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _29):
                                    revert with 0, 17
                                poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _29
                                poolInfo[idx].field_1280 = sub_671882b0
                                if stor13 > !(mem[_35] - stor13):
                                    revert with 0, 17
                                stor13 = mem[_35]
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
    poolInfo[arg1].field_1536 = arg3
    poolInfo[arg1].field_1552 = arg4
}

function add(uint256 arg1, address arg2, uint16 arg3, uint16 arg4, bool arg5) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 14
    if stor14[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid withdraw fee basis points'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _62 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _83 = mem[_62]
                if mem[_62]:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and rewardPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not mem[_62]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_62]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / totalAllocPoint / mem[_62]
                        if not sub_bc6a9e01Address:
                            if eth.balance(this.address) <= stor13:
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if sub_671882b0 > !(0 / totalAllocPoint):
                                    revert with 0, 17
                                sub_671882b0 += 0 / totalAllocPoint
                                if sub_671882b0 < poolInfo[idx].field_1280:
                                    revert with 0, 17
                                if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                    revert with 0, 17
                                if not mem[_62]:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_62]):
                                    revert with 0, 17
                                poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_62]
                                poolInfo[idx].field_1280 = sub_671882b0
                                if stor13 > -1:
                                    revert with 0, 17
                            else:
                                if eth.balance(this.address) < stor13:
                                    revert with 0, 17
                                if eth.balance(this.address) - stor13 and 10^12 > -1 / eth.balance(this.address) - stor13:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if sub_671882b0 > !((10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint):
                                    revert with 0, 17
                                sub_671882b0 += (10^12 * eth.balance(this.address)) - (10^12 * stor13) / totalAllocPoint
                                if sub_671882b0 < poolInfo[idx].field_1280:
                                    revert with 0, 17
                                if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                    revert with 0, 17
                                if not mem[_62]:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_62]):
                                    revert with 0, 17
                                poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / mem[_62]
                                poolInfo[idx].field_1280 = sub_671882b0
                                if stor13 > !(eth.balance(this.address) - stor13):
                                    revert with 0, 17
                                stor13 = eth.balance(this.address)
                        else:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(sub_bc6a9e01Address)
                            staticcall sub_bc6a9e01Address.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _86 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_86] <= stor13:
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if sub_671882b0 > !(0 / totalAllocPoint):
                                    revert with 0, 17
                                sub_671882b0 += 0 / totalAllocPoint
                                if sub_671882b0 < poolInfo[idx].field_1280:
                                    revert with 0, 17
                                if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                    revert with 0, 17
                                if not _83:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _83):
                                    revert with 0, 17
                                poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _83
                                poolInfo[idx].field_1280 = sub_671882b0
                                if stor13 > -1:
                                    revert with 0, 17
                            else:
                                if mem[_86] < stor13:
                                    revert with 0, 17
                                if mem[_86] - stor13 and 10^12 > -1 / mem[_86] - stor13:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if sub_671882b0 > !((10^12 * mem[_86]) - (10^12 * stor13) / totalAllocPoint):
                                    revert with 0, 17
                                sub_671882b0 += (10^12 * mem[_86]) - (10^12 * stor13) / totalAllocPoint
                                if sub_671882b0 < poolInfo[idx].field_1280:
                                    revert with 0, 17
                                if poolInfo[idx].field_256 and sub_671882b0 - poolInfo[idx].field_1280 > -1 / poolInfo[idx].field_256:
                                    revert with 0, 17
                                if not _83:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024 > !((sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _83):
                                    revert with 0, 17
                                poolInfo[idx].field_1024 += (sub_671882b0 * poolInfo[idx].field_256) - (poolInfo[idx].field_1280 * poolInfo[idx].field_256) / _83
                                poolInfo[idx].field_1280 = sub_671882b0
                                if stor13 > !(mem[_86] - stor13):
                                    revert with 0, 17
                                stor13 = mem[_86]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    stor14[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    stor6E15[stor9.length] = arg1
    if block.number > startBlock:
        stor6E15[stor9.length] = block.number
    else:
        stor6E15[stor9.length] = startBlock
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length] = 0
    stor6E15[stor9.length].field_0 = arg3
    stor6E15[stor9.length].field_16 = arg4
}



}
