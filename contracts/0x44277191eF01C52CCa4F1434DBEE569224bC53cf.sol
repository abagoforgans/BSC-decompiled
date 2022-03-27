contract main {




// =====================  Runtime code  =====================


#
#  - set(address arg1, uint256 arg2, bool arg3)
#  - add(uint256 arg1, address arg2, bool arg3)
#  - getTotalRewardInfo(uint256 arg1, uint256 arg2)
#  - deposit(address arg1, uint256 arg2)
#  - massUpdatePools()
#  - updatePool(address arg1)
#  - getTotalRewardInfoInSameCommonDifference(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - sub_a92fd821(?)
#  - withdraw(address arg1, uint256 arg2)
#
address owner;
uint256 sub_f18ee83a;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 bonusBeforeBulkBlockSize;
uint256 bonusEndBulkBlockSize;
uint256 sub_0e6d7228;
uint256 maxRewardBlockNumber;
uint256 bonusBeforeCommonDifference;
uint256 bonusEndCommonDifference;
uint256 sub_bf7019b9;
address whaleAddress;
address devAddr;
array of address pool;
mapping of struct poolInfoMap;
mapping of struct poolUserInfoMap;

function poolLength() payable {
    return pool.length
}

function sub_0e6d7228(?) payable {
    return sub_0e6d7228
}

function bonusEndCommonDifference() payable {
    return bonusEndCommonDifference
}

function poolInfoMap(address arg1) payable {
    require calldata.size - 4 >= 32
    return poolInfoMap[arg1].field_0, poolInfoMap[arg1].field_256, poolInfoMap[arg1].field_512, bool(poolInfoMap[arg1].field_768)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function bonusBeforeBulkBlockSize() payable {
    return bonusBeforeBulkBlockSize
}

function poolUserInfoMap(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return poolUserInfoMap[arg1][arg2].field_0, poolUserInfoMap[arg1][arg2].field_256
}

function startBlock() payable {
    return startBlock
}

function existsPool(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(poolInfoMap[address(arg1)].field_768)
}

function owner() payable {
    return owner
}

function maxRewardBlockNumber() payable {
    return maxRewardBlockNumber
}

function whale() payable {
    return whaleAddress
}

function sub_bf7019b9(?) payable {
    return sub_bf7019b9
}

function bonusBeforeCommonDifference() payable {
    return bonusBeforeCommonDifference
}

function bonusEndBulkBlockSize() payable {
    return bonusEndBulkBlockSize
}

function devAddr() payable {
    return devAddr
}

function sub_f18ee83a(?) payable {
    return sub_f18ee83a
}

function poolAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pool.length
    return pool[arg1]
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'dev: wut?'
    devAddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
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

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, poolUserInfoMap[address(arg1)][msg.sender].field_32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args poolUserInfoMap[address(arg1)][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, poolUserInfoMap[address(arg1)][msg.sender].field_0
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(poolUserInfoMap[address(arg1)][msg.sender].field_0, msg.sender, arg1);
    poolUserInfoMap[address(arg1)][msg.sender].field_0 = 0
    poolUserInfoMap[address(arg1)][msg.sender].field_256 = 0
}



}
