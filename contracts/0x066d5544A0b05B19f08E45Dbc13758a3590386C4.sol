contract main {




// =====================  Runtime code  =====================


#
#  - add(uint256 arg1, address arg2, bool arg3)
#  - getTotalRewardInfo(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - updatePool(uint256 arg1)
#  - massUpdatePools()
#  - set(uint256 arg1, uint256 arg2, bool arg3)
#  - getTotalRewardInfoInSameCommonDifference(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#  - sub_d120b476(?)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 sub_66690632;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 bonusBeforeBulkBlockSize;
uint256 bonusEndBulkBlockSize;
uint256 sub_19184e55;
uint256 maxRewardBlockNumber;
uint256 bonusBeforeCommonDifference;
uint256 bonusEndCommonDifference;
uint256 sub_df6f087a;
address sub_10287f60Address;
address devAddr;
array of struct poolInfo;
mapping of struct userInfo;

function poolLength() payable {
    return poolInfo.length
}

function sub_10287f60(?) payable {
    return sub_10287f60Address
}

function bonusEndCommonDifference() payable {
    return bonusEndCommonDifference
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_19184e55(?) payable {
    return sub_19184e55
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function bonusBeforeBulkBlockSize() payable {
    return bonusBeforeBulkBlockSize
}

function startBlock() payable {
    return startBlock
}

function sub_66690632(?) payable {
    return sub_66690632
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
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

function sub_df6f087a(?) payable {
    return sub_df6f087a
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'you no fry dev: wut?'
    devAddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
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
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}



}
