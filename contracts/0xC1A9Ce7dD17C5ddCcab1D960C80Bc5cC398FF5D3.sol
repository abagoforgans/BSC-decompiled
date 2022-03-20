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
#  - sub_dc6a46be(?)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 sub_f9cb63ad;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 bonusBeforeBulkBlockSize;
uint256 bonusEndBulkBlockSize;
uint256 sub_d8bcb0fd;
uint256 maxRewardBlockNumber;
uint256 bonusBeforeCommonDifference;
uint256 bonusEndCommonDifference;
uint256 sub_65302a85;
address sub_f7d68981Address;
address devAddr;
array of struct poolInfo;
mapping of struct userInfo;

function poolLength() payable {
    return poolInfo.length
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

function bonusEndBlock() payable {
    return bonusEndBlock
}

function bonusBeforeBulkBlockSize() payable {
    return bonusBeforeBulkBlockSize
}

function startBlock() payable {
    return startBlock
}

function sub_65302a85(?) payable {
    return sub_65302a85
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

function sub_d8bcb0fd(?) payable {
    return sub_d8bcb0fd
}

function devAddr() payable {
    return devAddr
}

function sub_f7d68981(?) payable {
    return sub_f7d68981Address
}

function sub_f9cb63ad(?) payable {
    return sub_f9cb63ad
}

function _fallback() payable {
    revert
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'Function called by dev only!'
    devAddr = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ef0fd7eb(?) payable {
    require calldata.size - 4 >= 32
    if devAddr != msg.sender:
        revert with 0, 'Function called by dev only!'
    sub_f7d68981Address = arg1
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

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}



}
