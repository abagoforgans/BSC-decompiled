contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - emergencyWithdraw(uint256 arg1)
#  - harvest(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const getBlock = block.number


address owner;
address DEADAddress;
address tokenAddress;
uint256 tokenPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
uint256 earlyWithdrawFee;
uint256 treasure;
uint256 allocated;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699765;

function DEAD() payable {
    return DEADAddress
}

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function tokenPerBlock() payable {
    return tokenPerBlock
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function earlyWithdrawFee() payable {
    return earlyWithdrawFee
}

function allocated() payable {
    return allocated
}

function treasure() payable {
    return treasure
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEarlyWithdrawFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0, 'Max is 10 percent'
    earlyWithdrawFee = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if 0 == treasure:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if userInfo[arg1][address(arg2)].field_768 > !poolInfo[arg1].field_1024:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1024 < userInfo[arg1][address(arg2)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_1024
}

function sub_c816a54c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    while idx < poolInfo.length:
        mem[0] = 5
        if poolInfo[idx].field_0 == address(arg1):
            revert with 0, 'can't transfer lp'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if tokenAddress == address(arg1):
        if arg2 > treasure:
            revert with 0, 'Withdraw reward'
        if treasure < arg2:
            revert with 0, 17
        treasure -= arg2
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_6569b54f(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'err _amount=0'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if treasure > !0:
        revert with 0, 17
    if treasure < treasure:
        revert with 0, 'SafeMath: addition overflow'
    tokenPerBlock = arg2
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1280:
            if poolInfo[arg1].field_256:
                if 0 == treasure:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        revert with 0, 18
                    if 0 / totalAllocPoint <= treasure:
                        if 0 / totalAllocPoint < treasure:
                            if 0 / totalAllocPoint > treasure:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if treasure < 0 / totalAllocPoint:
                                revert with 0, 17
                            treasure -= 0 / totalAllocPoint
                            if allocated > !(0 / totalAllocPoint):
                                revert with 0, 17
                            if allocated + (0 / totalAllocPoint) < allocated:
                                revert with 0, 'SafeMath: addition overflow'
                            allocated += 0 / totalAllocPoint
                            emit Mint(address(this.address), 0 / totalAllocPoint);
                        else:
                            tokenPerBlock = 0
                            if treasure > treasure:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if treasure < treasure:
                                revert with 0, 17
                            treasure = 0
                            if allocated > !treasure:
                                revert with 0, 17
                            if allocated + treasure < allocated:
                                revert with 0, 'SafeMath: addition overflow'
                            allocated += treasure
                            emit Mint(address(this.address), treasure);
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        if treasure >= treasure:
                            tokenPerBlock = 0
                        if treasure > treasure:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if treasure < treasure:
                            revert with 0, 17
                        treasure = 0
                        if allocated > !treasure:
                            revert with 0, 17
                        if allocated + treasure < allocated:
                            revert with 0, 'SafeMath: addition overflow'
                        allocated += treasure
                        emit Mint(address(this.address), treasure);
                        if not treasure:
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            if treasure and 10^12 > -1 / treasure:
                                revert with 0, 17
                            if not treasure:
                                revert with 0, 18
                            if 10^12 * treasure / treasure != 10^12:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(10^12 * treasure / poolInfo[arg1].field_1280):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * treasure / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * treasure / poolInfo[arg1].field_1280
                else:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint <= treasure:
                            if 0 / totalAllocPoint < treasure:
                                if 0 / totalAllocPoint > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < 0 / totalAllocPoint:
                                    revert with 0, 17
                                treasure -= 0 / totalAllocPoint
                                if allocated > !(0 / totalAllocPoint):
                                    revert with 0, 17
                                if allocated + (0 / totalAllocPoint) < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += 0 / totalAllocPoint
                                emit Mint(address(this.address), 0 / totalAllocPoint);
                            else:
                                tokenPerBlock = 0
                                if treasure > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < treasure:
                                    revert with 0, 17
                                treasure = 0
                                if allocated > !treasure:
                                    revert with 0, 17
                                if allocated + treasure < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += treasure
                                emit Mint(address(this.address), treasure);
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            if treasure >= treasure:
                                tokenPerBlock = 0
                            if treasure > treasure:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if treasure < treasure:
                                revert with 0, 17
                            treasure = 0
                            if allocated > !treasure:
                                revert with 0, 17
                            if allocated + treasure < allocated:
                                revert with 0, 'SafeMath: addition overflow'
                            allocated += treasure
                            emit Mint(address(this.address), treasure);
                            if not treasure:
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if treasure and 10^12 > -1 / treasure:
                                    revert with 0, 17
                                if not treasure:
                                    revert with 0, 18
                                if 10^12 * treasure / treasure != 10^12:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if poolInfo[arg1].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 18
                                if poolInfo[arg1].field_768 > !(10^12 * treasure / poolInfo[arg1].field_1280):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * treasure / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * treasure / poolInfo[arg1].field_1280
                    else:
                        if block.number - poolInfo[arg1].field_512 and tokenPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 0, 17
                        if not block.number - poolInfo[arg1].field_512:
                            revert with 0, 18
                        if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) / block.number - poolInfo[arg1].field_512 != tokenPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint <= treasure:
                                if 0 / totalAllocPoint < treasure:
                                    if 0 / totalAllocPoint > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0 / totalAllocPoint:
                                        revert with 0, 17
                                    treasure -= 0 / totalAllocPoint
                                    if allocated > !(0 / totalAllocPoint):
                                        revert with 0, 17
                                    if allocated + (0 / totalAllocPoint) < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += 0 / totalAllocPoint
                                    emit Mint(address(this.address), 0 / totalAllocPoint);
                                else:
                                    tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    emit Mint(address(this.address), treasure);
                                if not 0 / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                if treasure >= treasure:
                                    tokenPerBlock = 0
                                if treasure > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < treasure:
                                    revert with 0, 17
                                treasure = 0
                                if allocated > !treasure:
                                    revert with 0, 17
                                if allocated + treasure < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += treasure
                                emit Mint(address(this.address), treasure);
                                if not treasure:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(10^12 * treasure / poolInfo[arg1].field_1280):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (10^12 * treasure / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * treasure / poolInfo[arg1].field_1280
                        else:
                            if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                                revert with 0, 17
                            if not (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                                revert with 0, 18
                            if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint <= treasure:
                                if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint < treasure:
                                    if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    treasure -= (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    if allocated > !((block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint):
                                        revert with 0, 17
                                    if allocated + ((block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint) < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                    emit Mint(address(this.address), (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint);
                                else:
                                    tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    emit Mint(address(this.address), treasure);
                                if not (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
                            else:
                                if treasure >= treasure:
                                    tokenPerBlock = 0
                                if treasure > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < treasure:
                                    revert with 0, 17
                                treasure = 0
                                if allocated > !treasure:
                                    revert with 0, 17
                                if allocated + treasure < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += treasure
                                emit Mint(address(this.address), treasure);
                                if not treasure:
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1280:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_768 > !(10^12 * treasure / poolInfo[arg1].field_1280):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_768 + (10^12 * treasure / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * treasure / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_256:
                    if 0 == treasure:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 0, 18
                        if 0 / totalAllocPoint <= treasure:
                            if 0 / totalAllocPoint < treasure:
                                if 0 / totalAllocPoint > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < 0 / totalAllocPoint:
                                    revert with 0, 17
                                treasure -= 0 / totalAllocPoint
                                if allocated > !(0 / totalAllocPoint):
                                    revert with 0, 17
                                if allocated + (0 / totalAllocPoint) < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += 0 / totalAllocPoint
                                mem[96] = this.address
                                mem[128] = 0 / totalAllocPoint
                                emit Mint(address(this.address), 0 / totalAllocPoint);
                            else:
                                tokenPerBlock = 0
                                if treasure > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < treasure:
                                    revert with 0, 17
                                treasure = 0
                                if allocated > !treasure:
                                    revert with 0, 17
                                if allocated + treasure < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += treasure
                                mem[96] = this.address
                                mem[128] = treasure
                                emit Mint(address(this.address), treasure);
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                        else:
                            if treasure >= treasure:
                                tokenPerBlock = 0
                            if treasure > treasure:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if treasure < treasure:
                                revert with 0, 17
                            treasure = 0
                            if allocated > !treasure:
                                revert with 0, 17
                            if allocated + treasure < allocated:
                                revert with 0, 'SafeMath: addition overflow'
                            allocated += treasure
                            mem[96] = this.address
                            mem[128] = treasure
                            emit Mint(address(this.address), treasure);
                            if not treasure:
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                            else:
                                if treasure and 10^12 > -1 / treasure:
                                    revert with 0, 17
                                if not treasure:
                                    revert with 0, 18
                                if 10^12 * treasure / treasure != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if poolInfo[idx].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1280:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                    revert with 0, 17
                                if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                    else:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint <= treasure:
                                if 0 / totalAllocPoint < treasure:
                                    if 0 / totalAllocPoint > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0 / totalAllocPoint:
                                        revert with 0, 17
                                    treasure -= 0 / totalAllocPoint
                                    if allocated > !(0 / totalAllocPoint):
                                        revert with 0, 17
                                    if allocated + (0 / totalAllocPoint) < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += 0 / totalAllocPoint
                                    mem[96] = this.address
                                    mem[128] = 0 / totalAllocPoint
                                    emit Mint(address(this.address), 0 / totalAllocPoint);
                                else:
                                    tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    mem[96] = this.address
                                    mem[128] = treasure
                                    emit Mint(address(this.address), treasure);
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                if treasure >= treasure:
                                    tokenPerBlock = 0
                                if treasure > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < treasure:
                                    revert with 0, 17
                                treasure = 0
                                if allocated > !treasure:
                                    revert with 0, 17
                                if allocated + treasure < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += treasure
                                mem[96] = this.address
                                mem[128] = treasure
                                emit Mint(address(this.address), treasure);
                                if not treasure:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                        else:
                            if block.number - poolInfo[idx].field_512 and tokenPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.number - poolInfo[idx].field_512:
                                revert with 0, 18
                            if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) / block.number - poolInfo[idx].field_512 != tokenPerBlock:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if 0 / totalAllocPoint <= treasure:
                                    if 0 / totalAllocPoint < treasure:
                                        if 0 / totalAllocPoint > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < 0 / totalAllocPoint:
                                            revert with 0, 17
                                        treasure -= 0 / totalAllocPoint
                                        if allocated > !(0 / totalAllocPoint):
                                            revert with 0, 17
                                        if allocated + (0 / totalAllocPoint) < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += 0 / totalAllocPoint
                                        mem[96] = this.address
                                        mem[128] = 0 / totalAllocPoint
                                        emit Mint(address(this.address), 0 / totalAllocPoint);
                                    else:
                                        tokenPerBlock = 0
                                        if treasure > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < treasure:
                                            revert with 0, 17
                                        treasure = 0
                                        if allocated > !treasure:
                                            revert with 0, 17
                                        if allocated + treasure < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += treasure
                                        mem[96] = this.address
                                        mem[128] = treasure
                                        emit Mint(address(this.address), treasure);
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if treasure >= treasure:
                                        tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    mem[96] = this.address
                                    mem[128] = treasure
                                    emit Mint(address(this.address), treasure);
                                    if not treasure:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if treasure and 10^12 > -1 / treasure:
                                            revert with 0, 17
                                        if not treasure:
                                            revert with 0, 18
                                        if 10^12 * treasure / treasure != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                            else:
                                if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                    revert with 0, 17
                                if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                    revert with 0, 18
                                if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint <= treasure:
                                    if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint < treasure:
                                        if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        treasure -= (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if allocated > !((block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                                            revert with 0, 17
                                        if allocated + ((block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint) < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        mem[96] = this.address
                                        mem[128] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        emit Mint(address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint);
                                    else:
                                        tokenPerBlock = 0
                                        if treasure > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < treasure:
                                            revert with 0, 17
                                        treasure = 0
                                        if allocated > !treasure:
                                            revert with 0, 17
                                        if allocated + treasure < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += treasure
                                        mem[96] = this.address
                                        mem[128] = treasure
                                        emit Mint(address(this.address), treasure);
                                    if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 17
                                        if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if treasure >= treasure:
                                        tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    mem[96] = this.address
                                    mem[128] = treasure
                                    emit Mint(address(this.address), treasure);
                                    if not treasure:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if treasure and 10^12 > -1 / treasure:
                                            revert with 0, 17
                                        if not treasure:
                                            revert with 0, 18
                                        if 10^12 * treasure / treasure != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, bool arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 > 2160 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdraw lock must be less than 90 days'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if 0 == treasure:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint <= treasure:
                                if 0 / totalAllocPoint < treasure:
                                    if 0 / totalAllocPoint > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0 / totalAllocPoint:
                                        revert with 0, 17
                                    treasure -= 0 / totalAllocPoint
                                    if allocated > !(0 / totalAllocPoint):
                                        revert with 0, 17
                                    if allocated + (0 / totalAllocPoint) < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += 0 / totalAllocPoint
                                    mem[96] = this.address
                                    mem[128] = 0 / totalAllocPoint
                                    emit Mint(address(this.address), 0 / totalAllocPoint);
                                else:
                                    tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    mem[96] = this.address
                                    mem[128] = treasure
                                    emit Mint(address(this.address), treasure);
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                if treasure >= treasure:
                                    tokenPerBlock = 0
                                if treasure > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < treasure:
                                    revert with 0, 17
                                treasure = 0
                                if allocated > !treasure:
                                    revert with 0, 17
                                if allocated + treasure < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += treasure
                                mem[96] = this.address
                                mem[128] = treasure
                                emit Mint(address(this.address), treasure);
                                if not treasure:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                        else:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if 0 / totalAllocPoint <= treasure:
                                    if 0 / totalAllocPoint < treasure:
                                        if 0 / totalAllocPoint > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < 0 / totalAllocPoint:
                                            revert with 0, 17
                                        treasure -= 0 / totalAllocPoint
                                        if allocated > !(0 / totalAllocPoint):
                                            revert with 0, 17
                                        if allocated + (0 / totalAllocPoint) < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += 0 / totalAllocPoint
                                        mem[96] = this.address
                                        mem[128] = 0 / totalAllocPoint
                                        emit Mint(address(this.address), 0 / totalAllocPoint);
                                    else:
                                        tokenPerBlock = 0
                                        if treasure > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < treasure:
                                            revert with 0, 17
                                        treasure = 0
                                        if allocated > !treasure:
                                            revert with 0, 17
                                        if allocated + treasure < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += treasure
                                        mem[96] = this.address
                                        mem[128] = treasure
                                        emit Mint(address(this.address), treasure);
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if treasure >= treasure:
                                        tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    mem[96] = this.address
                                    mem[128] = treasure
                                    emit Mint(address(this.address), treasure);
                                    if not treasure:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if treasure and 10^12 > -1 / treasure:
                                            revert with 0, 17
                                        if not treasure:
                                            revert with 0, 18
                                        if 10^12 * treasure / treasure != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                            else:
                                if block.number - poolInfo[idx].field_512 and tokenPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[idx].field_512:
                                    revert with 0, 18
                                if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) / block.number - poolInfo[idx].field_512 != tokenPerBlock:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if 0 / totalAllocPoint <= treasure:
                                        if 0 / totalAllocPoint < treasure:
                                            if 0 / totalAllocPoint > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0 / totalAllocPoint:
                                                revert with 0, 17
                                            treasure -= 0 / totalAllocPoint
                                            if allocated > !(0 / totalAllocPoint):
                                                revert with 0, 17
                                            if allocated + (0 / totalAllocPoint) < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated += 0 / totalAllocPoint
                                            mem[96] = this.address
                                            mem[128] = 0 / totalAllocPoint
                                            emit Mint(address(this.address), 0 / totalAllocPoint);
                                        else:
                                            tokenPerBlock = 0
                                            if treasure > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < treasure:
                                                revert with 0, 17
                                            treasure = 0
                                            if allocated > !treasure:
                                                revert with 0, 17
                                            if allocated + treasure < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated += treasure
                                            mem[96] = this.address
                                            mem[128] = treasure
                                            emit Mint(address(this.address), treasure);
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        if treasure >= treasure:
                                            tokenPerBlock = 0
                                        if treasure > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < treasure:
                                            revert with 0, 17
                                        treasure = 0
                                        if allocated > !treasure:
                                            revert with 0, 17
                                        if allocated + treasure < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += treasure
                                        mem[96] = this.address
                                        mem[128] = treasure
                                        emit Mint(address(this.address), treasure);
                                        if not treasure:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                                else:
                                    if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                        revert with 0, 17
                                    if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                        revert with 0, 18
                                    if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint <= treasure:
                                        if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint < treasure:
                                            if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 17
                                            treasure -= (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            if allocated > !((block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                                                revert with 0, 17
                                            if allocated + ((block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint) < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated += (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            mem[96] = this.address
                                            mem[128] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            emit Mint(address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint);
                                        else:
                                            tokenPerBlock = 0
                                            if treasure > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < treasure:
                                                revert with 0, 17
                                            treasure = 0
                                            if allocated > !treasure:
                                                revert with 0, 17
                                            if allocated + treasure < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated += treasure
                                            mem[96] = this.address
                                            mem[128] = treasure
                                            emit Mint(address(this.address), treasure);
                                        if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 17
                                            if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        if treasure >= treasure:
                                            tokenPerBlock = 0
                                        if treasure > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < treasure:
                                            revert with 0, 17
                                        treasure = 0
                                        if allocated > !treasure:
                                            revert with 0, 17
                                        if allocated + treasure < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += treasure
                                        mem[96] = this.address
                                        mem[128] = treasure
                                        emit Mint(address(this.address), treasure);
                                        if not treasure:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg4
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 > 2160 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdraw lock must be less than 90 days'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_256:
                        if 0 == treasure:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint <= treasure:
                                if 0 / totalAllocPoint < treasure:
                                    if 0 / totalAllocPoint > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0 / totalAllocPoint:
                                        revert with 0, 17
                                    treasure -= 0 / totalAllocPoint
                                    if allocated > !(0 / totalAllocPoint):
                                        revert with 0, 17
                                    if allocated + (0 / totalAllocPoint) < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += 0 / totalAllocPoint
                                    mem[96] = this.address
                                    mem[128] = 0 / totalAllocPoint
                                    emit Mint(address(this.address), 0 / totalAllocPoint);
                                else:
                                    tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    mem[96] = this.address
                                    mem[128] = treasure
                                    emit Mint(address(this.address), treasure);
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not 0 / totalAllocPoint:
                                        revert with 0, 18
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                            else:
                                if treasure >= treasure:
                                    tokenPerBlock = 0
                                if treasure > treasure:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if treasure < treasure:
                                    revert with 0, 17
                                treasure = 0
                                if allocated > !treasure:
                                    revert with 0, 17
                                if allocated + treasure < allocated:
                                    revert with 0, 'SafeMath: addition overflow'
                                allocated += treasure
                                mem[96] = this.address
                                mem[128] = treasure
                                emit Mint(address(this.address), treasure);
                                if not treasure:
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1280:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                        revert with 0, 17
                                    if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                        else:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if 0 / totalAllocPoint <= treasure:
                                    if 0 / totalAllocPoint < treasure:
                                        if 0 / totalAllocPoint > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < 0 / totalAllocPoint:
                                            revert with 0, 17
                                        treasure -= 0 / totalAllocPoint
                                        if allocated > !(0 / totalAllocPoint):
                                            revert with 0, 17
                                        if allocated + (0 / totalAllocPoint) < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += 0 / totalAllocPoint
                                        mem[96] = this.address
                                        mem[128] = 0 / totalAllocPoint
                                        emit Mint(address(this.address), 0 / totalAllocPoint);
                                    else:
                                        tokenPerBlock = 0
                                        if treasure > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < treasure:
                                            revert with 0, 17
                                        treasure = 0
                                        if allocated > !treasure:
                                            revert with 0, 17
                                        if allocated + treasure < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += treasure
                                        mem[96] = this.address
                                        mem[128] = treasure
                                        emit Mint(address(this.address), treasure);
                                    if not 0 / totalAllocPoint:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                            revert with 0, 17
                                        if not 0 / totalAllocPoint:
                                            revert with 0, 18
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                else:
                                    if treasure >= treasure:
                                        tokenPerBlock = 0
                                    if treasure > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < treasure:
                                        revert with 0, 17
                                    treasure = 0
                                    if allocated > !treasure:
                                        revert with 0, 17
                                    if allocated + treasure < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    allocated += treasure
                                    mem[96] = this.address
                                    mem[128] = treasure
                                    emit Mint(address(this.address), treasure);
                                    if not treasure:
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                    else:
                                        if treasure and 10^12 > -1 / treasure:
                                            revert with 0, 17
                                        if not treasure:
                                            revert with 0, 18
                                        if 10^12 * treasure / treasure != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[idx].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1280:
                                            revert with 0, 18
                                        if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                            revert with 0, 17
                                        if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                            else:
                                if block.number - poolInfo[idx].field_512 and tokenPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if not block.number - poolInfo[idx].field_512:
                                    revert with 0, 18
                                if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) / block.number - poolInfo[idx].field_512 != tokenPerBlock:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if 0 / totalAllocPoint <= treasure:
                                        if 0 / totalAllocPoint < treasure:
                                            if 0 / totalAllocPoint > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0 / totalAllocPoint:
                                                revert with 0, 17
                                            treasure -= 0 / totalAllocPoint
                                            if allocated > !(0 / totalAllocPoint):
                                                revert with 0, 17
                                            if allocated + (0 / totalAllocPoint) < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated += 0 / totalAllocPoint
                                            mem[96] = this.address
                                            mem[128] = 0 / totalAllocPoint
                                            emit Mint(address(this.address), 0 / totalAllocPoint);
                                        else:
                                            tokenPerBlock = 0
                                            if treasure > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < treasure:
                                                revert with 0, 17
                                            treasure = 0
                                            if allocated > !treasure:
                                                revert with 0, 17
                                            if allocated + treasure < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated += treasure
                                            mem[96] = this.address
                                            mem[128] = treasure
                                            emit Mint(address(this.address), treasure);
                                        if not 0 / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                                revert with 0, 17
                                            if not 0 / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        if treasure >= treasure:
                                            tokenPerBlock = 0
                                        if treasure > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < treasure:
                                            revert with 0, 17
                                        treasure = 0
                                        if allocated > !treasure:
                                            revert with 0, 17
                                        if allocated + treasure < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += treasure
                                        mem[96] = this.address
                                        mem[128] = treasure
                                        emit Mint(address(this.address), treasure);
                                        if not treasure:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                                else:
                                    if (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                        revert with 0, 17
                                    if not (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock):
                                        revert with 0, 18
                                    if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / (block.number * tokenPerBlock) - (poolInfo[idx].field_512 * tokenPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint <= treasure:
                                        if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint < treasure:
                                            if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 17
                                            treasure -= (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            if allocated > !((block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint):
                                                revert with 0, 17
                                            if allocated + ((block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint) < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated += (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            mem[96] = this.address
                                            mem[128] = (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                            emit Mint(address(this.address), (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint);
                                        else:
                                            tokenPerBlock = 0
                                            if treasure > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < treasure:
                                                revert with 0, 17
                                            treasure = 0
                                            if allocated > !treasure:
                                                revert with 0, 17
                                            if allocated + treasure < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated += treasure
                                            mem[96] = this.address
                                            mem[128] = treasure
                                            emit Mint(address(this.address), treasure);
                                        if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 17
                                            if not (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                                revert with 0, 18
                                            if 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * (block.number * tokenPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * tokenPerBlock * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                                    else:
                                        if treasure >= treasure:
                                            tokenPerBlock = 0
                                        if treasure > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < treasure:
                                            revert with 0, 17
                                        treasure = 0
                                        if allocated > !treasure:
                                            revert with 0, 17
                                        if allocated + treasure < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        allocated += treasure
                                        mem[96] = this.address
                                        mem[128] = treasure
                                        emit Mint(address(this.address), treasure);
                                        if not treasure:
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1280 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1280:
                                                revert with 0, 18
                                            if poolInfo[idx].field_768 > !(10^12 * treasure / poolInfo[idx].field_1280):
                                                revert with 0, 17
                                            if poolInfo[idx].field_768 + (10^12 * treasure / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^12 * treasure / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalAllocPoint > !arg1:
        revert with 0, 17
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg1
    if block.number > startBlock:
        stor36B6[stor5.length] = block.number
    else:
        stor36B6[stor5.length] = startBlock
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = arg4
    stor36B6[stor5.length] = 0
}

function pendingToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if 0 == treasure:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 0, 18
        if 0 / totalAllocPoint <= treasure:
            if not 0 / totalAllocPoint:
                if poolInfo[arg1].field_1280 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not poolInfo[arg1].field_1280:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if poolInfo[arg1].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not poolInfo[arg1].field_1280:
                revert with 0, 18
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    else:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 0, 18
            if 0 / totalAllocPoint <= treasure:
                if not 0 / totalAllocPoint:
                    if poolInfo[arg1].field_1280 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 17
                        if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                            revert with 0, 17
                        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 18
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if poolInfo[arg1].field_1280 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not poolInfo[arg1].field_1280:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                    revert with 0, 17
                if userInfo[arg1][address(arg2)].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        else:
            if block.number - poolInfo[arg1].field_512 and tokenPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                revert with 0, 17
            if not block.number - poolInfo[arg1].field_512:
                revert with 0, 18
            if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) / block.number - poolInfo[arg1].field_512 != tokenPerBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not totalAllocPoint:
                    revert with 0, 18
                if 0 / totalAllocPoint <= treasure:
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfo[arg1].field_1280:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < userInfo[arg1][address(arg2)].field_256:
                                revert with 0, 17
                            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                                revert with 0, 17
                            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 17
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 18
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 17
                        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                            revert with 0, 17
                        if userInfo[arg1][address(arg2)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if poolInfo[arg1].field_1280 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 17
                        if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                            revert with 0, 17
                        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 18
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            else:
                if (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                    revert with 0, 17
                if not (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock):
                    revert with 0, 18
                if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / (block.number * tokenPerBlock) - (poolInfo[arg1].field_512 * tokenPerBlock) != poolInfo[arg1].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint <= treasure:
                    if not (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                        if poolInfo[arg1].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfo[arg1].field_1280:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 < userInfo[arg1][address(arg2)].field_256:
                                revert with 0, 17
                            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                                revert with 0, 17
                            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 17
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 18
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 17
                        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                            revert with 0, 17
                        if userInfo[arg1][address(arg2)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                    if (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if poolInfo[arg1].field_1280 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not poolInfo[arg1].field_1280:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0, 17
                    if poolInfo[arg1].field_768 + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 17
                        if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                            revert with 0, 17
                        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 18
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * tokenPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * tokenPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not treasure:
        if poolInfo[arg1].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not poolInfo[arg1].field_1280:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if treasure and 10^12 > -1 / treasure:
        revert with 0, 17
    if not treasure:
        revert with 0, 18
    if 10^12 * treasure / treasure != 10^12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if poolInfo[arg1].field_1280 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not poolInfo[arg1].field_1280:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * treasure / poolInfo[arg1].field_1280):
        revert with 0, 17
    if poolInfo[arg1].field_768 + (10^12 * treasure / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if -userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if -userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512 < -userInfo[arg1][address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (-userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * treasure / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * treasure / poolInfo[arg1].field_1280):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}



}
