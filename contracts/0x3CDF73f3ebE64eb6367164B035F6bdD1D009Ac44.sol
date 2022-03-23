contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
array of struct poolInfo;
mapping of struct userInfo;

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
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536,
           poolInfo[arg1].field_1792
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
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

function getMultiplier(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 <= arg3:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if arg1 >= arg3:
        return 0
    if arg1 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg3 - arg1)
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

function recoverERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
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
                    39,
                    0x77446576546f6f6c733a3a7265636f76657245524332303a3a5452414e534645525f4641494c45,
                    mem[203 len 25]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_1536:
        if poolInfo[arg1].field_1024:
            if block.number <= poolInfo[arg1].field_768:
                if poolInfo[arg1].field_1536 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_1536:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                else:
                    require block.number - poolInfo[arg1].field_1536
                    if (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / block.number - poolInfo[arg1].field_1536 != poolInfo[arg1].field_1280:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280):
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                    else:
                        require (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280)
                        if (10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_1792 + ((10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1792 += (10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024
            else:
                if poolInfo[arg1].field_1536 >= poolInfo[arg1].field_768:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                else:
                    if poolInfo[arg1].field_1536 > poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_768 - poolInfo[arg1].field_1536:
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                    else:
                        require poolInfo[arg1].field_768 - poolInfo[arg1].field_1536
                        if (poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_768 - poolInfo[arg1].field_1536 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280):
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                        else:
                            require (poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280)
                            if (10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / (poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_1792 + ((10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1792 += (10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024
        poolInfo[arg1].field_1536 = block.number
}

function pendingReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_1536:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1024:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_1536 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_1536:
        if poolInfo[arg1].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1024
        if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_1536
    if (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / block.number - poolInfo[arg1].field_1536 != poolInfo[arg1].field_1280:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280):
        if poolInfo[arg1].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1024
        if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280)
    if (10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) != 10^12:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if poolInfo[arg1].field_1024 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1024
    if poolInfo[arg1].field_1792 + ((10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1792 + ((10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_1792 * userInfo[arg1][address(arg2)].field_0) + ((10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 1
        if block.number <= poolInfo[idx].field_1536:
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_1024:
            poolInfo[idx].field_1536 = block.number
            idx = idx + 1
            continue 
        if block.number <= poolInfo[idx].field_768:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 30
            mem[_97 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1536 > block.number:
                _99 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_99 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_99 + 68] = mem[_99 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _99 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_1536:
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = 26
                mem[_122 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1024 > 0:
                    require poolInfo[idx].field_1024
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                    poolInfo[idx].field_1536 = block.number
                    idx = idx + 1
                    continue 
                _132 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_132 + idx + 68] = mem[_122 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_132 + 68] = mem[_132 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _132 + -mem[64] + 100
            require block.number - poolInfo[idx].field_1536
            if (block.number * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / block.number - poolInfo[idx].field_1536 != poolInfo[idx].field_1280:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280):
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1024 > 0:
                    require poolInfo[idx].field_1024
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                    poolInfo[idx].field_1536 = block.number
                    idx = idx + 1
                    continue 
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_142 + idx + 68] = mem[_131 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 68] = mem[_142 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            require (block.number * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280)
            if (10^12 * block.number * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / (block.number * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _141 = mem[64]
            mem[64] = mem[64] + 64
            mem[_141] = 26
            mem[_141 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1024 > 0:
                require poolInfo[idx].field_1024
                if poolInfo[idx].field_1792 + ((10^12 * block.number * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += (10^12 * block.number * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_1024
                poolInfo[idx].field_1536 = block.number
                idx = idx + 1
                continue 
            _155 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_155 + idx + 68] = mem[_141 + idx + 32]
                idx = idx + 32
                continue 
            mem[_155 + 68] = mem[_155 + 74 len 26]
            revert with memory
              from mem[64]
               len _155 + -mem[64] + 100
        if poolInfo[idx].field_1536 >= poolInfo[idx].field_768:
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1024 > 0:
                require poolInfo[idx].field_1024
                if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                poolInfo[idx].field_1536 = block.number
                idx = idx + 1
                continue 
            _118 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_118 + idx + 68] = mem[_117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_118 + 68] = mem[_118 + 74 len 26]
            revert with memory
              from mem[64]
               len _118 + -mem[64] + 100
        _98 = mem[64]
        mem[64] = mem[64] + 64
        mem[_98] = 30
        mem[_98 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_1536 > poolInfo[idx].field_768:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_102 + idx + 68] = mem[_98 + idx + 32]
                idx = idx + 32
                continue 
            mem[_102 + 68] = mem[_102 + 70 len 30]
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if not poolInfo[idx].field_768 - poolInfo[idx].field_1536:
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 26
            mem[_123 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1024 > 0:
                require poolInfo[idx].field_1024
                if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                poolInfo[idx].field_1536 = block.number
                idx = idx + 1
                continue 
            _136 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_136 + idx + 68] = mem[_123 + idx + 32]
                idx = idx + 32
                continue 
            mem[_136 + 68] = mem[_136 + 74 len 26]
            revert with memory
              from mem[64]
               len _136 + -mem[64] + 100
        require poolInfo[idx].field_768 - poolInfo[idx].field_1536
        if (poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_768 - poolInfo[idx].field_1536 != poolInfo[idx].field_1280:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280):
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 26
            mem[_135 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1024 > 0:
                require poolInfo[idx].field_1024
                if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                poolInfo[idx].field_1536 = block.number
                idx = idx + 1
                continue 
            _147 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_147 + idx + 68] = mem[_135 + idx + 32]
                idx = idx + 32
                continue 
            mem[_147 + 68] = mem[_147 + 74 len 26]
            revert with memory
              from mem[64]
               len _147 + -mem[64] + 100
        require (poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280)
        if (10^12 * poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / (poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280) != 10^12:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _146 = mem[64]
        mem[64] = mem[64] + 64
        mem[_146] = 26
        mem[_146 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_1024 > 0:
            require poolInfo[idx].field_1024
            if poolInfo[idx].field_1792 + ((10^12 * poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_1792 += (10^12 * poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_1024
            poolInfo[idx].field_1536 = block.number
            idx = idx + 1
            continue 
        _160 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_160 + idx + 68] = mem[_146 + idx + 32]
            idx = idx + 32
            continue 
        mem[_160 + 68] = mem[_160 + 74 len 26]
        revert with memory
          from mem[64]
           len _160 + -mem[64] + 100
}

function sub_bf7247a7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg6:
        if ext_code.hash(arg2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg5) >> 32
        mem[416 len 4] = 0
        call arg2 with:
             gas gas_remaining wei
            args Mask(224, 32, arg5) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg5
            if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 1
            if block.number <= poolInfo[idx].field_1536:
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_1024:
                poolInfo[idx].field_1536 = block.number
                idx = idx + 1
                continue 
            if block.number <= poolInfo[idx].field_768:
                _494 = mem[64]
                mem[64] = mem[64] + 64
                mem[_494] = 30
                mem[_494 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_1536 > block.number:
                    _506 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_506 + idx + 68] = mem[_494 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_506 + 68] = mem[_506 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _506 + -mem[64] + 100
                if not block.number - poolInfo[idx].field_1536:
                    _666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_666] = 26
                    mem[_666 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1024 > 0:
                        require poolInfo[idx].field_1024
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                        poolInfo[idx].field_1536 = block.number
                        idx = idx + 1
                        continue 
                    _684 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_684 + idx + 68] = mem[_666 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_684 + 68] = mem[_684 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _684 + -mem[64] + 100
                require block.number - poolInfo[idx].field_1536
                if (block.number * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / block.number - poolInfo[idx].field_1536 != poolInfo[idx].field_1280:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280):
                    _683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_683] = 26
                    mem[_683 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1024 > 0:
                        require poolInfo[idx].field_1024
                        if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                        poolInfo[idx].field_1536 = block.number
                        idx = idx + 1
                        continue 
                    _740 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_740 + idx + 68] = mem[_683 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_740 + 68] = mem[_740 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _740 + -mem[64] + 100
                require (block.number * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280)
                if (10^12 * block.number * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / (block.number * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280) != 10^12:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _739 = mem[64]
                mem[64] = mem[64] + 64
                mem[_739] = 26
                mem[_739 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1024 > 0:
                    require poolInfo[idx].field_1024
                    if poolInfo[idx].field_1792 + ((10^12 * block.number * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += (10^12 * block.number * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_1024
                    poolInfo[idx].field_1536 = block.number
                    idx = idx + 1
                    continue 
                _767 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_767 + idx + 68] = mem[_739 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_767 + 68] = mem[_767 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _767 + -mem[64] + 100
            if poolInfo[idx].field_1536 >= poolInfo[idx].field_768:
                _587 = mem[64]
                mem[64] = mem[64] + 64
                mem[_587] = 26
                mem[_587 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1024 > 0:
                    require poolInfo[idx].field_1024
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                    poolInfo[idx].field_1536 = block.number
                    idx = idx + 1
                    continue 
                _612 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_612 + idx + 68] = mem[_587 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_612 + 68] = mem[_612 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _612 + -mem[64] + 100
            _499 = mem[64]
            mem[64] = mem[64] + 64
            mem[_499] = 30
            mem[_499 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_1536 > poolInfo[idx].field_768:
                _513 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_513 + idx + 68] = mem[_499 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_513 + 68] = mem[_513 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _513 + -mem[64] + 100
            if not poolInfo[idx].field_768 - poolInfo[idx].field_1536:
                _673 = mem[64]
                mem[64] = mem[64] + 64
                mem[_673] = 26
                mem[_673 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1024 > 0:
                    require poolInfo[idx].field_1024
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                    poolInfo[idx].field_1536 = block.number
                    idx = idx + 1
                    continue 
                _732 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_732 + idx + 68] = mem[_673 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_732 + 68] = mem[_732 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _732 + -mem[64] + 100
            require poolInfo[idx].field_768 - poolInfo[idx].field_1536
            if (poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_768 - poolInfo[idx].field_1536 != poolInfo[idx].field_1280:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280):
                _731 = mem[64]
                mem[64] = mem[64] + 64
                mem[_731] = 26
                mem[_731 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1024 > 0:
                    require poolInfo[idx].field_1024
                    if poolInfo[idx].field_1792 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_1792 += 0 / poolInfo[idx].field_1024
                    poolInfo[idx].field_1536 = block.number
                    idx = idx + 1
                    continue 
                _747 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_747 + idx + 68] = mem[_731 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_747 + 68] = mem[_747 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _747 + -mem[64] + 100
            require (poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280)
            if (10^12 * poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / (poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (poolInfo[idx].field_1536 * poolInfo[idx].field_1280) != 10^12:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _746 = mem[64]
            mem[64] = mem[64] + 64
            mem[_746] = 26
            mem[_746 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1024 > 0:
                require poolInfo[idx].field_1024
                if poolInfo[idx].field_1792 + ((10^12 * poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_1024) < poolInfo[idx].field_1792:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_1792 += (10^12 * poolInfo[idx].field_768 * poolInfo[idx].field_1280) - (10^12 * poolInfo[idx].field_1536 * poolInfo[idx].field_1280) / poolInfo[idx].field_1024
                poolInfo[idx].field_1536 = block.number
                idx = idx + 1
                continue 
            _774 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_774 + idx + 68] = mem[_746 + idx + 32]
                idx = idx + 32
                continue 
            mem[_774 + 68] = mem[_774 + 74 len 26]
            revert with memory
              from mem[64]
               len _774 + -mem[64] + 100
        _472 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = arg5
        _473 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        mem[64] = mem[64] + 196
        mem[_472 + 132] = 32
        mem[_472 + 164] = 'SafeERC20: low-level call failed'
        if ext_code.hash(arg2) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg2):
            revert with 0, 'Address: call to non-contract'
        _517 = mem[_473]
        mem[_472 + 196 len floor32(mem[_473])] = mem[_473 + 32 len floor32(mem[_473])]
        mem[_472 + floor32(mem[_473]) + -(mem[_473] % 32) + 228 len mem[_473] % 32] = mem[_473 + -(mem[_473] % 32) + floor32(mem[_473]) + 64 len mem[_473] % 32]
        call arg2.mem[_472 + 196 len 4] with:
             gas gas_remaining wei
            args mem[_472 + 200 len _517 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96] > 0:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_472 + 306 len 22]
        else:
            mem[_472 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_472 + 228]:
                    revert with 0, 
                                32,
                                42,
                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_472 + ceil32(return_data.size) + 307 len 22]
    if arg3 > arg4:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg4 - arg3 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg4 - arg3
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    poolInfo[poolInfo.length].field_256 = arg2
    poolInfo[poolInfo.length].field_512 = arg3
    poolInfo[poolInfo.length].field_768 = arg4
    poolInfo[poolInfo.length].field_1024 = 0
    poolInfo[poolInfo.length].field_1280 = arg5 / arg4 - arg3
    if block.number > arg3:
        poolInfo[poolInfo.length].field_1536 = block.number
    else:
        poolInfo[poolInfo.length].field_1536 = arg3
    poolInfo[poolInfo.length].field_1792 = 0
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
    if poolInfo[arg1].field_1024 + arg2 < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if poolInfo[arg1].field_1024 + arg2 < 0:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_1536:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                require ext_code.size(poolInfo[arg1].field_256)
                staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolInfo[arg1].field_256)
                if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                else:
                    call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                require ext_code.size(poolInfo[arg1].field_256)
                staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(poolInfo[arg1].field_256)
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                else:
                    call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
        else:
            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][address(msg.sender)].field_0 -= arg2
            if arg2 > poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: subtraction overflow'
            poolInfo[arg1].field_1024 -= arg2
            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[580 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[548]:
                    revert with 0, 
                                32,
                                42,
                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 627 len 22]
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                    revert with 0, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 618 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
    else:
        if not poolInfo[arg1].field_1024:
            poolInfo[arg1].field_1536 = block.number
            if not userInfo[arg1][address(msg.sender)].field_0:
                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                    if arg2 <= 0:
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if arg2 > poolInfo[arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_1024 -= arg2
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[580 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 618 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                else:
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolInfo[arg1].field_256)
                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if arg2 > poolInfo[arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_1024 -= arg2
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[580 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[548]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 627 len 22]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 618 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
            else:
                require userInfo[arg1][address(msg.sender)].field_0
                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                    require ext_code.size(poolInfo[arg1].field_256)
                    staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(poolInfo[arg1].field_256)
                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    else:
                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                else:
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if arg2 > poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: subtraction overflow'
                    poolInfo[arg1].field_1024 -= arg2
                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[516 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[580 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[548]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 627 len 22]
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 618 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
        else:
            if block.number <= poolInfo[arg1].field_768:
                if poolInfo[arg1].field_1536 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_1536:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                    poolInfo[arg1].field_1536 = block.number
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if arg2 > poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1024 -= arg2
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 746 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                        else:
                            require ext_code.size(poolInfo[arg1].field_256)
                            staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(poolInfo[arg1].field_256)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if arg2 > poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1024 -= arg2
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[708 len 0] = 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 746 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(poolInfo[arg1].field_256)
                            staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(poolInfo[arg1].field_256)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if arg2 > poolInfo[arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_1024 -= arg2
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[708 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: subtraction overflow'
                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[676]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 755 len 22]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 746 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                else:
                    require block.number - poolInfo[arg1].field_1536
                    if (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / block.number - poolInfo[arg1].field_1536 != poolInfo[arg1].field_1280:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280):
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                    else:
                        require (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280)
                        if (10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / (block.number * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_1792 + ((10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1792 += (10^12 * block.number * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024
                    poolInfo[arg1].field_1536 = block.number
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(poolInfo[arg1].field_256)
                            staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(poolInfo[arg1].field_256)
                            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(poolInfo[arg1].field_256)
                            staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(poolInfo[arg1].field_256)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                    else:
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if arg2 > poolInfo[arg1].field_1024:
                            revert with 0, 'SafeMath: subtraction overflow'
                        poolInfo[arg1].field_1024 -= arg2
                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[676]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 755 len 22]
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 746 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
            else:
                if poolInfo[arg1].field_1536 >= poolInfo[arg1].field_768:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                    poolInfo[arg1].field_1536 = block.number
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                            if arg2 <= 0:
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if arg2 > poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1024 -= arg2
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[644 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[612]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 691 len 22]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 682 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                        else:
                            require ext_code.size(poolInfo[arg1].field_256)
                            staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(poolInfo[arg1].field_256)
                            if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if arg2 > poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1024 -= arg2
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 682 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                            else:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if arg2 > poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1024 -= arg2
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[644 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: division by zero'
                                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[612]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 691 len 22]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 682 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                            require ext_code.size(poolInfo[arg1].field_256)
                            staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(poolInfo[arg1].field_256)
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                            else:
                                call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                        else:
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if arg2 > poolInfo[arg1].field_1024:
                                revert with 0, 'SafeMath: subtraction overflow'
                            poolInfo[arg1].field_1024 -= arg2
                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg2) << 224, mem[644 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[612]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 691 len 22]
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 682 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                else:
                    if poolInfo[arg1].field_1536 > poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_768 - poolInfo[arg1].field_1536:
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                        poolInfo[arg1].field_1536 = block.number
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                if arg2 <= 0:
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if arg2 > poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1024 -= arg2
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[708 len 0] = 0
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[676]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 755 len 22]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 746 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                            else:
                                require ext_code.size(poolInfo[arg1].field_256)
                                staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(poolInfo[arg1].field_256)
                                if -userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                    call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if arg2 > poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1024 -= arg2
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 746 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                else:
                                    call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if arg2 > poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1024 -= arg2
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 746 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                require ext_code.size(poolInfo[arg1].field_256)
                                staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(poolInfo[arg1].field_256)
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                    call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                else:
                                    call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                            else:
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if arg2 > poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                poolInfo[arg1].field_1024 -= arg2
                                if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: subtraction overflow'
                                mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[676]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 755 len 22]
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 746 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                    else:
                        require poolInfo[arg1].field_768 - poolInfo[arg1].field_1536
                        if (poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_768 - poolInfo[arg1].field_1536 != poolInfo[arg1].field_1280:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280):
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_1792 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1792 += 0 / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_1536 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if arg2 > poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1024 -= arg2
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 746 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                else:
                                    require ext_code.size(poolInfo[arg1].field_256)
                                    staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_256)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if arg2 > poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1024 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 746 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                    else:
                                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if arg2 > poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1024 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 746 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    require ext_code.size(poolInfo[arg1].field_256)
                                    staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_256)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                    else:
                                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                else:
                                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                    if arg2 > poolInfo[arg1].field_1024:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    poolInfo[arg1].field_1024 -= arg2
                                    if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                        revert with 0, 'Address: call to non-contract'
                                    if not ext_code.hash(poolInfo[arg1].field_0):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                    call poolInfo[arg1].field_0 with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                    if not return_data.size:
                                        require not ext_call.success
                                        revert with 'SafeMath: subtraction overflow'
                                    mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[676]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 755 len 22]
                                    if not userInfo[arg1][address(msg.sender)].field_0:
                                        userInfo[arg1][address(msg.sender)].field_256 = 0
                                    else:
                                        require userInfo[arg1][address(msg.sender)].field_0
                                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[ceil32(return_data.size) + 746 len 31]
                                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                        else:
                            require (poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280)
                            if (10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / (poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_1792 + ((10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024) < poolInfo[arg1].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_1792 += (10^12 * poolInfo[arg1].field_768 * poolInfo[arg1].field_1280) - (10^12 * poolInfo[arg1].field_1536 * poolInfo[arg1].field_1280) / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_1536 = block.number
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if -userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if arg2 > poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1024 -= arg2
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 746 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                else:
                                    require ext_code.size(poolInfo[arg1].field_256)
                                    staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_256)
                                    if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if arg2 > poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1024 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 746 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                    else:
                                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if arg2 > poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1024 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 746 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= 0:
                                    if arg2 <= 0:
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                    else:
                                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                        if arg2 > poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        poolInfo[arg1].field_1024 -= arg2
                                        if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                            revert with 0, 'Address: call to non-contract'
                                        if not ext_code.hash(poolInfo[arg1].field_0):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                        mem[708 len 0] = 0
                                        call poolInfo[arg1].field_0 with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                        if not return_data.size:
                                            require not ext_call.success
                                            revert with 'SafeMath: subtraction overflow'
                                        mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size > 0:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size > 0:
                                            require return_data.size >= 32
                                            if not mem[676]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 755 len 22]
                                        if not userInfo[arg1][address(msg.sender)].field_0:
                                            userInfo[arg1][address(msg.sender)].field_256 = 0
                                        else:
                                            require userInfo[arg1][address(msg.sender)].field_0
                                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[ceil32(return_data.size) + 746 len 31]
                                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                else:
                                    require ext_code.size(poolInfo[arg1].field_256)
                                    staticcall poolInfo[arg1].field_256.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(poolInfo[arg1].field_256)
                                    if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 > ext_call.return_data[0]:
                                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
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
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if arg2 > poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1024 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 746 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                    else:
                                        call poolInfo[arg1].field_256.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if arg2 <= 0:
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
                                        else:
                                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                            if arg2 > poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            poolInfo[arg1].field_1024 -= arg2
                                            if ext_code.hash(poolInfo[arg1].field_0) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                                                revert with 0, 'Address: call to non-contract'
                                            if not ext_code.hash(poolInfo[arg1].field_0):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[644 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
                                            mem[708 len 0] = 0
                                            call poolInfo[arg1].field_0 with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args Mask(224, 32, arg2) << 224, mem[708 len 4]
                                            if not return_data.size:
                                                require not ext_call.success
                                                revert with 'SafeMath: subtraction overflow'
                                            mem[676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size > 0:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size > 0:
                                                require return_data.size >= 32
                                                if not mem[676]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x445361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 755 len 22]
                                            if not userInfo[arg1][address(msg.sender)].field_0:
                                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                            else:
                                                require userInfo[arg1][address(msg.sender)].field_0
                                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_1792:
                                                    revert with 0, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[ceil32(return_data.size) + 746 len 31]
                                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_1792 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
}



}
