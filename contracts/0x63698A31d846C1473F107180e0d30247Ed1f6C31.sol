contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - emergencyWithdraw(uint256 arg1)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2)
#
const getBlock = block.number


address owner;
uint256 stor1;
address DEADAddress;
address tokenAddress;
address lpTokenAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 startBlock;
uint256 totalLockedUpRewards;
uint256 earlyWithdrawFee;
uint256 treasure;
uint256 allocated;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699764;

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
           poolInfo[arg1].field_1024
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function lpToken() payable {
    return lpTokenAddress
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
    if userInfo[arg1][address(arg2)].field_768 > !poolInfo[arg1].field_768:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_768 < userInfo[arg1][address(arg2)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768 + poolInfo[arg1].field_768
}

function sub_c816a54c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    while idx < poolInfo.length:
        if lpTokenAddress == address(arg1):
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

function sub_086801eb(?) payable {
    require calldata.size - 4 >= 32
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
}

function pendingToken(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_256:
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
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not poolInfo[arg1].field_1024:
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
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if 0 == treasure:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args lpTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_1024:
                if poolInfo[arg1].field_1024 and 0 / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                    revert with 0, 17
                if not poolInfo[arg1].field_1024:
                    revert with 0, 18
                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                    if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] != poolInfo[arg1].field_0:
                        revert with 0, 'SafeMath: multiplication overflow'
        else:
            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if poolInfo[arg1].field_1024:
                if poolInfo[arg1].field_1024 and 2 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                    revert with 0, 17
                if not poolInfo[arg1].field_1024:
                    revert with 0, 18
                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] != poolInfo[arg1].field_0:
                        revert with 0, 'SafeMath: multiplication overflow'
        if 0 <= treasure:
            if poolInfo[arg1].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not poolInfo[arg1].field_1024:
                revert with 0, 18
            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                revert with 0, 17
            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                revert with 0, 17
            if userInfo[arg1][address(arg2)].field_512 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    else:
        if poolInfo[arg1].field_256 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.number < poolInfo[arg1].field_256:
            revert with 0, 17
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args lpTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not poolInfo[arg1].field_1024:
                if block.number - poolInfo[arg1].field_256:
                    if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                        revert with 0, 17
                    if not block.number - poolInfo[arg1].field_256:
                        revert with 0, 18
                    if 0 / block.number - poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                if 0 <= treasure:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 18
                    if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            else:
                if poolInfo[arg1].field_1024 and 0 / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                    revert with 0, 17
                if not poolInfo[arg1].field_1024:
                    revert with 0, 18
                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 0 / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                    if block.number - poolInfo[arg1].field_256:
                        if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                            revert with 0, 17
                        if not block.number - poolInfo[arg1].field_256:
                            revert with 0, 18
                        if 0 / block.number - poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if 0 <= treasure:
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfo[arg1].field_1024:
                            revert with 0, 18
                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                            revert with 0, 17
                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 17
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 18
                        if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 17
                        if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                            revert with 0, 17
                        if userInfo[arg1][address(arg2)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                else:
                    if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] != poolInfo[arg1].field_0:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not block.number - poolInfo[arg1].field_256:
                        if 0 <= treasure:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                revert with 0, 17
                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][address(arg2)].field_0:
                                revert with 0, 18
                            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                                revert with 0, 17
                            if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                                revert with 0, 17
                            if userInfo[arg1][address(arg2)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                    else:
                        if block.number - poolInfo[arg1].field_256 and poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[arg1].field_256:
                            revert with 0, 17
                        if not block.number - poolInfo[arg1].field_256:
                            revert with 0, 18
                        if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[arg1].field_256 != poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) <= treasure:
                            if not (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1024:
                                    revert with 0, 18
                                if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                    revert with 0, 17
                                if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                                    revert with 0, 17
                                if not userInfo[arg1][address(arg2)].field_0:
                                    revert with 0, 18
                                if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                                    revert with 0, 17
                                if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                                    revert with 0, 17
                                if userInfo[arg1][address(arg2)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                            if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                revert with 0, 17
                            if not (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                revert with 0, 18
                            if (10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_512 > !((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024):
                                revert with 0, 17
                            if poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][address(arg2)].field_0:
                                revert with 0, 18
                            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                                revert with 0, 17
                            if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                                revert with 0, 17
                            if userInfo[arg1][address(arg2)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
        else:
            if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not poolInfo[arg1].field_1024:
                if block.number - poolInfo[arg1].field_256:
                    if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                        revert with 0, 17
                    if not block.number - poolInfo[arg1].field_256:
                        revert with 0, 18
                    if 0 / block.number - poolInfo[arg1].field_256:
                        revert with 0, 'SafeMath: multiplication overflow'
                if 0 <= treasure:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not poolInfo[arg1].field_1024:
                        revert with 0, 18
                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                        revert with 0, 17
                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 0, 18
                    if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                        revert with 0, 17
                    if userInfo[arg1][address(arg2)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
            else:
                if poolInfo[arg1].field_1024 and 2 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                    revert with 0, 17
                if not poolInfo[arg1].field_1024:
                    revert with 0, 18
                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if block.number - poolInfo[arg1].field_256:
                        if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                            revert with 0, 17
                        if not block.number - poolInfo[arg1].field_256:
                            revert with 0, 18
                        if 0 / block.number - poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if 0 <= treasure:
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfo[arg1].field_1024:
                            revert with 0, 18
                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                            revert with 0, 17
                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 17
                        if not userInfo[arg1][address(arg2)].field_0:
                            revert with 0, 18
                        if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                            revert with 0, 17
                        if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                            revert with 0, 17
                        if userInfo[arg1][address(arg2)].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                else:
                    if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 17
                    if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] != poolInfo[arg1].field_0:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not block.number - poolInfo[arg1].field_256:
                        if 0 <= treasure:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                revert with 0, 17
                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][address(arg2)].field_0:
                                revert with 0, 18
                            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                                revert with 0, 17
                            if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                                revert with 0, 17
                            if userInfo[arg1][address(arg2)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                    else:
                        if block.number - poolInfo[arg1].field_256 and poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[arg1].field_256:
                            revert with 0, 17
                        if not block.number - poolInfo[arg1].field_256:
                            revert with 0, 18
                        if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[arg1].field_256 != poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) <= treasure:
                            if not (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1024:
                                    revert with 0, 18
                                if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                    revert with 0, 17
                                if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                                    revert with 0, 17
                                if not userInfo[arg1][address(arg2)].field_0:
                                    revert with 0, 18
                                if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                                    revert with 0, 17
                                if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                                    revert with 0, 17
                                if userInfo[arg1][address(arg2)].field_512 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
                            if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                revert with 0, 17
                            if not (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                revert with 0, 18
                            if (10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_512 > !((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024):
                                revert with 0, 17
                            if poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
                            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][address(arg2)].field_0:
                                revert with 0, 18
                            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024):
                                revert with 0, 'SafeMath: multiplication overflow'
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                                revert with 0, 17
                            if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
                                revert with 0, 17
                            if userInfo[arg1][address(arg2)].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not treasure:
        if poolInfo[arg1].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not poolInfo[arg1].field_1024:
            revert with 0, 18
        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
            revert with 0, 17
        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if treasure and 10^12 > -1 / treasure:
        revert with 0, 17
    if not treasure:
        revert with 0, 18
    if 10^12 * treasure / treasure != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if poolInfo[arg1].field_1024 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not poolInfo[arg1].field_1024:
        revert with 0, 18
    if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
        revert with 0, 17
    if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
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
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    if (poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    if ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0) + (10^12 * treasure / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_256:
        if poolInfo[arg1].field_1024:
            if poolInfo[arg1].field_0:
                if 0 == treasure:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args lpTokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_1024:
                            if poolInfo[arg1].field_1024 and 0 / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                                revert with 0, 17
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] != poolInfo[arg1].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                    else:
                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_1024:
                            if poolInfo[arg1].field_1024 and 2 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                                revert with 0, 17
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] != poolInfo[arg1].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                    if 0 <= treasure:
                        if 0 < treasure:
                            if 0 > treasure:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if treasure < 0:
                                revert with 0, 17
                            if allocated > -1:
                                revert with 0, 17
                            if allocated < allocated:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Mint(address(this.address), 0);
                        else:
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
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfo[arg1].field_1024:
                            revert with 0, 18
                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                            revert with 0, 17
                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                    else:
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
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                revert with 0, 17
                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                        else:
                            if treasure and 10^12 > -1 / treasure:
                                revert with 0, 17
                            if not treasure:
                                revert with 0, 18
                            if 10^12 * treasure / treasure != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                revert with 0, 17
                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                else:
                    if poolInfo[arg1].field_256 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number < poolInfo[arg1].field_256:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args lpTokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not poolInfo[arg1].field_1024:
                            if block.number - poolInfo[arg1].field_256:
                                if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                                    revert with 0, 17
                                if not block.number - poolInfo[arg1].field_256:
                                    revert with 0, 18
                                if 0 / block.number - poolInfo[arg1].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if 0 <= treasure:
                                if 0 < treasure:
                                    if 0 > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0:
                                        revert with 0, 17
                                    if allocated > -1:
                                        revert with 0, 17
                                    if allocated < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Mint(address(this.address), 0);
                                else:
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
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1024:
                                    revert with 0, 18
                                if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                    revert with 0, 17
                                if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                            else:
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
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                        else:
                            if poolInfo[arg1].field_1024 and 0 / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                                revert with 0, 17
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                if block.number - poolInfo[arg1].field_256:
                                    if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_256:
                                        revert with 0, 18
                                    if 0 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                if 0 <= treasure:
                                    if 0 < treasure:
                                        if 0 > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < 0:
                                            revert with 0, 17
                                        if allocated > -1:
                                            revert with 0, 17
                                        if allocated < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Mint(address(this.address), 0);
                                    else:
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
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                else:
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
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                    else:
                                        if treasure and 10^12 > -1 / treasure:
                                            revert with 0, 17
                                        if not treasure:
                                            revert with 0, 18
                                        if 10^12 * treasure / treasure != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                            else:
                                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] != poolInfo[arg1].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not block.number - poolInfo[arg1].field_256:
                                    if 0 <= treasure:
                                        if 0 < treasure:
                                            if 0 > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0:
                                                revert with 0, 17
                                            if allocated > -1:
                                                revert with 0, 17
                                            if allocated < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Mint(address(this.address), 0);
                                        else:
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
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                    else:
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
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                                else:
                                    if block.number - poolInfo[arg1].field_256 and poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_256:
                                        revert with 0, 18
                                    if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[arg1].field_256 != poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) <= treasure:
                                        if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) < treasure:
                                            if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 17
                                            treasure = treasure - (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) + (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)
                                            if allocated > !((block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)):
                                                revert with 0, 17
                                            if allocated + (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated = allocated + (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)
                                            emit Mint(address(this.address), (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600));
                                        else:
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
                                        if not (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 17
                                            if not (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 18
                                            if (10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += (10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024
                                    else:
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
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                    else:
                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not poolInfo[arg1].field_1024:
                            if block.number - poolInfo[arg1].field_256:
                                if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                                    revert with 0, 17
                                if not block.number - poolInfo[arg1].field_256:
                                    revert with 0, 18
                                if 0 / block.number - poolInfo[arg1].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if 0 <= treasure:
                                if 0 < treasure:
                                    if 0 > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0:
                                        revert with 0, 17
                                    if allocated > -1:
                                        revert with 0, 17
                                    if allocated < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Mint(address(this.address), 0);
                                else:
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
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1024:
                                    revert with 0, 18
                                if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                    revert with 0, 17
                                if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                            else:
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
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                        else:
                            if poolInfo[arg1].field_1024 and 2 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                                revert with 0, 17
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                if block.number - poolInfo[arg1].field_256:
                                    if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_256:
                                        revert with 0, 18
                                    if 0 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                if 0 <= treasure:
                                    if 0 < treasure:
                                        if 0 > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < 0:
                                            revert with 0, 17
                                        if allocated > -1:
                                            revert with 0, 17
                                        if allocated < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Mint(address(this.address), 0);
                                    else:
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
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                else:
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
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                    else:
                                        if treasure and 10^12 > -1 / treasure:
                                            revert with 0, 17
                                        if not treasure:
                                            revert with 0, 18
                                        if 10^12 * treasure / treasure != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                            else:
                                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] != poolInfo[arg1].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not block.number - poolInfo[arg1].field_256:
                                    if 0 <= treasure:
                                        if 0 < treasure:
                                            if 0 > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0:
                                                revert with 0, 17
                                            if allocated > -1:
                                                revert with 0, 17
                                            if allocated < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Mint(address(this.address), 0);
                                        else:
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
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                    else:
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
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                                else:
                                    if block.number - poolInfo[arg1].field_256 and poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_256:
                                        revert with 0, 18
                                    if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[arg1].field_256 != poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) <= treasure:
                                        if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) < treasure:
                                            if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 17
                                            treasure = treasure - (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) + (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)
                                            if allocated > !((block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)):
                                                revert with 0, 17
                                            if allocated + (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated = allocated + (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)
                                            emit Mint(address(this.address), (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600));
                                        else:
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
                                        if not (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 17
                                            if not (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 18
                                            if (10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += (10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024
                                    else:
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
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
        poolInfo[arg1].field_256 = block.number
}

function set(uint256 arg1, uint256 arg2, bool arg3, uint256 arg4) payable {
    mem[64] = 96
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
            if block.number > poolInfo[idx].field_256:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_0:
                        if 0 == treasure:
                            mem[mem[64] + 4] = lpTokenAddress
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args lpTokenAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1035 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1036 = mem[_1035]
                            require ext_code.size(lpTokenAddress)
                            staticcall lpTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1042 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not _1036:
                                if mem[_1042] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1042]:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024:
                                    if poolInfo[idx].field_1024 and 0 / mem[_1042] > -1 / poolInfo[idx].field_1024:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_1024 * 0 / mem[_1042] / poolInfo[idx].field_1024 != 0 / mem[_1042]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1024 * 0 / mem[_1042]:
                                        if poolInfo[idx].field_1024 * 0 / mem[_1042] and poolInfo[idx].field_0 > -1 / poolInfo[idx].field_1024 * 0 / mem[_1042]:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1024 * 0 / mem[_1042]:
                                            revert with 0, 18
                                        if poolInfo[idx].field_1024 * 0 / mem[_1042] * poolInfo[idx].field_0 / poolInfo[idx].field_1024 * 0 / mem[_1042] != poolInfo[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                if _1036 and 2 > -1 / _1036:
                                    revert with 0, 17
                                if not _1036:
                                    revert with 0, 18
                                if 2 * _1036 / _1036 != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1042] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1042]:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024:
                                    if poolInfo[idx].field_1024 and 2 * _1036 / mem[_1042] > -1 / poolInfo[idx].field_1024:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_1024 * 2 * _1036 / mem[_1042] / poolInfo[idx].field_1024 != 2 * _1036 / mem[_1042]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1024 * 2 * _1036 / mem[_1042]:
                                        if poolInfo[idx].field_1024 * 2 * _1036 / mem[_1042] and poolInfo[idx].field_0 > -1 / poolInfo[idx].field_1024 * 2 * _1036 / mem[_1042]:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1024 * 2 * _1036 / mem[_1042]:
                                            revert with 0, 18
                                        if poolInfo[idx].field_1024 * 2 * _1036 / mem[_1042] * poolInfo[idx].field_0 / poolInfo[idx].field_1024 * 2 * _1036 / mem[_1042] != poolInfo[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                            if 0 <= treasure:
                                if 0 < treasure:
                                    if 0 > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0:
                                        revert with 0, 17
                                    if allocated > -1:
                                        revert with 0, 17
                                    if allocated < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = this.address
                                    mem[mem[64] + 32] = 0
                                    emit Mint(address(this.address), 0);
                                else:
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
                                    mem[mem[64]] = this.address
                                    mem[mem[64] + 32] = treasure
                                    emit Mint(address(this.address), treasure);
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1024:
                                    revert with 0, 18
                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                    revert with 0, 17
                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                            else:
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
                                mem[mem[64]] = this.address
                                mem[mem[64] + 32] = treasure
                                emit Mint(address(this.address), treasure);
                                if not treasure:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                        revert with 0, 17
                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                        revert with 0, 17
                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                        else:
                            if poolInfo[idx].field_256 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfo[idx].field_256:
                                revert with 0, 17
                            mem[mem[64] + 4] = lpTokenAddress
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args lpTokenAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1041 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1043 = mem[_1041]
                            require ext_code.size(lpTokenAddress)
                            staticcall lpTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1047 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1048 = mem[_1047]
                            if not _1043:
                                if mem[_1047] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1047]:
                                    revert with 0, 18
                                if not poolInfo[idx].field_1024:
                                    if block.number - poolInfo[idx].field_256:
                                        if block.number - poolInfo[idx].field_256 and 0 > -1 / block.number - poolInfo[idx].field_256:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_256:
                                            revert with 0, 18
                                        if 0 / block.number - poolInfo[idx].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 <= treasure:
                                        if 0 < treasure:
                                            if 0 > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0:
                                                revert with 0, 17
                                            if allocated > -1:
                                                revert with 0, 17
                                            if allocated < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = 0
                                            emit Mint(address(this.address), 0);
                                        else:
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
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = treasure
                                            emit Mint(address(this.address), treasure);
                                        if poolInfo[idx].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1024:
                                            revert with 0, 18
                                        if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                            revert with 0, 17
                                        if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                    else:
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
                                        mem[mem[64]] = this.address
                                        mem[mem[64] + 32] = treasure
                                        emit Mint(address(this.address), treasure);
                                        if not treasure:
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                else:
                                    if poolInfo[idx].field_1024 and 0 / mem[_1047] > -1 / poolInfo[idx].field_1024:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_1024 * 0 / mem[_1047] / poolInfo[idx].field_1024 != 0 / mem[_1047]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not poolInfo[idx].field_1024 * 0 / mem[_1047]:
                                        if block.number - poolInfo[idx].field_256:
                                            if block.number - poolInfo[idx].field_256 and 0 > -1 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_256:
                                                revert with 0, 18
                                            if 0 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 <= treasure:
                                            if 0 < treasure:
                                                if 0 > treasure:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if treasure < 0:
                                                    revert with 0, 17
                                                if allocated > -1:
                                                    revert with 0, 17
                                                if allocated < allocated:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = 0
                                                emit Mint(address(this.address), 0);
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                        else:
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
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = treasure
                                            emit Mint(address(this.address), treasure);
                                            if not treasure:
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                            else:
                                                if treasure and 10^12 > -1 / treasure:
                                                    revert with 0, 17
                                                if not treasure:
                                                    revert with 0, 18
                                                if 10^12 * treasure / treasure != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                    else:
                                        if poolInfo[idx].field_1024 * 0 / mem[_1047] and poolInfo[idx].field_0 > -1 / poolInfo[idx].field_1024 * 0 / mem[_1047]:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1024 * 0 / mem[_1047]:
                                            revert with 0, 18
                                        if poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / poolInfo[idx].field_1024 * 0 / mem[_1047] != poolInfo[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not block.number - poolInfo[idx].field_256:
                                            if 0 <= treasure:
                                                if 0 < treasure:
                                                    if 0 > treasure:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if treasure < 0:
                                                        revert with 0, 17
                                                    if allocated > -1:
                                                        revert with 0, 17
                                                    if allocated < allocated:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = 0
                                                    emit Mint(address(this.address), 0);
                                                else:
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
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = treasure
                                                    emit Mint(address(this.address), treasure);
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                                if not treasure:
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if treasure and 10^12 > -1 / treasure:
                                                        revert with 0, 17
                                                    if not treasure:
                                                        revert with 0, 18
                                                    if 10^12 * treasure / treasure != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                        else:
                                            if block.number - poolInfo[idx].field_256 and poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_256:
                                                revert with 0, 18
                                            if (block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[idx].field_256 != poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) <= treasure:
                                                if (block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) < treasure:
                                                    if (block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) > treasure:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if treasure < (block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 17
                                                    treasure = treasure - (block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) + (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    if allocated > !((block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600)):
                                                        revert with 0, 17
                                                    if allocated + (block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) < allocated:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    allocated = allocated + (block.number * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = (block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    emit Mint(address(this.address), (block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600));
                                                else:
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
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = treasure
                                                    emit Mint(address(this.address), treasure);
                                                if not (block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if (block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 17
                                                    if not (block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 18
                                                    if (10^12 * block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !((10^12 * block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + ((10^12 * block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += (10^12 * block.number * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                                if not treasure:
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if treasure and 10^12 > -1 / treasure:
                                                        revert with 0, 17
                                                    if not treasure:
                                                        revert with 0, 18
                                                    if 10^12 * treasure / treasure != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                            else:
                                if _1043 and 2 > -1 / _1043:
                                    revert with 0, 17
                                if not _1043:
                                    revert with 0, 18
                                if 2 * _1043 / _1043 != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1047] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1047]:
                                    revert with 0, 18
                                if not poolInfo[idx].field_1024:
                                    if block.number - poolInfo[idx].field_256:
                                        if block.number - poolInfo[idx].field_256 and 0 > -1 / block.number - poolInfo[idx].field_256:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_256:
                                            revert with 0, 18
                                        if 0 / block.number - poolInfo[idx].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 <= treasure:
                                        if 0 < treasure:
                                            if 0 > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0:
                                                revert with 0, 17
                                            if allocated > -1:
                                                revert with 0, 17
                                            if allocated < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = 0
                                            emit Mint(address(this.address), 0);
                                        else:
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
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = treasure
                                            emit Mint(address(this.address), treasure);
                                        if poolInfo[idx].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1024:
                                            revert with 0, 18
                                        if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                            revert with 0, 17
                                        if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                    else:
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
                                        mem[mem[64]] = this.address
                                        mem[mem[64] + 32] = treasure
                                        emit Mint(address(this.address), treasure);
                                        if not treasure:
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                else:
                                    if poolInfo[idx].field_1024 and 2 * _1043 / mem[_1047] > -1 / poolInfo[idx].field_1024:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] / poolInfo[idx].field_1024 != 2 * _1043 / mem[_1047]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047]:
                                        if block.number - poolInfo[idx].field_256:
                                            if block.number - poolInfo[idx].field_256 and 0 > -1 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_256:
                                                revert with 0, 18
                                            if 0 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 <= treasure:
                                            if 0 < treasure:
                                                if 0 > treasure:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if treasure < 0:
                                                    revert with 0, 17
                                                if allocated > -1:
                                                    revert with 0, 17
                                                if allocated < allocated:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = 0
                                                emit Mint(address(this.address), 0);
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                        else:
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
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = treasure
                                            emit Mint(address(this.address), treasure);
                                            if not treasure:
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                            else:
                                                if treasure and 10^12 > -1 / treasure:
                                                    revert with 0, 17
                                                if not treasure:
                                                    revert with 0, 18
                                                if 10^12 * treasure / treasure != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                    else:
                                        if poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] and poolInfo[idx].field_0 > -1 / poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047]:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047]:
                                            revert with 0, 18
                                        if poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] != poolInfo[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not block.number - poolInfo[idx].field_256:
                                            if 0 <= treasure:
                                                if 0 < treasure:
                                                    if 0 > treasure:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if treasure < 0:
                                                        revert with 0, 17
                                                    if allocated > -1:
                                                        revert with 0, 17
                                                    if allocated < allocated:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = 0
                                                    emit Mint(address(this.address), 0);
                                                else:
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
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = treasure
                                                    emit Mint(address(this.address), treasure);
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                                if not treasure:
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if treasure and 10^12 > -1 / treasure:
                                                        revert with 0, 17
                                                    if not treasure:
                                                        revert with 0, 18
                                                    if 10^12 * treasure / treasure != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                        else:
                                            if block.number - poolInfo[idx].field_256 and poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_256:
                                                revert with 0, 18
                                            if (block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[idx].field_256 != poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) <= treasure:
                                                if (block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) < treasure:
                                                    if (block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) > treasure:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if treasure < (block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 17
                                                    treasure = treasure - (block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) + (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    if allocated > !((block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600)):
                                                        revert with 0, 17
                                                    if allocated + (block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) < allocated:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    allocated = allocated + (block.number * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / mem[_1047] * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = (block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    emit Mint(address(this.address), (block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600));
                                                else:
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
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = treasure
                                                    emit Mint(address(this.address), treasure);
                                                if not (block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if (block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 17
                                                    if not (block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 18
                                                    if (10^12 * block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !((10^12 * block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + ((10^12 * block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += (10^12 * block.number * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1043 / _1048 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                                if not treasure:
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if treasure and 10^12 > -1 / treasure:
                                                        revert with 0, 17
                                                    if not treasure:
                                                        revert with 0, 18
                                                    if 10^12 * treasure / treasure != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                poolInfo[idx].field_256 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_0 = arg2
    poolInfo[arg1].field_768 = arg4
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4) payable {
    mem[64] = 96
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
            if block.number > poolInfo[idx].field_256:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_0:
                        if 0 == treasure:
                            mem[mem[64] + 4] = lpTokenAddress
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args lpTokenAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1077 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1078 = mem[_1077]
                            require ext_code.size(lpTokenAddress)
                            staticcall lpTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1084 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if not _1078:
                                if mem[_1084] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1084]:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024:
                                    if poolInfo[idx].field_1024 and 0 / mem[_1084] > -1 / poolInfo[idx].field_1024:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_1024 * 0 / mem[_1084] / poolInfo[idx].field_1024 != 0 / mem[_1084]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1024 * 0 / mem[_1084]:
                                        if poolInfo[idx].field_1024 * 0 / mem[_1084] and poolInfo[idx].field_0 > -1 / poolInfo[idx].field_1024 * 0 / mem[_1084]:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1024 * 0 / mem[_1084]:
                                            revert with 0, 18
                                        if poolInfo[idx].field_1024 * 0 / mem[_1084] * poolInfo[idx].field_0 / poolInfo[idx].field_1024 * 0 / mem[_1084] != poolInfo[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                            else:
                                if _1078 and 2 > -1 / _1078:
                                    revert with 0, 17
                                if not _1078:
                                    revert with 0, 18
                                if 2 * _1078 / _1078 != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1084] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1084]:
                                    revert with 0, 18
                                if poolInfo[idx].field_1024:
                                    if poolInfo[idx].field_1024 and 2 * _1078 / mem[_1084] > -1 / poolInfo[idx].field_1024:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_1024 * 2 * _1078 / mem[_1084] / poolInfo[idx].field_1024 != 2 * _1078 / mem[_1084]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1024 * 2 * _1078 / mem[_1084]:
                                        if poolInfo[idx].field_1024 * 2 * _1078 / mem[_1084] and poolInfo[idx].field_0 > -1 / poolInfo[idx].field_1024 * 2 * _1078 / mem[_1084]:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1024 * 2 * _1078 / mem[_1084]:
                                            revert with 0, 18
                                        if poolInfo[idx].field_1024 * 2 * _1078 / mem[_1084] * poolInfo[idx].field_0 / poolInfo[idx].field_1024 * 2 * _1078 / mem[_1084] != poolInfo[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                            if 0 <= treasure:
                                if 0 < treasure:
                                    if 0 > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0:
                                        revert with 0, 17
                                    if allocated > -1:
                                        revert with 0, 17
                                    if allocated < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[mem[64]] = this.address
                                    mem[mem[64] + 32] = 0
                                    emit Mint(address(this.address), 0);
                                else:
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
                                    mem[mem[64]] = this.address
                                    mem[mem[64] + 32] = treasure
                                    emit Mint(address(this.address), treasure);
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[idx].field_1024:
                                    revert with 0, 18
                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                    revert with 0, 17
                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                            else:
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
                                mem[mem[64]] = this.address
                                mem[mem[64] + 32] = treasure
                                emit Mint(address(this.address), treasure);
                                if not treasure:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                        revert with 0, 17
                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                        revert with 0, 17
                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                        else:
                            if poolInfo[idx].field_256 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < poolInfo[idx].field_256:
                                revert with 0, 17
                            mem[mem[64] + 4] = lpTokenAddress
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args lpTokenAddress
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1083 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1085 = mem[_1083]
                            require ext_code.size(lpTokenAddress)
                            staticcall lpTokenAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1089 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1090 = mem[_1089]
                            if not _1085:
                                if mem[_1089] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1089]:
                                    revert with 0, 18
                                if not poolInfo[idx].field_1024:
                                    if block.number - poolInfo[idx].field_256:
                                        if block.number - poolInfo[idx].field_256 and 0 > -1 / block.number - poolInfo[idx].field_256:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_256:
                                            revert with 0, 18
                                        if 0 / block.number - poolInfo[idx].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 <= treasure:
                                        if 0 < treasure:
                                            if 0 > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0:
                                                revert with 0, 17
                                            if allocated > -1:
                                                revert with 0, 17
                                            if allocated < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = 0
                                            emit Mint(address(this.address), 0);
                                        else:
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
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = treasure
                                            emit Mint(address(this.address), treasure);
                                        if poolInfo[idx].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1024:
                                            revert with 0, 18
                                        if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                            revert with 0, 17
                                        if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                    else:
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
                                        mem[mem[64]] = this.address
                                        mem[mem[64] + 32] = treasure
                                        emit Mint(address(this.address), treasure);
                                        if not treasure:
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                else:
                                    if poolInfo[idx].field_1024 and 0 / mem[_1089] > -1 / poolInfo[idx].field_1024:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_1024 * 0 / mem[_1089] / poolInfo[idx].field_1024 != 0 / mem[_1089]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not poolInfo[idx].field_1024 * 0 / mem[_1089]:
                                        if block.number - poolInfo[idx].field_256:
                                            if block.number - poolInfo[idx].field_256 and 0 > -1 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_256:
                                                revert with 0, 18
                                            if 0 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 <= treasure:
                                            if 0 < treasure:
                                                if 0 > treasure:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if treasure < 0:
                                                    revert with 0, 17
                                                if allocated > -1:
                                                    revert with 0, 17
                                                if allocated < allocated:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = 0
                                                emit Mint(address(this.address), 0);
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                        else:
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
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = treasure
                                            emit Mint(address(this.address), treasure);
                                            if not treasure:
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                            else:
                                                if treasure and 10^12 > -1 / treasure:
                                                    revert with 0, 17
                                                if not treasure:
                                                    revert with 0, 18
                                                if 10^12 * treasure / treasure != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                    else:
                                        if poolInfo[idx].field_1024 * 0 / mem[_1089] and poolInfo[idx].field_0 > -1 / poolInfo[idx].field_1024 * 0 / mem[_1089]:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1024 * 0 / mem[_1089]:
                                            revert with 0, 18
                                        if poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / poolInfo[idx].field_1024 * 0 / mem[_1089] != poolInfo[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not block.number - poolInfo[idx].field_256:
                                            if 0 <= treasure:
                                                if 0 < treasure:
                                                    if 0 > treasure:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if treasure < 0:
                                                        revert with 0, 17
                                                    if allocated > -1:
                                                        revert with 0, 17
                                                    if allocated < allocated:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = 0
                                                    emit Mint(address(this.address), 0);
                                                else:
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
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = treasure
                                                    emit Mint(address(this.address), treasure);
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                                if not treasure:
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if treasure and 10^12 > -1 / treasure:
                                                        revert with 0, 17
                                                    if not treasure:
                                                        revert with 0, 18
                                                    if 10^12 * treasure / treasure != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                        else:
                                            if block.number - poolInfo[idx].field_256 and poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_256:
                                                revert with 0, 18
                                            if (block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[idx].field_256 != poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) <= treasure:
                                                if (block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) < treasure:
                                                    if (block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) > treasure:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if treasure < (block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 17
                                                    treasure = treasure - (block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) + (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    if allocated > !((block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600)):
                                                        revert with 0, 17
                                                    if allocated + (block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) < allocated:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    allocated = allocated + (block.number * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = (block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    emit Mint(address(this.address), (block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600));
                                                else:
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
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = treasure
                                                    emit Mint(address(this.address), treasure);
                                                if not (block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if (block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 17
                                                    if not (block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 18
                                                    if (10^12 * block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !((10^12 * block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + ((10^12 * block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += (10^12 * block.number * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 0 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                                if not treasure:
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if treasure and 10^12 > -1 / treasure:
                                                        revert with 0, 17
                                                    if not treasure:
                                                        revert with 0, 18
                                                    if 10^12 * treasure / treasure != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                            else:
                                if _1085 and 2 > -1 / _1085:
                                    revert with 0, 17
                                if not _1085:
                                    revert with 0, 18
                                if 2 * _1085 / _1085 != 2:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1089] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1089]:
                                    revert with 0, 18
                                if not poolInfo[idx].field_1024:
                                    if block.number - poolInfo[idx].field_256:
                                        if block.number - poolInfo[idx].field_256 and 0 > -1 / block.number - poolInfo[idx].field_256:
                                            revert with 0, 17
                                        if not block.number - poolInfo[idx].field_256:
                                            revert with 0, 18
                                        if 0 / block.number - poolInfo[idx].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                    if 0 <= treasure:
                                        if 0 < treasure:
                                            if 0 > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0:
                                                revert with 0, 17
                                            if allocated > -1:
                                                revert with 0, 17
                                            if allocated < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = 0
                                            emit Mint(address(this.address), 0);
                                        else:
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
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = treasure
                                            emit Mint(address(this.address), treasure);
                                        if poolInfo[idx].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[idx].field_1024:
                                            revert with 0, 18
                                        if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                            revert with 0, 17
                                        if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                    else:
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
                                        mem[mem[64]] = this.address
                                        mem[mem[64] + 32] = treasure
                                        emit Mint(address(this.address), treasure);
                                        if not treasure:
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                else:
                                    if poolInfo[idx].field_1024 and 2 * _1085 / mem[_1089] > -1 / poolInfo[idx].field_1024:
                                        revert with 0, 17
                                    if not poolInfo[idx].field_1024:
                                        revert with 0, 18
                                    if poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] / poolInfo[idx].field_1024 != 2 * _1085 / mem[_1089]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089]:
                                        if block.number - poolInfo[idx].field_256:
                                            if block.number - poolInfo[idx].field_256 and 0 > -1 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_256:
                                                revert with 0, 18
                                            if 0 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                        if 0 <= treasure:
                                            if 0 < treasure:
                                                if 0 > treasure:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if treasure < 0:
                                                    revert with 0, 17
                                                if allocated > -1:
                                                    revert with 0, 17
                                                if allocated < allocated:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = 0
                                                emit Mint(address(this.address), 0);
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                            if poolInfo[idx].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[idx].field_1024:
                                                revert with 0, 18
                                            if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                revert with 0, 17
                                            if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                        else:
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
                                            mem[mem[64]] = this.address
                                            mem[mem[64] + 32] = treasure
                                            emit Mint(address(this.address), treasure);
                                            if not treasure:
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                            else:
                                                if treasure and 10^12 > -1 / treasure:
                                                    revert with 0, 17
                                                if not treasure:
                                                    revert with 0, 18
                                                if 10^12 * treasure / treasure != 10^12:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                    else:
                                        if poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] and poolInfo[idx].field_0 > -1 / poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089]:
                                            revert with 0, 17
                                        if not poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089]:
                                            revert with 0, 18
                                        if poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] != poolInfo[idx].field_0:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not block.number - poolInfo[idx].field_256:
                                            if 0 <= treasure:
                                                if 0 < treasure:
                                                    if 0 > treasure:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if treasure < 0:
                                                        revert with 0, 17
                                                    if allocated > -1:
                                                        revert with 0, 17
                                                    if allocated < allocated:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = 0
                                                    emit Mint(address(this.address), 0);
                                                else:
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
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = treasure
                                                    emit Mint(address(this.address), treasure);
                                                if poolInfo[idx].field_1024 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not poolInfo[idx].field_1024:
                                                    revert with 0, 18
                                                if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                    revert with 0, 17
                                                if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                                if not treasure:
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if treasure and 10^12 > -1 / treasure:
                                                        revert with 0, 17
                                                    if not treasure:
                                                        revert with 0, 18
                                                    if 10^12 * treasure / treasure != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                                        else:
                                            if block.number - poolInfo[idx].field_256 and poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[idx].field_256:
                                                revert with 0, 17
                                            if not block.number - poolInfo[idx].field_256:
                                                revert with 0, 18
                                            if (block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[idx].field_256 != poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if (block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) <= treasure:
                                                if (block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) < treasure:
                                                    if (block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) > treasure:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if treasure < (block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 17
                                                    treasure = treasure - (block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) + (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    if allocated > !((block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600)):
                                                        revert with 0, 17
                                                    if allocated + (block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) < allocated:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    allocated = allocated + (block.number * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / mem[_1089] * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = (block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600)
                                                    emit Mint(address(this.address), (block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600));
                                                else:
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
                                                    mem[mem[64]] = this.address
                                                    mem[mem[64] + 32] = treasure
                                                    emit Mint(address(this.address), treasure);
                                                if not (block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if (block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 17
                                                    if not (block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600):
                                                        revert with 0, 18
                                                    if (10^12 * block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !((10^12 * block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + ((10^12 * block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += (10^12 * block.number * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[idx].field_256 * poolInfo[idx].field_1024 * 2 * _1085 / _1090 * poolInfo[idx].field_0 / 100 / 2920 * 3600) / poolInfo[idx].field_1024
                                            else:
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
                                                mem[mem[64]] = this.address
                                                mem[mem[64] + 32] = treasure
                                                emit Mint(address(this.address), treasure);
                                                if not treasure:
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(0 / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 0 / poolInfo[idx].field_1024
                                                else:
                                                    if treasure and 10^12 > -1 / treasure:
                                                        revert with 0, 17
                                                    if not treasure:
                                                        revert with 0, 18
                                                    if 10^12 * treasure / treasure != 10^12:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if poolInfo[idx].field_1024 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not poolInfo[idx].field_1024:
                                                        revert with 0, 18
                                                    if poolInfo[idx].field_512 > !(10^12 * treasure / poolInfo[idx].field_1024):
                                                        revert with 0, 17
                                                    if poolInfo[idx].field_512 + (10^12 * treasure / poolInfo[idx].field_1024) < poolInfo[idx].field_512:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_512 += 10^12 * treasure / poolInfo[idx].field_1024
                poolInfo[idx].field_256 = block.number
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
    poolInfo.length++
    stor36B6[stor5.length] = arg1
    if block.number > startBlock:
        stor36B6[stor5.length] = block.number
    else:
        stor36B6[stor5.length] = startBlock
    stor36B6[stor5.length] = 0
    stor36B6[stor5.length] = arg4
    stor36B6[stor5.length] = 0
}

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if userInfo[arg1][address(msg.sender)].field_768 > !poolInfo[arg1].field_768:
        revert with 0, 17
    if userInfo[arg1][address(msg.sender)].field_768 + poolInfo[arg1].field_768 < userInfo[arg1][address(msg.sender)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < userInfo[arg1][address(msg.sender)].field_768 + poolInfo[arg1].field_768:
        revert with 0, 'Check the locking time'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_256:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            if -userInfo[arg1][msg.sender].field_256 > 0:
                if -userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 < -userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                userInfo[arg1][msg.sender].field_512 = 0
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][msg.sender].field_0:
                        revert with 0, 18
                    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                else:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if userInfo[arg1][msg.sender].field_512 > 0:
                    if -userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 < -userInfo[arg1][msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                    userInfo[arg1][msg.sender].field_512 = 0
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if not userInfo[arg1][msg.sender].field_0:
                            revert with 0, 18
                        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                    else:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                revert with 0, 17
            if not userInfo[arg1][msg.sender].field_0:
                revert with 0, 18
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][msg.sender].field_256 > userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][msg.sender].field_256:
                revert with 0, 17
            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > 0:
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                if userInfo[arg1][msg.sender].field_512 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                    revert with 0, 17
                totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                userInfo[arg1][msg.sender].field_512 = 0
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][msg.sender].field_0:
                        revert with 0, 18
                    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tokenAddress)
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                else:
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if userInfo[arg1][msg.sender].field_512 > 0:
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[arg1][msg.sender].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                    userInfo[arg1][msg.sender].field_512 = 0
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if not userInfo[arg1][msg.sender].field_0:
                            revert with 0, 18
                        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                    else:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if not poolInfo[arg1].field_1024:
            poolInfo[arg1].field_256 = block.number
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][msg.sender].field_256:
                    revert with 0, 17
                if -userInfo[arg1][msg.sender].field_256 > 0:
                    if -userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 < -userInfo[arg1][msg.sender].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                    userInfo[arg1][msg.sender].field_512 = 0
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if not userInfo[arg1][msg.sender].field_0:
                            revert with 0, 18
                        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                    else:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if userInfo[arg1][msg.sender].field_512 > 0:
                        if -userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 < -userInfo[arg1][msg.sender].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][msg.sender].field_0:
                                revert with 0, 18
                            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                    revert with 0, 17
                if not userInfo[arg1][msg.sender].field_0:
                    revert with 0, 18
                if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if userInfo[arg1][msg.sender].field_256 > userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][msg.sender].field_256:
                    revert with 0, 17
                if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > 0:
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    if userInfo[arg1][msg.sender].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                        revert with 0, 17
                    totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                    userInfo[arg1][msg.sender].field_512 = 0
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                            revert with 0, 17
                        if not userInfo[arg1][msg.sender].field_0:
                            revert with 0, 18
                        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                    else:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if userInfo[arg1][msg.sender].field_512 > 0:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        if userInfo[arg1][msg.sender].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][msg.sender].field_0:
                                revert with 0, 18
                            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if not poolInfo[arg1].field_0:
                poolInfo[arg1].field_256 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][msg.sender].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][msg.sender].field_256 > 0:
                        if -userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 < -userInfo[arg1][msg.sender].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][msg.sender].field_0:
                                revert with 0, 18
                            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if userInfo[arg1][msg.sender].field_512 > 0:
                            if -userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                                revert with 0, 17
                            if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 < -userInfo[arg1][msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                                revert with 0, 17
                            totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                            userInfo[arg1][msg.sender].field_512 = 0
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 17
                                if not userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 18
                                if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][msg.sender].field_0:
                        revert with 0, 18
                    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][msg.sender].field_256 > userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][msg.sender].field_256:
                        revert with 0, 17
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > 0:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        if userInfo[arg1][msg.sender].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][msg.sender].field_0:
                                revert with 0, 18
                            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if userInfo[arg1][msg.sender].field_512 > 0:
                            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                                revert with 0, 17
                            if userInfo[arg1][msg.sender].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                                revert with 0, 17
                            totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                            userInfo[arg1][msg.sender].field_512 = 0
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 17
                                if not userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 18
                                if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if 0 == treasure:
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args lpTokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_1024:
                            if poolInfo[arg1].field_1024 and 0 / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                                revert with 0, 17
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] != poolInfo[arg1].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                    else:
                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_1024:
                            if poolInfo[arg1].field_1024 and 2 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                                revert with 0, 17
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] != poolInfo[arg1].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                    if 0 <= treasure:
                        if 0 < treasure:
                            if 0 > treasure:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if treasure < 0:
                                revert with 0, 17
                            if allocated > -1:
                                revert with 0, 17
                            if allocated < allocated:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Mint(address(this.address), 0);
                        else:
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
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not poolInfo[arg1].field_1024:
                            revert with 0, 18
                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                            revert with 0, 17
                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                    else:
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
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                revert with 0, 17
                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                        else:
                            if treasure and 10^12 > -1 / treasure:
                                revert with 0, 17
                            if not treasure:
                                revert with 0, 18
                            if 10^12 * treasure / treasure != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                revert with 0, 17
                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                else:
                    if poolInfo[arg1].field_256 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number < poolInfo[arg1].field_256:
                        revert with 0, 17
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args lpTokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not poolInfo[arg1].field_1024:
                            if block.number - poolInfo[arg1].field_256:
                                if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                                    revert with 0, 17
                                if not block.number - poolInfo[arg1].field_256:
                                    revert with 0, 18
                                if 0 / block.number - poolInfo[arg1].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if 0 <= treasure:
                                if 0 < treasure:
                                    if 0 > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0:
                                        revert with 0, 17
                                    if allocated > -1:
                                        revert with 0, 17
                                    if allocated < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Mint(address(this.address), 0);
                                else:
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
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1024:
                                    revert with 0, 18
                                if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                    revert with 0, 17
                                if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                            else:
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
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                        else:
                            if poolInfo[arg1].field_1024 and 0 / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                                revert with 0, 17
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 0 / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                if block.number - poolInfo[arg1].field_256:
                                    if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_256:
                                        revert with 0, 18
                                    if 0 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                if 0 <= treasure:
                                    if 0 < treasure:
                                        if 0 > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < 0:
                                            revert with 0, 17
                                        if allocated > -1:
                                            revert with 0, 17
                                        if allocated < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Mint(address(this.address), 0);
                                    else:
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
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                else:
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
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                    else:
                                        if treasure and 10^12 > -1 / treasure:
                                            revert with 0, 17
                                        if not treasure:
                                            revert with 0, 18
                                        if 10^12 * treasure / treasure != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                            else:
                                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] != poolInfo[arg1].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not block.number - poolInfo[arg1].field_256:
                                    if 0 <= treasure:
                                        if 0 < treasure:
                                            if 0 > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0:
                                                revert with 0, 17
                                            if allocated > -1:
                                                revert with 0, 17
                                            if allocated < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Mint(address(this.address), 0);
                                        else:
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
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                    else:
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
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                                else:
                                    if block.number - poolInfo[arg1].field_256 and poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_256:
                                        revert with 0, 18
                                    if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[arg1].field_256 != poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) <= treasure:
                                        if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) < treasure:
                                            if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 17
                                            treasure = treasure - (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) + (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)
                                            if allocated > !((block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)):
                                                revert with 0, 17
                                            if allocated + (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated = allocated + (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)
                                            emit Mint(address(this.address), (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600));
                                        else:
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
                                        if not (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 17
                                            if not (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 18
                                            if (10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += (10^12 * block.number * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 0 / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024
                                    else:
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
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                    else:
                        if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 2 * ext_call.return_data[0] / ext_call.return_data[0] != 2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not poolInfo[arg1].field_1024:
                            if block.number - poolInfo[arg1].field_256:
                                if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                                    revert with 0, 17
                                if not block.number - poolInfo[arg1].field_256:
                                    revert with 0, 18
                                if 0 / block.number - poolInfo[arg1].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                            if 0 <= treasure:
                                if 0 < treasure:
                                    if 0 > treasure:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if treasure < 0:
                                        revert with 0, 17
                                    if allocated > -1:
                                        revert with 0, 17
                                    if allocated < allocated:
                                        revert with 0, 'SafeMath: addition overflow'
                                    emit Mint(address(this.address), 0);
                                else:
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
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not poolInfo[arg1].field_1024:
                                    revert with 0, 18
                                if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                    revert with 0, 17
                                if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                            else:
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
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                else:
                                    if treasure and 10^12 > -1 / treasure:
                                        revert with 0, 17
                                    if not treasure:
                                        revert with 0, 18
                                    if 10^12 * treasure / treasure != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                        else:
                            if poolInfo[arg1].field_1024 and 2 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / poolInfo[arg1].field_1024:
                                revert with 0, 17
                            if not poolInfo[arg1].field_1024:
                                revert with 0, 18
                            if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] / poolInfo[arg1].field_1024 != 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                if block.number - poolInfo[arg1].field_256:
                                    if block.number - poolInfo[arg1].field_256 and 0 > -1 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_256:
                                        revert with 0, 18
                                    if 0 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                if 0 <= treasure:
                                    if 0 < treasure:
                                        if 0 > treasure:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if treasure < 0:
                                            revert with 0, 17
                                        if allocated > -1:
                                            revert with 0, 17
                                        if allocated < allocated:
                                            revert with 0, 'SafeMath: addition overflow'
                                        emit Mint(address(this.address), 0);
                                    else:
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
                                    if poolInfo[arg1].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not poolInfo[arg1].field_1024:
                                        revert with 0, 18
                                    if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                        revert with 0, 17
                                    if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                else:
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
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                    else:
                                        if treasure and 10^12 > -1 / treasure:
                                            revert with 0, 17
                                        if not treasure:
                                            revert with 0, 18
                                        if 10^12 * treasure / treasure != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                            else:
                                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] and poolInfo[arg1].field_0 > -1 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 17
                                if not poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 18
                                if poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] != poolInfo[arg1].field_0:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not block.number - poolInfo[arg1].field_256:
                                    if 0 <= treasure:
                                        if 0 < treasure:
                                            if 0 > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < 0:
                                                revert with 0, 17
                                            if allocated > -1:
                                                revert with 0, 17
                                            if allocated < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            emit Mint(address(this.address), 0);
                                        else:
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
                                        if poolInfo[arg1].field_1024 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not poolInfo[arg1].field_1024:
                                            revert with 0, 18
                                        if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                            revert with 0, 17
                                        if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                    else:
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
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                                else:
                                    if block.number - poolInfo[arg1].field_256 and poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600 > -1 / block.number - poolInfo[arg1].field_256:
                                        revert with 0, 17
                                    if not block.number - poolInfo[arg1].field_256:
                                        revert with 0, 18
                                    if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / block.number - poolInfo[arg1].field_256 != poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) <= treasure:
                                        if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) < treasure:
                                            if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) > treasure:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if treasure < (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 17
                                            treasure = treasure - (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) + (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)
                                            if allocated > !((block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)):
                                                revert with 0, 17
                                            if allocated + (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) < allocated:
                                                revert with 0, 'SafeMath: addition overflow'
                                            allocated = allocated + (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600)
                                            emit Mint(address(this.address), (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600));
                                        else:
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
                                        if not (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) and 10^12 > -1 / (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 17
                                            if not (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600):
                                                revert with 0, 18
                                            if (10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / (block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + ((10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += (10^12 * block.number * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) - (10^12 * poolInfo[arg1].field_256 * poolInfo[arg1].field_1024 * 2 * ext_call.return_data[0] / ext_call.return_data[0] * poolInfo[arg1].field_0 / 100 / 2920 * 3600) / poolInfo[arg1].field_1024
                                    else:
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
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(0 / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 0 / poolInfo[arg1].field_1024
                                        else:
                                            if treasure and 10^12 > -1 / treasure:
                                                revert with 0, 17
                                            if not treasure:
                                                revert with 0, 18
                                            if 10^12 * treasure / treasure != 10^12:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if poolInfo[arg1].field_1024 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not poolInfo[arg1].field_1024:
                                                revert with 0, 18
                                            if poolInfo[arg1].field_512 > !(10^12 * treasure / poolInfo[arg1].field_1024):
                                                revert with 0, 17
                                            if poolInfo[arg1].field_512 + (10^12 * treasure / poolInfo[arg1].field_1024) < poolInfo[arg1].field_512:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_512 += 10^12 * treasure / poolInfo[arg1].field_1024
                poolInfo[arg1].field_256 = block.number
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][msg.sender].field_256:
                        revert with 0, 17
                    if -userInfo[arg1][msg.sender].field_256 > 0:
                        if -userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 < -userInfo[arg1][msg.sender].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][msg.sender].field_0:
                                revert with 0, 18
                            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: multiplication overflow'
                            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if userInfo[arg1][msg.sender].field_512 > 0:
                            if -userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                                revert with 0, 17
                            if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 < -userInfo[arg1][msg.sender].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                                revert with 0, 17
                            totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                            userInfo[arg1][msg.sender].field_512 = 0
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 17
                                if not userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 18
                                if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            if -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                        revert with 0, 17
                    if not userInfo[arg1][msg.sender].field_0:
                        revert with 0, 18
                    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][msg.sender].field_256 > userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12 < userInfo[arg1][msg.sender].field_256:
                        revert with 0, 17
                    if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > 0:
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        if userInfo[arg1][msg.sender].field_512 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                            revert with 0, 17
                        totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                        userInfo[arg1][msg.sender].field_512 = 0
                        if not userInfo[arg1][msg.sender].field_0:
                            userInfo[arg1][msg.sender].field_256 = 0
                        else:
                            if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                revert with 0, 17
                            if not userInfo[arg1][msg.sender].field_0:
                                revert with 0, 18
                            if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                revert with 0, 'SafeMath: multiplication overflow'
                            userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                        else:
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if userInfo[arg1][msg.sender].field_512 > 0:
                            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 > !userInfo[arg1][msg.sender].field_512:
                                revert with 0, 17
                            if userInfo[arg1][msg.sender].field_512 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if userInfo[arg1][msg.sender].field_512 > totalLockedUpRewards:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalLockedUpRewards < userInfo[arg1][msg.sender].field_512:
                                revert with 0, 17
                            totalLockedUpRewards -= userInfo[arg1][msg.sender].field_512
                            userInfo[arg1][msg.sender].field_512 = 0
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_512 > -1 / userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 17
                                if not userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 18
                                if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12
                            require ext_code.size(tokenAddress)
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenAddress)
                            if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512 <= ext_call.return_data[0]:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_512 / 10^12) - userInfo[arg1][msg.sender].field_256 + userInfo[arg1][msg.sender].field_512
                            else:
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor1 = 1
}



}
