contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 10


address owner;
address sub_734123ecAddress;
address devaddr;
uint32 stor3;
address sub_ff2691baAddress;
uint256 stor3;
address burnAddress;
uint256 bonusEndBlock;
uint256 sub_3a68932d;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;

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

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function sub_3a68932d(?) payable {
    return sub_3a68932d
}

function startBlock() payable {
    return startBlock
}

function burnAddress() payable {
    return burnAddress
}

function sub_734123ec(?) payable {
    return sub_734123ecAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function devaddr() payable {
    return devaddr
}

function sub_ff2691ba(?) payable {
    return address(sub_ff2691baAddress)
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devaddr != msg.sender:
        revert with 0, 'dev: wanna smoke some?'
    devaddr = arg1
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
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_1be2a1f4(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    require ext_code.size(address(sub_ff2691baAddress))
    call address(sub_ff2691baAddress).0xbc645319 with:
         gas gas_remaining wei
        args arg2, poolInfo[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_ff2691baAddress))
    call address(sub_ff2691baAddress).0x5c584569 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1356caea: ext_call.return_data[0], arg2
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - arg1:
            return 0
        require arg2 - arg1
        if (10 * arg2) - (10 * arg1) / arg2 - arg1 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((10 * arg2) - (10 * arg1))
    if arg1 >= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if bonusEndBlock > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - arg1:
        if arg2 - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (arg2 - bonusEndBlock)
    require bonusEndBlock - arg1
    if (10 * bonusEndBlock) - (10 * arg1) / bonusEndBlock - arg1 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (9 * bonusEndBlock) + arg2 < 10 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    return ((9 * bonusEndBlock) - (10 * arg1) + arg2)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}

function sub_787b487e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(sub_ff2691baAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
    call poolInfo[arg1].field_0 with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    require ext_code.size(address(sub_ff2691baAddress))
    call address(sub_ff2691baAddress).0x3e1f37e8 with:
         gas gas_remaining wei
        args poolInfo[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args burnAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (10 * block.number) - (10 * poolInfo[arg1].field_512)
                        if (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != sub_3a68932d:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d)
                            if (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args burnAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d) / block.number - poolInfo[arg1].field_512 != sub_3a68932d:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d)
                            if (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) / block.number - bonusEndBlock != sub_3a68932d:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d)
                                if (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnAddress, (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number
                            if (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != sub_3a68932d:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d)
                                if (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnAddress, (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function sub_d34008fa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (10 * block.number) - (10 * poolInfo[arg1].field_512)
        if (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != sub_3a68932d:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d)
        if (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d) / block.number - poolInfo[arg1].field_512 != sub_3a68932d:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d)
        if (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - poolInfo[arg1].field_512:
        if block.number - bonusEndBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not block.number - bonusEndBlock:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - bonusEndBlock
        if (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) / block.number - bonusEndBlock != sub_3a68932d:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d)
        if (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require bonusEndBlock - poolInfo[arg1].field_512
    if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number
    if (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != sub_3a68932d:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d)
    if (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 7
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        if block.number <= bonusEndBlock:
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 30
            mem[_639 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _642 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_642 + idx + 68] = mem[_639 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_642 + 68] = mem[_642 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _642 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _690 = mem[64]
                mem[64] = mem[64] + 64
                mem[_690] = 26
                mem[_690 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _699 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_699 + idx + 68] = mem[_690 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_699 + 68] = mem[_699 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _699 + -mem[64] + 100
                require totalAllocPoint
                _733 = mem[64]
                mem[64] = mem[64] + 64
                mem[_733] = 26
                mem[_733 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _809 = mem[64]
                mem[64] = mem[64] + 64
                mem[_809] = 26
                mem[_809 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _953 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_953] = 26
                    mem[_953 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _979 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_979 + idx + 68] = mem[_953 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_979 + 68] = mem[_979 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _979 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_978] = 26
                mem[_978 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1017 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1017 + idx + 68] = mem[_978 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1017 + 68] = mem[_1017 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1017 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                _698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_698] = 26
                mem[_698 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _715 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_715 + idx + 68] = mem[_698 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_715 + 68] = mem[_715 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _715 + -mem[64] + 100
                require totalAllocPoint
                _745 = mem[64]
                mem[64] = mem[64] + 64
                mem[_745] = 26
                mem[_745 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _830 = mem[64]
                mem[64] = mem[64] + 64
                mem[_830] = 26
                mem[_830 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_977] = 26
                    mem[_977 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1014 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1014 + idx + 68] = mem[_977 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1014 + 68] = mem[_1014 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1014 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1013] = 26
                mem[_1013 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1056 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1056 + idx + 68] = mem[_1013 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1056 + 68] = mem[_1056 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1056 + -mem[64] + 100
            require (10 * block.number) - (10 * poolInfo[idx].field_512)
            if (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) / (10 * block.number) - (10 * poolInfo[idx].field_512) != sub_3a68932d:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d):
                _714 = mem[64]
                mem[64] = mem[64] + 64
                mem[_714] = 26
                mem[_714 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _729 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_729 + idx + 68] = mem[_714 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_729 + 68] = mem[_729 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _729 + -mem[64] + 100
                require totalAllocPoint
                _756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_756] = 26
                mem[_756 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_845] = 26
                mem[_845 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1012 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1012] = 26
                    mem[_1012 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1053 + idx + 68] = mem[_1012 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1053 + 68] = mem[_1053 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1053 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1052 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1052] = 26
                mem[_1052 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1090 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1090 + idx + 68] = mem[_1052 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1090 + 68] = mem[_1090 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1090 + -mem[64] + 100
            require (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d)
            if (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _728 = mem[64]
            mem[64] = mem[64] + 64
            mem[_728] = 26
            mem[_728 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _741 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_741 + idx + 68] = mem[_728 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_741 + 68] = mem[_741 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _741 + -mem[64] + 100
            require totalAllocPoint
            _774 = mem[64]
            mem[64] = mem[64] + 64
            mem[_774] = 26
            mem[_774 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _861 = mem[64]
            mem[64] = mem[64] + 64
            mem[_861] = 26
            mem[_861 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args burnAddress, (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                _1051 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1051] = 26
                mem[_1051 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1087 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1087 + idx + 68] = mem[_1051 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1087 + 68] = mem[_1087 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1087 + -mem[64] + 100
            require (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1086 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1086] = 26
            mem[_1086 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1115 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1115 + idx + 68] = mem[_1086 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1115 + 68] = mem[_1115 + 74 len 26]
            revert with memory
              from mem[64]
               len _1115 + -mem[64] + 100
        if poolInfo[idx].field_512 >= bonusEndBlock:
            _641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_641] = 30
            mem[_641 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _648 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_648 + idx + 68] = mem[_641 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_648 + 68] = mem[_648 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _648 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _679 = mem[64]
                mem[64] = mem[64] + 64
                mem[_679] = 26
                mem[_679 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _687 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_687 + idx + 68] = mem[_679 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_687 + 68] = mem[_687 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _687 + -mem[64] + 100
                require totalAllocPoint
                _706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_706] = 26
                mem[_706 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_773] = 26
                mem[_773 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _924 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_924] = 26
                    mem[_924 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _939 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_939 + idx + 68] = mem[_924 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_939 + 68] = mem[_939 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _939 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _938 = mem[64]
                mem[64] = mem[64] + 64
                mem[_938] = 26
                mem[_938 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _962 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_962 + idx + 68] = mem[_938 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_962 + 68] = mem[_962 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _962 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d) / block.number - poolInfo[idx].field_512 != sub_3a68932d:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d):
                _686 = mem[64]
                mem[64] = mem[64] + 64
                mem[_686] = 26
                mem[_686 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _692 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_692 + idx + 68] = mem[_686 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_692 + 68] = mem[_692 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _692 + -mem[64] + 100
                require totalAllocPoint
                _720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_720] = 26
                mem[_720 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _792 = mem[64]
                mem[64] = mem[64] + 64
                mem[_792] = 26
                mem[_792 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_937] = 26
                    mem[_937 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _959 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_959 + idx + 68] = mem[_937 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_959 + 68] = mem[_959 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _959 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _958 = mem[64]
                mem[64] = mem[64] + 64
                mem[_958] = 26
                mem[_958 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _993 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_993 + idx + 68] = mem[_958 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_993 + 68] = mem[_993 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _993 + -mem[64] + 100
            require (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d)
            if (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _691 = mem[64]
            mem[64] = mem[64] + 64
            mem[_691] = 26
            mem[_691 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _702 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_702 + idx + 68] = mem[_691 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_702 + 68] = mem[_702 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _702 + -mem[64] + 100
            require totalAllocPoint
            _735 = mem[64]
            mem[64] = mem[64] + 64
            mem[_735] = 26
            mem[_735 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _814 = mem[64]
            mem[64] = mem[64] + 64
            mem[_814] = 26
            mem[_814 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args burnAddress, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                _957 = mem[64]
                mem[64] = mem[64] + 64
                mem[_957] = 26
                mem[_957 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _990 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_990 + idx + 68] = mem[_957 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_990 + 68] = mem[_990 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _990 + -mem[64] + 100
            require (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _989 = mem[64]
            mem[64] = mem[64] + 64
            mem[_989] = 26
            mem[_989 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1029 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1029 + idx + 68] = mem[_989 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1029 + 68] = mem[_1029 + 74 len 26]
            revert with memory
              from mem[64]
               len _1029 + -mem[64] + 100
        _640 = mem[64]
        mem[64] = mem[64] + 64
        mem[_640] = 30
        mem[_640 + 32] = 'SafeMath: subtraction overflow'
        if bonusEndBlock > block.number:
            _645 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_645 + idx + 68] = mem[_640 + idx + 32]
                idx = idx + 32
                continue 
            mem[_645 + 68] = mem[_645 + 70 len 30]
            revert with memory
              from mem[64]
               len _645 + -mem[64] + 100
        _656 = mem[64]
        mem[64] = mem[64] + 64
        mem[_656] = 30
        mem[_656 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > bonusEndBlock:
            _664 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_664 + idx + 68] = mem[_656 + idx + 32]
                idx = idx + 32
                continue 
            mem[_664 + 68] = mem[_664 + 70 len 30]
            revert with memory
              from mem[64]
               len _664 + -mem[64] + 100
        if not bonusEndBlock - poolInfo[idx].field_512:
            if block.number - bonusEndBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not block.number - bonusEndBlock:
                _747 = mem[64]
                mem[64] = mem[64] + 64
                mem[_747] = 26
                mem[_747 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_760 + idx + 68] = mem[_747 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_760 + 68] = mem[_760 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _760 + -mem[64] + 100
                require totalAllocPoint
                _803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_803] = 26
                mem[_803 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_886] = 26
                mem[_886 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1098] = 26
                    mem[_1098 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1125 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1125 + idx + 68] = mem[_1098 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1125 + 68] = mem[_1125 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1125 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1124] = 26
                mem[_1124 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1153 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1153 + idx + 68] = mem[_1124 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1153 + 68] = mem[_1153 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1153 + -mem[64] + 100
            require block.number - bonusEndBlock
            if (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) / block.number - bonusEndBlock != sub_3a68932d:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d):
                _759 = mem[64]
                mem[64] = mem[64] + 64
                mem[_759] = 26
                mem[_759 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _781 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_781 + idx + 68] = mem[_759 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_781 + 68] = mem[_781 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _781 + -mem[64] + 100
                require totalAllocPoint
                _823 = mem[64]
                mem[64] = mem[64] + 64
                mem[_823] = 26
                mem[_823 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _906 = mem[64]
                mem[64] = mem[64] + 64
                mem[_906] = 26
                mem[_906 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1123 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1123] = 26
                    mem[_1123 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1150 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1150 + idx + 68] = mem[_1123 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1150 + 68] = mem[_1150 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1150 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1149] = 26
                mem[_1149 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1181 + idx + 68] = mem[_1149 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1181 + 68] = mem[_1181 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1181 + -mem[64] + 100
            require (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d)
            if (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _780 = mem[64]
            mem[64] = mem[64] + 64
            mem[_780] = 26
            mem[_780 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _799 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_799 + idx + 68] = mem[_780 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_799 + 68] = mem[_799 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _799 + -mem[64] + 100
            require totalAllocPoint
            _839 = mem[64]
            mem[64] = mem[64] + 64
            mem[_839] = 26
            mem[_839 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _923 = mem[64]
            mem[64] = mem[64] + 64
            mem[_923] = 26
            mem[_923 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args burnAddress, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                _1148 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1148] = 26
                mem[_1148 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1178 + idx + 68] = mem[_1148 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1178 + 68] = mem[_1178 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1178 + -mem[64] + 100
            require (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1177 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1177] = 26
            mem[_1177 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1207 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1207 + idx + 68] = mem[_1177 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1207 + 68] = mem[_1207 + 74 len 26]
            revert with memory
              from mem[64]
               len _1207 + -mem[64] + 100
        require bonusEndBlock - poolInfo[idx].field_512
        if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
            revert with 0, 'SafeMath: addition overflow'
        if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
            _758 = mem[64]
            mem[64] = mem[64] + 64
            mem[_758] = 26
            mem[_758 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _777 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_777 + idx + 68] = mem[_758 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_777 + 68] = mem[_777 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _777 + -mem[64] + 100
            require totalAllocPoint
            _820 = mem[64]
            mem[64] = mem[64] + 64
            mem[_820] = 26
            mem[_820 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_904] = 26
            mem[_904 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args burnAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _1122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1122] = 26
                mem[_1122 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1145 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1145 + idx + 68] = mem[_1122 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1145 + 68] = mem[_1145 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1145 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1144 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1144] = 26
            mem[_1144 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1173 + idx + 68] = mem[_1144 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1173 + 68] = mem[_1173 + 74 len 26]
            revert with memory
              from mem[64]
               len _1173 + -mem[64] + 100
        require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
        if (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != sub_3a68932d:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d):
            _776 = mem[64]
            mem[64] = mem[64] + 64
            mem[_776] = 26
            mem[_776 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _795 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_795 + idx + 68] = mem[_776 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_795 + 68] = mem[_795 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _795 + -mem[64] + 100
            require totalAllocPoint
            _837 = mem[64]
            mem[64] = mem[64] + 64
            mem[_837] = 26
            mem[_837 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _922 = mem[64]
            mem[64] = mem[64] + 64
            mem[_922] = 26
            mem[_922 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args burnAddress, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not 0 / totalAllocPoint:
                _1143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1143] = 26
                mem[_1143 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1170 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1170 + idx + 68] = mem[_1143 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1170 + 68] = mem[_1170 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1170 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1169] = 26
            mem[_1169 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1201 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1201 + idx + 68] = mem[_1169 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1201 + 68] = mem[_1201 + 74 len 26]
            revert with memory
              from mem[64]
               len _1201 + -mem[64] + 100
        require (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d)
        if (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _794 = mem[64]
        mem[64] = mem[64] + 64
        mem[_794] = 26
        mem[_794 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _816 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_816 + idx + 68] = mem[_794 + idx + 32]
                idx = idx + 32
                continue 
            mem[_816 + 68] = mem[_816 + 74 len 26]
            revert with memory
              from mem[64]
               len _816 + -mem[64] + 100
        require totalAllocPoint
        _856 = mem[64]
        mem[64] = mem[64] + 64
        mem[_856] = 26
        mem[_856 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_734123ecAddress)
        call sub_734123ecAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devaddr, (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _936 = mem[64]
        mem[64] = mem[64] + 64
        mem[_936] = 26
        mem[_936 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_734123ecAddress)
        call sub_734123ecAddress.0x40c10f19 with:
             gas gas_remaining wei
            args burnAddress, (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_734123ecAddress)
        call sub_734123ecAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
            _1168 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1168] = 26
            mem[_1168 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1198 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1198 + idx + 68] = mem[_1168 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1198 + 68] = mem[_1198 + 74 len 26]
            revert with memory
              from mem[64]
               len _1198 + -mem[64] + 100
        require (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1197 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1197] = 26
        mem[_1197 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _1228 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_1228 + idx + 68] = mem[_1197 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1228 + 68] = mem[_1228 + 74 len 26]
        revert with memory
          from mem[64]
           len _1228 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_680] = 30
                mem[_680 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _684 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_684 + idx + 68] = mem[_680 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_684 + 68] = mem[_684 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _684 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_732] = 26
                    mem[_732 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _741 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_741 + idx + 68] = mem[_732 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_741 + 68] = mem[_741 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _741 + -mem[64] + 100
                    require totalAllocPoint
                    _775 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_775] = 26
                    mem[_775 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_851] = 26
                    mem[_851 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _995 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_995] = 26
                        mem[_995 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1021 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1021 + idx + 68] = mem[_995 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1021 + 68] = mem[_1021 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1021 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1020 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1020] = 26
                    mem[_1020 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1059 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1059 + idx + 68] = mem[_1020 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1059 + 68] = mem[_1059 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1059 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                    _740 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_740] = 26
                    mem[_740 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_757 + idx + 68] = mem[_740 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_757 + 68] = mem[_757 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _757 + -mem[64] + 100
                    require totalAllocPoint
                    _787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_787] = 26
                    mem[_787 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_872] = 26
                    mem[_872 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1019] = 26
                        mem[_1019 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1056 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1056 + idx + 68] = mem[_1019 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1056 + 68] = mem[_1056 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1056 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1055] = 26
                    mem[_1055 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1098 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1098 + idx + 68] = mem[_1055 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1098 + 68] = mem[_1098 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1098 + -mem[64] + 100
                require (10 * block.number) - (10 * poolInfo[idx].field_512)
                if (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) / (10 * block.number) - (10 * poolInfo[idx].field_512) != sub_3a68932d:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d):
                    _756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_756] = 26
                    mem[_756 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _771 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_771 + idx + 68] = mem[_756 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_771 + 68] = mem[_771 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _771 + -mem[64] + 100
                    require totalAllocPoint
                    _798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_798] = 26
                    mem[_798 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _887 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_887] = 26
                    mem[_887 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1054 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1054] = 26
                        mem[_1054 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1095 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1095 + idx + 68] = mem[_1054 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1095 + 68] = mem[_1095 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1095 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1094 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1094] = 26
                    mem[_1094 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1132 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1132 + idx + 68] = mem[_1094 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1132 + 68] = mem[_1132 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1132 + -mem[64] + 100
                require (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d)
                if (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _770 = mem[64]
                mem[64] = mem[64] + 64
                mem[_770] = 26
                mem[_770 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _783 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_783 + idx + 68] = mem[_770 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_783 + 68] = mem[_783 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _783 + -mem[64] + 100
                require totalAllocPoint
                _816 = mem[64]
                mem[64] = mem[64] + 64
                mem[_816] = 26
                mem[_816 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _903 = mem[64]
                mem[64] = mem[64] + 64
                mem[_903] = 26
                mem[_903 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                    _1093 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1093] = 26
                    mem[_1093 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1129 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1129 + idx + 68] = mem[_1093 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1129 + 68] = mem[_1129 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1129 + -mem[64] + 100
                require (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1128] = 26
                mem[_1128 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1157 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1157 + idx + 68] = mem[_1128 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1157 + 68] = mem[_1157 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1157 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_682] = 30
                mem[_682 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _690 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_690 + idx + 68] = mem[_682 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_690 + 68] = mem[_690 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _690 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_721] = 26
                    mem[_721 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _729 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_729 + idx + 68] = mem[_721 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_729 + 68] = mem[_729 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _729 + -mem[64] + 100
                    require totalAllocPoint
                    _748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_748] = 26
                    mem[_748 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _815 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_815] = 26
                    mem[_815 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_966] = 26
                        mem[_966 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _981 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_981 + idx + 68] = mem[_966 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_981 + 68] = mem[_981 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _981 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_980] = 26
                    mem[_980 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1004 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1004 + idx + 68] = mem[_980 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1004 + 68] = mem[_1004 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1004 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d) / block.number - poolInfo[idx].field_512 != sub_3a68932d:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d):
                    _728 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_728] = 26
                    mem[_728 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _734 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_734 + idx + 68] = mem[_728 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_734 + 68] = mem[_734 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _734 + -mem[64] + 100
                    require totalAllocPoint
                    _762 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_762] = 26
                    mem[_762 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 26
                    mem[_834 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _979 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_979] = 26
                        mem[_979 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1001 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1001 + idx + 68] = mem[_979 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1001 + 68] = mem[_1001 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1001 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1000] = 26
                    mem[_1000 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1035 + idx + 68] = mem[_1000 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1035 + 68] = mem[_1035 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1035 + -mem[64] + 100
                require (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d)
                if (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _733 = mem[64]
                mem[64] = mem[64] + 64
                mem[_733] = 26
                mem[_733 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_744 + idx + 68] = mem[_733 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_744 + 68] = mem[_744 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _744 + -mem[64] + 100
                require totalAllocPoint
                _777 = mem[64]
                mem[64] = mem[64] + 64
                mem[_777] = 26
                mem[_777 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _856 = mem[64]
                mem[64] = mem[64] + 64
                mem[_856] = 26
                mem[_856 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                    _999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_999] = 26
                    mem[_999 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1032 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1032 + idx + 68] = mem[_999 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1032 + 68] = mem[_1032 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1032 + -mem[64] + 100
                require (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1031 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1031] = 26
                mem[_1031 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1071 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1071 + idx + 68] = mem[_1031 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1071 + 68] = mem[_1071 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1071 + -mem[64] + 100
            _681 = mem[64]
            mem[64] = mem[64] + 64
            mem[_681] = 30
            mem[_681 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _687 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_687 + idx + 68] = mem[_681 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_687 + 68] = mem[_687 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _687 + -mem[64] + 100
            _698 = mem[64]
            mem[64] = mem[64] + 64
            mem[_698] = 30
            mem[_698 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _706 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_706 + idx + 68] = mem[_698 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_706 + 68] = mem[_706 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _706 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _789 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_789] = 26
                    mem[_789 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _802 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_802 + idx + 68] = mem[_789 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_802 + 68] = mem[_802 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _802 + -mem[64] + 100
                    require totalAllocPoint
                    _845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_845] = 26
                    mem[_845 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_928] = 26
                    mem[_928 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1140 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1140] = 26
                        mem[_1140 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1167 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1167 + idx + 68] = mem[_1140 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1167 + 68] = mem[_1167 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1167 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1166 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1166] = 26
                    mem[_1166 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1195 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1195 + idx + 68] = mem[_1166 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1195 + 68] = mem[_1195 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1195 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) / block.number - bonusEndBlock != sub_3a68932d:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d):
                    _801 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_801] = 26
                    mem[_801 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _823 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_823 + idx + 68] = mem[_801 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_823 + 68] = mem[_823 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _823 + -mem[64] + 100
                    require totalAllocPoint
                    _865 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_865] = 26
                    mem[_865 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _948 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_948] = 26
                    mem[_948 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1165 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1165] = 26
                        mem[_1165 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1192 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1192 + idx + 68] = mem[_1165 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1192 + 68] = mem[_1192 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1192 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1191 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1191] = 26
                    mem[_1191 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1223 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1223 + idx + 68] = mem[_1191 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1223 + 68] = mem[_1223 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1223 + -mem[64] + 100
                require (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d)
                if (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _822 = mem[64]
                mem[64] = mem[64] + 64
                mem[_822] = 26
                mem[_822 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _841 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_841 + idx + 68] = mem[_822 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_841 + 68] = mem[_841 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _841 + -mem[64] + 100
                require totalAllocPoint
                _881 = mem[64]
                mem[64] = mem[64] + 64
                mem[_881] = 26
                mem[_881 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _965 = mem[64]
                mem[64] = mem[64] + 64
                mem[_965] = 26
                mem[_965 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                    _1190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1190] = 26
                    mem[_1190 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1220 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1220 + idx + 68] = mem[_1190 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1220 + 68] = mem[_1220 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1220 + -mem[64] + 100
                require (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1219] = 26
                mem[_1219 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1249 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1249 + idx + 68] = mem[_1219 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1249 + 68] = mem[_1249 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1249 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                _800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_800] = 26
                mem[_800 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_819 + idx + 68] = mem[_800 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_819 + 68] = mem[_819 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _819 + -mem[64] + 100
                require totalAllocPoint
                _862 = mem[64]
                mem[64] = mem[64] + 64
                mem[_862] = 26
                mem[_862 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _946 = mem[64]
                mem[64] = mem[64] + 64
                mem[_946] = 26
                mem[_946 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1164] = 26
                    mem[_1164 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1187 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1187 + idx + 68] = mem[_1164 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1187 + 68] = mem[_1187 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1187 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1186] = 26
                mem[_1186 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1215 + idx + 68] = mem[_1186 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1215 + 68] = mem[_1215 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1215 + -mem[64] + 100
            require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
            if (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != sub_3a68932d:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d):
                _818 = mem[64]
                mem[64] = mem[64] + 64
                mem[_818] = 26
                mem[_818 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _837 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_837 + idx + 68] = mem[_818 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_837 + 68] = mem[_837 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _837 + -mem[64] + 100
                require totalAllocPoint
                _879 = mem[64]
                mem[64] = mem[64] + 64
                mem[_879] = 26
                mem[_879 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _964 = mem[64]
                mem[64] = mem[64] + 64
                mem[_964] = 26
                mem[_964 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1185] = 26
                    mem[_1185 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1212 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1212 + idx + 68] = mem[_1185 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1212 + 68] = mem[_1212 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1212 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1211] = 26
                mem[_1211 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1243 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1243 + idx + 68] = mem[_1211 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1243 + 68] = mem[_1243 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1243 + -mem[64] + 100
            require (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d)
            if (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _836 = mem[64]
            mem[64] = mem[64] + 64
            mem[_836] = 26
            mem[_836 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _858 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_858 + idx + 68] = mem[_836 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_858 + 68] = mem[_858 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _858 + -mem[64] + 100
            require totalAllocPoint
            _898 = mem[64]
            mem[64] = mem[64] + 64
            mem[_898] = 26
            mem[_898 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _978 = mem[64]
            mem[64] = mem[64] + 64
            mem[_978] = 26
            mem[_978 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args burnAddress, (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                _1210 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1210] = 26
                mem[_1210 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1240 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1240 + idx + 68] = mem[_1210 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1240 + 68] = mem[_1240 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1240 + -mem[64] + 100
            require (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1239] = 26
            mem[_1239 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1270 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1270 + idx + 68] = mem[_1239 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1270 + 68] = mem[_1270 + 74 len 26]
            revert with memory
              from mem[64]
               len _1270 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, uint256 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 7
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            if block.number <= bonusEndBlock:
                _695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_695] = 30
                mem[_695 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _698 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_698 + idx + 68] = mem[_695 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_698 + 68] = mem[_698 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _698 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _746 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_746] = 26
                    mem[_746 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _755 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_755 + idx + 68] = mem[_746 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_755 + 68] = mem[_755 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _755 + -mem[64] + 100
                    require totalAllocPoint
                    _789 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_789] = 26
                    mem[_789 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _865 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_865] = 26
                    mem[_865 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1009] = 26
                        mem[_1009 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1035 + idx + 68] = mem[_1009 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1035 + 68] = mem[_1035 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1035 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1034 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1034] = 26
                    mem[_1034 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1073 + idx + 68] = mem[_1034 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1073 + 68] = mem[_1073 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1073 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (10 * block.number) - (10 * poolInfo[idx].field_512) / block.number - poolInfo[idx].field_512 != 10:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number) - (10 * poolInfo[idx].field_512):
                    _754 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_754] = 26
                    mem[_754 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _771 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_771 + idx + 68] = mem[_754 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_771 + 68] = mem[_771 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _771 + -mem[64] + 100
                    require totalAllocPoint
                    _801 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_801] = 26
                    mem[_801 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _886 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_886] = 26
                    mem[_886 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1033 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1033] = 26
                        mem[_1033 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1070 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1070 + idx + 68] = mem[_1033 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1070 + 68] = mem[_1070 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1070 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1069] = 26
                    mem[_1069 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1112 + idx + 68] = mem[_1069 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1112 + 68] = mem[_1112 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1112 + -mem[64] + 100
                require (10 * block.number) - (10 * poolInfo[idx].field_512)
                if (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) / (10 * block.number) - (10 * poolInfo[idx].field_512) != sub_3a68932d:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d):
                    _770 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_770] = 26
                    mem[_770 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _785 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_785 + idx + 68] = mem[_770 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_785 + 68] = mem[_785 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _785 + -mem[64] + 100
                    require totalAllocPoint
                    _812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_812] = 26
                    mem[_812 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_901] = 26
                    mem[_901 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1068 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1068] = 26
                        mem[_1068 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1109 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1109 + idx + 68] = mem[_1068 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1109 + 68] = mem[_1109 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1109 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1108 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1108] = 26
                    mem[_1108 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1146 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1146 + idx + 68] = mem[_1108 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1146 + 68] = mem[_1146 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1146 + -mem[64] + 100
                require (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d)
                if (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / (10 * block.number * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _784 = mem[64]
                mem[64] = mem[64] + 64
                mem[_784] = 26
                mem[_784 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _797 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_797 + idx + 68] = mem[_784 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_797 + 68] = mem[_797 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _797 + -mem[64] + 100
                require totalAllocPoint
                _830 = mem[64]
                mem[64] = mem[64] + 64
                mem[_830] = 26
                mem[_830 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _917 = mem[64]
                mem[64] = mem[64] + 64
                mem[_917] = 26
                mem[_917 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                    _1107 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1107] = 26
                    mem[_1107 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1143 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1143 + idx + 68] = mem[_1107 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1143 + 68] = mem[_1143 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1143 + -mem[64] + 100
                require (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1142] = 26
                mem[_1142 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (10 * block.number * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1171 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1171 + idx + 68] = mem[_1142 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1171 + 68] = mem[_1171 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1171 + -mem[64] + 100
            if poolInfo[idx].field_512 >= bonusEndBlock:
                _697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_697] = 30
                mem[_697 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _704 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_704 + idx + 68] = mem[_697 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_704 + 68] = mem[_704 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _704 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_512:
                    _735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_735] = 26
                    mem[_735 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_743 + idx + 68] = mem[_735 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_743 + 68] = mem[_743 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _743 + -mem[64] + 100
                    require totalAllocPoint
                    _762 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_762] = 26
                    mem[_762 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_829] = 26
                    mem[_829 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _980 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_980] = 26
                        mem[_980 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _995 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_995 + idx + 68] = mem[_980 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_995 + 68] = mem[_995 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _995 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_994] = 26
                    mem[_994 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1018 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1018 + idx + 68] = mem[_994 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1018 + 68] = mem[_1018 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1018 + -mem[64] + 100
                require block.number - poolInfo[idx].field_512
                if (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d) / block.number - poolInfo[idx].field_512 != sub_3a68932d:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d):
                    _742 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_742] = 26
                    mem[_742 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _748 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_748 + idx + 68] = mem[_742 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_748 + 68] = mem[_748 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _748 + -mem[64] + 100
                    require totalAllocPoint
                    _776 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_776] = 26
                    mem[_776 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_848] = 26
                    mem[_848 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _993 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_993] = 26
                        mem[_993 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1015 + idx + 68] = mem[_993 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1015 + 68] = mem[_1015 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1015 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1014] = 26
                    mem[_1014 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1049 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1049 + idx + 68] = mem[_1014 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1049 + 68] = mem[_1049 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1049 + -mem[64] + 100
                require (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d)
                if (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / (block.number * sub_3a68932d) - (poolInfo[idx].field_512 * sub_3a68932d) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _747 = mem[64]
                mem[64] = mem[64] + 64
                mem[_747] = 26
                mem[_747 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _758 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_758 + idx + 68] = mem[_747 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_758 + 68] = mem[_758 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _758 + -mem[64] + 100
                require totalAllocPoint
                _791 = mem[64]
                mem[64] = mem[64] + 64
                mem[_791] = 26
                mem[_791 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _870 = mem[64]
                mem[64] = mem[64] + 64
                mem[_870] = 26
                mem[_870 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                    _1013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1013] = 26
                    mem[_1013 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1046 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1046 + idx + 68] = mem[_1013 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1046 + 68] = mem[_1046 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1046 + -mem[64] + 100
                require (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1045 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1045] = 26
                mem[_1045 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1085 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1085 + idx + 68] = mem[_1045 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1085 + 68] = mem[_1085 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1085 + -mem[64] + 100
            _696 = mem[64]
            mem[64] = mem[64] + 64
            mem[_696] = 30
            mem[_696 + 32] = 'SafeMath: subtraction overflow'
            if bonusEndBlock > block.number:
                _701 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_701 + idx + 68] = mem[_696 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_701 + 68] = mem[_701 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _701 + -mem[64] + 100
            _712 = mem[64]
            mem[64] = mem[64] + 64
            mem[_712] = 30
            mem[_712 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > bonusEndBlock:
                _720 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_720 + idx + 68] = mem[_712 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_720 + 68] = mem[_720 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _720 + -mem[64] + 100
            if not bonusEndBlock - poolInfo[idx].field_512:
                if block.number - bonusEndBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not block.number - bonusEndBlock:
                    _803 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_803] = 26
                    mem[_803 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _816 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_816 + idx + 68] = mem[_803 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_816 + 68] = mem[_816 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _816 + -mem[64] + 100
                    require totalAllocPoint
                    _859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_859] = 26
                    mem[_859 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_942] = 26
                    mem[_942 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1154] = 26
                        mem[_1154 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1181 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1181 + idx + 68] = mem[_1154 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1181 + 68] = mem[_1181 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1181 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1180 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1180] = 26
                    mem[_1180 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1209 + idx + 68] = mem[_1180 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1209 + 68] = mem[_1209 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1209 + -mem[64] + 100
                require block.number - bonusEndBlock
                if (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) / block.number - bonusEndBlock != sub_3a68932d:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d):
                    _815 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_815] = 26
                    mem[_815 + 32] = 'SafeMath: division by zero'
                    if totalAllocPoint <= 0:
                        _837 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_837 + idx + 68] = mem[_815 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_837 + 68] = mem[_837 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _837 + -mem[64] + 100
                    require totalAllocPoint
                    _879 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_879] = 26
                    mem[_879 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_962] = 26
                    mem[_962 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        _1179 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1179] = 26
                        mem[_1179 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1206 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1206 + idx + 68] = mem[_1179 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1206 + 68] = mem[_1206 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1206 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1205] = 26
                    mem[_1205 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1237 + idx + 68] = mem[_1205 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1237 + 68] = mem[_1237 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1237 + -mem[64] + 100
                require (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d)
                if (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _836 = mem[64]
                mem[64] = mem[64] + 64
                mem[_836] = 26
                mem[_836 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _855 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_855 + idx + 68] = mem[_836 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_855 + 68] = mem[_855 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _855 + -mem[64] + 100
                require totalAllocPoint
                _895 = mem[64]
                mem[64] = mem[64] + 64
                mem[_895] = 26
                mem[_895 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _979 = mem[64]
                mem[64] = mem[64] + 64
                mem[_979] = 26
                mem[_979 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                    _1204 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1204] = 26
                    mem[_1204 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1234 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1234 + idx + 68] = mem[_1204 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1234 + 68] = mem[_1234 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1234 + -mem[64] + 100
                require (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1233 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1233] = 26
                mem[_1233 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[idx].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1263 + idx + 68] = mem[_1233 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1263 + 68] = mem[_1263 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1263 + -mem[64] + 100
            require bonusEndBlock - poolInfo[idx].field_512
            if (10 * bonusEndBlock) - (10 * poolInfo[idx].field_512) / bonusEndBlock - poolInfo[idx].field_512 != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                revert with 0, 'SafeMath: addition overflow'
            if not (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number:
                _814 = mem[64]
                mem[64] = mem[64] + 64
                mem[_814] = 26
                mem[_814 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _833 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_833 + idx + 68] = mem[_814 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_833 + 68] = mem[_833 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _833 + -mem[64] + 100
                require totalAllocPoint
                _876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_876] = 26
                mem[_876 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _960 = mem[64]
                mem[64] = mem[64] + 64
                mem[_960] = 26
                mem[_960 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1178] = 26
                    mem[_1178 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1201 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1201 + idx + 68] = mem[_1178 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1201 + 68] = mem[_1201 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1201 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1200 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1200] = 26
                mem[_1200 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1229 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1229 + idx + 68] = mem[_1200 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1229 + 68] = mem[_1229 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1229 + -mem[64] + 100
            require (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number
            if (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) / (9 * bonusEndBlock) - (10 * poolInfo[idx].field_512) + block.number != sub_3a68932d:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d):
                _832 = mem[64]
                mem[64] = mem[64] + 64
                mem[_832] = 26
                mem[_832 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _851 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_851 + idx + 68] = mem[_832 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_851 + 68] = mem[_851 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _851 + -mem[64] + 100
                require totalAllocPoint
                _893 = mem[64]
                mem[64] = mem[64] + 64
                mem[_893] = 26
                mem[_893 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_978] = 26
                mem[_978 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args burnAddress, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_734123ecAddress)
                call sub_734123ecAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / totalAllocPoint:
                    _1199 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1199] = 26
                    mem[_1199 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1226 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1226 + idx + 68] = mem[_1199 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1226 + 68] = mem[_1226 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1226 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1225] = 26
                mem[_1225 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1257 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1257 + idx + 68] = mem[_1225 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1257 + 68] = mem[_1257 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1257 + -mem[64] + 100
            require (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d)
            if (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[idx].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _850 = mem[64]
            mem[64] = mem[64] + 64
            mem[_850] = 26
            mem[_850 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _872 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_872 + idx + 68] = mem[_850 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_872 + 68] = mem[_872 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _872 + -mem[64] + 100
            require totalAllocPoint
            _912 = mem[64]
            mem[64] = mem[64] + 64
            mem[_912] = 26
            mem[_912 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devaddr, (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _992 = mem[64]
            mem[64] = mem[64] + 64
            mem[_992] = 26
            mem[_992 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args burnAddress, (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_734123ecAddress)
            call sub_734123ecAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint:
                _1224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1224] = 26
                mem[_1224 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1254 + idx + 68] = mem[_1224 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1254 + 68] = mem[_1254 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1254 + -mem[64] + 100
            require (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1253 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1253] = 26
            mem[_1253 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[idx].field_256) - (10 * poolInfo[idx].field_512 * sub_3a68932d * poolInfo[idx].field_256) + (block.number * sub_3a68932d * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _1284 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1284 + idx + 68] = mem[_1253 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1284 + 68] = mem[_1284 + 74 len 26]
            revert with memory
              from mem[64]
               len _1284 + -mem[64] + 100
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = arg3
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1024 >= block.timestamp:
        revert with 0, 'pool did not start yet.'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 <= 0:
            if arg2 <= 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[352 len 4] = uint32(arg2)
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[338 len 14],
                                    uint32(arg2),
                                    mem[356 len 4]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[329 len 23],
                                        uint32(arg2),
                                        mem[356 len 4]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[260]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 339 len 22]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 330 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_734123ecAddress)
                    staticcall sub_734123ecAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_734123ecAddress)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_734123ecAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_734123ecAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(sub_734123ecAddress)
                    staticcall sub_734123ecAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_734123ecAddress)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call sub_734123ecAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call sub_734123ecAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if arg2 <= 0:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[480 len 4] = uint32(arg2)
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
                if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][address(msg.sender)].field_0 += arg2
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 458 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    else:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
            if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[352 len 4] = uint32(arg2)
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[338 len 14],
                                        uint32(arg2),
                                        mem[356 len 4]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[329 len 23],
                                            uint32(arg2),
                                            mem[356 len 4]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[260]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 339 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 330 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_734123ecAddress)
                        staticcall sub_734123ecAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_734123ecAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_734123ecAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                        require ext_code.size(sub_734123ecAddress)
                        staticcall sub_734123ecAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                            call sub_734123ecAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                        else:
                            call sub_734123ecAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if arg2 <= 0:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[480 len 4] = uint32(arg2)
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                    if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][address(msg.sender)].field_0 += arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        else:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args burnAddress, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_734123ecAddress)
                    call sub_734123ecAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (10 * block.number) - (10 * poolInfo[arg1].field_512) / block.number - poolInfo[arg1].field_512 != 10:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (10 * block.number) - (10 * poolInfo[arg1].field_512):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args burnAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (10 * block.number) - (10 * poolInfo[arg1].field_512)
                        if (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) / (10 * block.number) - (10 * poolInfo[arg1].field_512) != sub_3a68932d:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d)
                            if (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / (10 * block.number * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (10 * block.number * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
                if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[672 len 4] = uint32(arg2)
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[644 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[580]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 659 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 650 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(sub_734123ecAddress)
                            staticcall sub_734123ecAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_734123ecAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_734123ecAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(sub_734123ecAddress)
                            staticcall sub_734123ecAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call sub_734123ecAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call sub_734123ecAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                        mem[800 len 4] = uint32(arg2)
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 480, mem[772 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[708]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 787 len 22]
                        if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][address(msg.sender)].field_0 += arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 778 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args burnAddress, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(sub_734123ecAddress)
                        call sub_734123ecAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d) / block.number - poolInfo[arg1].field_512 != sub_3a68932d:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d)
                            if (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / (block.number * sub_3a68932d) - (poolInfo[arg1].field_512 * sub_3a68932d) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[672 len 4] = uint32(arg2)
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[580]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 659 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 650 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                require ext_code.size(sub_734123ecAddress)
                                staticcall sub_734123ecAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_734123ecAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_734123ecAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                require ext_code.size(sub_734123ecAddress)
                                staticcall sub_734123ecAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_734123ecAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_734123ecAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[800 len 4] = uint32(arg2)
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[772 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[708]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 787 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 778 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if block.number - bonusEndBlock < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not block.number - bonusEndBlock:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - bonusEndBlock
                            if (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) / block.number - bonusEndBlock != sub_3a68932d:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d)
                                if (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / (block.number * sub_3a68932d) - (bonusEndBlock * sub_3a68932d) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnAddress, (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_3a68932d * poolInfo[arg1].field_256) - (bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require bonusEndBlock - poolInfo[arg1].field_512
                        if (10 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) / bonusEndBlock - poolInfo[arg1].field_512 != 10:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if (9 * bonusEndBlock) + block.number < 10 * bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args burnAddress, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(sub_734123ecAddress)
                            call sub_734123ecAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number
                            if (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) / (9 * bonusEndBlock) - (10 * poolInfo[arg1].field_512) + block.number != sub_3a68932d:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnAddress, 0 / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d)
                                if (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / (9 * bonusEndBlock * sub_3a68932d) - (10 * poolInfo[arg1].field_512 * sub_3a68932d) + (block.number * sub_3a68932d) != poolInfo[arg1].field_256:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args burnAddress, (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / 10
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                call sub_734123ecAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint
                                    if 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[arg1].field_768 + (10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[arg1].field_768 += 10^12 * (9 * bonusEndBlock * sub_3a68932d * poolInfo[arg1].field_256) - (10 * poolInfo[arg1].field_512 * sub_3a68932d * poolInfo[arg1].field_256) + (block.number * sub_3a68932d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
                    if userInfo[arg1][address(msg.sender)].field_0 <= 0:
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[612 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[736 len 4] = uint32(arg2)
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[644]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 723 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 714 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                    else:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                                require ext_code.size(sub_734123ecAddress)
                                staticcall sub_734123ecAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_734123ecAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_734123ecAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                require ext_code.size(sub_734123ecAddress)
                                staticcall sub_734123ecAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(sub_734123ecAddress)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call sub_734123ecAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call sub_734123ecAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        if arg2 <= 0:
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
                        else:
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[740 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                            mem[864 len 4] = uint32(arg2)
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 480, mem[836 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 0, 'SafeERC20: low-level call failed'
                            mem[772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[772]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 851 len 22]
                            if userInfo[arg1][address(msg.sender)].field_0 + arg2 < userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][address(msg.sender)].field_0 += arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 842 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}



}
