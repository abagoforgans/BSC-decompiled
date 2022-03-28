contract main {




// =====================  Runtime code  =====================


#
#  - set(address arg1, uint256 arg2, bool arg3)
#  - add(uint256 arg1, address arg2, bool arg3)
#  - getTotalRewardInfo(uint256 arg1, uint256 arg2)
#  - sub_47d1ccc5(?)
#  - deposit(address arg1, uint256 arg2)
#  - massUpdatePools()
#  - updatePool(address arg1)
#  - getTotalRewardInfoInSameCommonDifference(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - withdraw(address arg1, uint256 arg2)
#
address owner;
uint256 sub_1de4a622;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 bonusBeforeBulkBlockSize;
uint256 bonusEndBulkBlockSize;
uint256 sub_fbcf74ef;
uint256 maxRewardBlockNumber;
uint256 bonusBeforeCommonDifference;
uint256 bonusEndCommonDifference;
uint256 sub_ec867c7a;
address sub_782ace9fAddress;
address devAddr;
array of address pool;
mapping of struct poolInfoMap;
mapping of struct poolUserInfoMap;

function poolLength() payable {
    return pool.length
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

function sub_1de4a622(?) payable {
    return sub_1de4a622
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

function sub_782ace9f(?) payable {
    return sub_782ace9fAddress
}

function owner() payable {
    return owner
}

function maxRewardBlockNumber() payable {
    return maxRewardBlockNumber
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

function sub_ec867c7a(?) payable {
    return sub_ec867c7a
}

function sub_fbcf74ef(?) payable {
    return sub_fbcf74ef
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

function sub_c87f1e0f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_782ace9fAddress)
    call sub_782ace9fAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_ae758074(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x7742455252593a3a4d61737465723a3a7265636f7665724265727279537761703a3a5452414e534645525f4641494c45,
                    mem[212 len 16]
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
