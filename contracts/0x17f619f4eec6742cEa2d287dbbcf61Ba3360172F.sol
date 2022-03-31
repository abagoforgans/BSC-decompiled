contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - withdrawAll(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address AUTOAddress;
uint256 aUTOMaxSupply;
uint256 aUTOPerBlock;
uint256 startBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
address governanceAddress;
address devAddress;
uint256 devFee;
uint256 sub_6e168eba;
address controllerAddress;
uint256 controllerFee;
uint256 controllerFeeMax;
uint256 sub_e44c9ea1;
uint256 sub_9ed5287e;
address sub_5dddda22Address;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699763;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699764;

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

function controllerFeeMax() payable {
    return controllerFeeMax
}

function devAddress() payable {
    return devAddress
}

function startBlock() payable {
    return startBlock
}

function controllerAddress() payable {
    return controllerAddress
}

function sub_5dddda22(?) payable {
    return sub_5dddda22Address
}

function devFee() payable {
    return devFee
}

function AUTO() payable {
    return AUTOAddress
}

function sub_6e168eba(?) payable {
    return sub_6e168eba
}

function governanceAddress() payable {
    return governanceAddress
}

function controllerFee() payable {
    return controllerFee
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9ed5287e(?) payable {
    return sub_9ed5287e
}

function AUTOMaxSupply() payable {
    return aUTOMaxSupply
}

function sub_e44c9ea1(?) payable {
    return sub_e44c9ea1
}

function AUTOPerBlock() payable {
    return aUTOPerBlock
}

function _fallback() payable {
    revert
}

function sub_3a1caf47(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
    sub_e44c9ea1 = arg1
}

function setDevFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
    devFee = arg1
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
    devAddress = arg1
}

function sub_e5f8ab71(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
    sub_5dddda22Address = arg1
}

function setControllerFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
    controllerFee = arg1
}

function setControllerAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
    controllerAddress = arg1
}

function sub_cfc03183(?) payable {
    require calldata.size - 4 >= 96
    if devAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
    require ext_code.size(arg1)
    call arg1.inCaseTokensGetStuck(address rg1, uint256 rg2, address rg3) with:
         gas gas_remaining wei
        args address(arg2), arg3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(AUTOAddress)
    staticcall AUTOAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= aUTOMaxSupply:
        return 0
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[arg1][address(arg2)].field_0:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0 / ext_call.return_data[0])
}

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if devAddress != msg.sender:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if userInfo[arg1][msg.sender].field_0:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.0x2e1a7d4d with:
             gas gas_remaining wei
            args (ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender].field_0 / ext_call.return_data[0]), msg.sender, arg1);
    else:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.0x2e1a7d4d with:
             gas gas_remaining wei
            args (0 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(AUTOAddress)
            staticcall AUTOAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= aUTOMaxSupply:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0
                else:
                    if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 138 * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0
                    else:
                        if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 138 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) / block.number - poolInfo[arg1].field_512 != aUTOPerBlock:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not 0 / totalAllocPoint:
                            require ext_code.size(AUTOAddress)
                            call AUTOAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0
                        else:
                            if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(AUTOAddress)
                            call AUTOAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 138 * 0 / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero'
                        if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(AUTOAddress)
                            call AUTOAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 0
                        else:
                            if 138 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 138:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(AUTOAddress)
                            call AUTOAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 138 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingAUTO(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(AUTOAddress)
    staticcall AUTOAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= aUTOMaxSupply:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) / block.number - poolInfo[arg1].field_512 != aUTOPerBlock:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(poolInfo[idx].field_1024)
        staticcall poolInfo[idx].field_1024.sharesTotal() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        require ext_code.size(AUTOAddress)
        staticcall AUTOAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= aUTOMaxSupply:
            _305 = mem[64]
            mem[64] = mem[64] + 64
            mem[_305] = 26
            mem[_305 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _306 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _306 + 68] = mem[idx + _305 + 32]
                    idx = idx + 32
                    continue 
                mem[_306 + 68] = mem[_306 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _306 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _337 = mem[64]
                mem[64] = mem[64] + 64
                mem[_337] = 26
                mem[_337 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _391 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_391] = 26
                    mem[_391 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _395 + 68] = mem[idx + _391 + 32]
                        idx = idx + 32
                        continue 
                    mem[_395 + 68] = mem[_395 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _395 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _393 = mem[64]
                mem[64] = mem[64] + 64
                mem[_393] = 26
                mem[_393 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _403 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _403 + 68] = mem[idx + _393 + 32]
                    idx = idx + 32
                    continue 
                mem[_403 + 68] = mem[_403 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _403 + -mem[64] + 100
            if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_341] = 26
            mem[_341 + 32] = 'SafeMath: division by zero'
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 138 * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_392] = 26
                mem[_392 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _400 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _400 + 68] = mem[idx + _392 + 32]
                    idx = idx + 32
                    continue 
                mem[_400 + 68] = mem[_400 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _400 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _394 = mem[64]
            mem[64] = mem[64] + 64
            mem[_394] = 26
            mem[_394 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _411 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _411 + 68] = mem[idx + _394 + 32]
                idx = idx + 32
                continue 
            mem[_411 + 68] = mem[_411 + 74 len 26]
            revert with memory
              from mem[64]
               len _411 + -mem[64] + 100
        _291 = mem[64]
        mem[64] = mem[64] + 64
        mem[_291] = 30
        mem[_291 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
            idx = 32
            while idx < 30:
                mem[idx + mem[64] + 68] = mem[idx + _291 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[idx].field_512:
            _311 = mem[64]
            mem[64] = mem[64] + 64
            mem[_311] = 26
            mem[_311 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _317 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _317 + 68] = mem[idx + _311 + 32]
                    idx = idx + 32
                    continue 
                mem[_317 + 68] = mem[_317 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _317 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 26
                mem[_347 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _410 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_410] = 26
                    mem[_410 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _432 + 68] = mem[idx + _410 + 32]
                        idx = idx + 32
                        continue 
                    mem[_432 + 68] = mem[_432 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _432 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _421 = mem[64]
                mem[64] = mem[64] + 64
                mem[_421] = 26
                mem[_421 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _450 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _450 + 68] = mem[idx + _421 + 32]
                    idx = idx + 32
                    continue 
                mem[_450 + 68] = mem[_450 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _450 + -mem[64] + 100
            if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _351 = mem[64]
            mem[64] = mem[64] + 64
            mem[_351] = 26
            mem[_351 + 32] = 'SafeMath: division by zero'
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 138 * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _420 = mem[64]
                mem[64] = mem[64] + 64
                mem[_420] = 26
                mem[_420 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _447 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _447 + 68] = mem[idx + _420 + 32]
                    idx = idx + 32
                    continue 
                mem[_447 + 68] = mem[_447 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _447 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _431 = mem[64]
            mem[64] = mem[64] + 64
            mem[_431] = 26
            mem[_431 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _469 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _469 + 68] = mem[idx + _431 + 32]
                idx = idx + 32
                continue 
            mem[_469 + 68] = mem[_469 + 74 len 26]
            revert with memory
              from mem[64]
               len _469 + -mem[64] + 100
        if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
            _313 = mem[64]
            mem[64] = mem[64] + 64
            mem[_313] = 26
            mem[_313 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _321 + 68] = mem[idx + _313 + 32]
                    idx = idx + 32
                    continue 
                mem[_321 + 68] = mem[_321 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _321 + -mem[64] + 100
            if not 0 / totalAllocPoint:
                _350 = mem[64]
                mem[64] = mem[64] + 64
                mem[_350] = 26
                mem[_350 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_419] = 26
                    mem[_419 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _444 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _444 + 68] = mem[idx + _419 + 32]
                        idx = idx + 32
                        continue 
                    mem[_444 + 68] = mem[_444 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _444 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _430 = mem[64]
                mem[64] = mem[64] + 64
                mem[_430] = 26
                mem[_430 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _466 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _466 + 68] = mem[idx + _430 + 32]
                    idx = idx + 32
                    continue 
                mem[_466 + 68] = mem[_466 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _466 + -mem[64] + 100
            if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _355 = mem[64]
            mem[64] = mem[64] + 64
            mem[_355] = 26
            mem[_355 + 32] = 'SafeMath: division by zero'
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 138 * 0 / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _429 = mem[64]
                mem[64] = mem[64] + 64
                mem[_429] = 26
                mem[_429 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _463 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _463 + 68] = mem[idx + _429 + 32]
                    idx = idx + 32
                    continue 
                mem[_463 + 68] = mem[_463 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _463 + -mem[64] + 100
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _443 = mem[64]
            mem[64] = mem[64] + 64
            mem[_443] = 26
            mem[_443 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _484 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _484 + 68] = mem[idx + _443 + 32]
                idx = idx + 32
                continue 
            mem[_484 + 68] = mem[_484 + 74 len 26]
            revert with memory
              from mem[64]
               len _484 + -mem[64] + 100
        if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _316 = mem[64]
        mem[64] = mem[64] + 64
        mem[_316] = 26
        mem[_316 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _324 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _324 + 68] = mem[idx + _316 + 32]
                idx = idx + 32
                continue 
            mem[_324 + 68] = mem[_324 + 74 len 26]
            revert with memory
              from mem[64]
               len _324 + -mem[64] + 100
        if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _354 = mem[64]
            mem[64] = mem[64] + 64
            mem[_354] = 26
            mem[_354 + 32] = 'SafeMath: division by zero'
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _428 = mem[64]
                mem[64] = mem[64] + 64
                mem[_428] = 26
                mem[_428 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _460 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _460 + 68] = mem[idx + _428 + 32]
                    idx = idx + 32
                    continue 
                mem[_460 + 68] = mem[_460 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _460 + -mem[64] + 100
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _442 = mem[64]
            mem[64] = mem[64] + 64
            mem[_442] = 26
            mem[_442 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _481 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _481 + 68] = mem[idx + _442 + 32]
                idx = idx + 32
                continue 
            mem[_481 + 68] = mem[_481 + 74 len 26]
            revert with memory
              from mem[64]
               len _481 + -mem[64] + 100
        if 138 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 138:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _358 = mem[64]
        mem[64] = mem[64] + 64
        mem[_358] = 26
        mem[_358 + 32] = 'SafeMath: division by zero'
        require ext_code.size(AUTOAddress)
        call AUTOAddress.0x40c10f19 with:
             gas gas_remaining wei
            args devAddress, 138 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(AUTOAddress)
        call AUTOAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _441 = mem[64]
            mem[64] = mem[64] + 64
            mem[_441] = 26
            mem[_441 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _478 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _478 + 68] = mem[idx + _441 + 32]
                idx = idx + 32
                continue 
            mem[_478 + 68] = mem[_478 + 74 len 26]
            revert with memory
              from mem[64]
               len _478 + -mem[64] + 100
        if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _459 = mem[64]
        mem[64] = mem[64] + 64
        mem[_459] = 26
        mem[_459 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            if (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _494 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _494 + 68] = mem[idx + _459 + 32]
            idx = idx + 32
            continue 
        mem[_494 + 68] = mem[_494 + 74 len 26]
        revert with memory
          from mem[64]
           len _494 + -mem[64] + 100
}

function add(uint256 arg1, address arg2, bool arg3, address arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if sub_5dddda22Address != msg.sender:
        revert with 0, 'Not authorised'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.sharesTotal() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            require ext_code.size(AUTOAddress)
            staticcall AUTOAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= aUTOMaxSupply:
                _355 = mem[64]
                mem[64] = mem[64] + 64
                mem[_355] = 26
                mem[_355 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _356 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _356 + 68] = mem[idx + _355 + 32]
                        idx = idx + 32
                        continue 
                    mem[_356 + 68] = mem[_356 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _356 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _387 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_387] = 26
                    mem[_387 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _441 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_441] = 26
                        mem[_441 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _445 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _445 + 68] = mem[idx + _441 + 32]
                            idx = idx + 32
                            continue 
                        mem[_445 + 68] = mem[_445 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _445 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _443 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_443] = 26
                    mem[_443 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _453 + 68] = mem[idx + _443 + 32]
                        idx = idx + 32
                        continue 
                    mem[_453 + 68] = mem[_453 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _453 + -mem[64] + 100
                if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_391] = 26
                mem[_391 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 138 * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_442] = 26
                    mem[_442 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _450 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _450 + 68] = mem[idx + _442 + 32]
                        idx = idx + 32
                        continue 
                    mem[_450 + 68] = mem[_450 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _450 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _444 = mem[64]
                mem[64] = mem[64] + 64
                mem[_444] = 26
                mem[_444 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _461 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _461 + 68] = mem[idx + _444 + 32]
                    idx = idx + 32
                    continue 
                mem[_461 + 68] = mem[_461 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _461 + -mem[64] + 100
            _341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_341] = 30
            mem[_341 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                idx = 32
                while idx < 30:
                    mem[idx + mem[64] + 68] = mem[idx + _341 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - poolInfo[idx].field_512:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 26
                mem[_361 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _367 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _367 + 68] = mem[idx + _361 + 32]
                        idx = idx + 32
                        continue 
                    mem[_367 + 68] = mem[_367 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _367 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_397] = 26
                    mem[_397 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _460 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_460] = 26
                        mem[_460 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _482 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _482 + 68] = mem[idx + _460 + 32]
                            idx = idx + 32
                            continue 
                        mem[_482 + 68] = mem[_482 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _482 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_471] = 26
                    mem[_471 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _500 + 68] = mem[idx + _471 + 32]
                        idx = idx + 32
                        continue 
                    mem[_500 + 68] = mem[_500 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _500 + -mem[64] + 100
                if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_401] = 26
                mem[_401 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 138 * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _470 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_470] = 26
                    mem[_470 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _497 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _497 + 68] = mem[idx + _470 + 32]
                        idx = idx + 32
                        continue 
                    mem[_497 + 68] = mem[_497 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _497 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _481 = mem[64]
                mem[64] = mem[64] + 64
                mem[_481] = 26
                mem[_481 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _519 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _519 + 68] = mem[idx + _481 + 32]
                    idx = idx + 32
                    continue 
                mem[_519 + 68] = mem[_519 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _519 + -mem[64] + 100
            if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
                _363 = mem[64]
                mem[64] = mem[64] + 64
                mem[_363] = 26
                mem[_363 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _371 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _371 + 68] = mem[idx + _363 + 32]
                        idx = idx + 32
                        continue 
                    mem[_371 + 68] = mem[_371 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _371 + -mem[64] + 100
                if not 0 / totalAllocPoint:
                    _400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_400] = 26
                    mem[_400 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_469] = 26
                        mem[_469 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _494 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _494 + 68] = mem[idx + _469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_494 + 68] = mem[_494 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _494 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_480] = 26
                    mem[_480 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _516 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _516 + 68] = mem[idx + _480 + 32]
                        idx = idx + 32
                        continue 
                    mem[_516 + 68] = mem[_516 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _516 + -mem[64] + 100
                if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _405 = mem[64]
                mem[64] = mem[64] + 64
                mem[_405] = 26
                mem[_405 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 138 * 0 / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_479] = 26
                    mem[_479 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _513 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _513 + 68] = mem[idx + _479 + 32]
                        idx = idx + 32
                        continue 
                    mem[_513 + 68] = mem[_513 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _513 + -mem[64] + 100
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _493 = mem[64]
                mem[64] = mem[64] + 64
                mem[_493] = 26
                mem[_493 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _534 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _534 + 68] = mem[idx + _493 + 32]
                    idx = idx + 32
                    continue 
                mem[_534 + 68] = mem[_534 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _534 + -mem[64] + 100
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _366 = mem[64]
            mem[64] = mem[64] + 64
            mem[_366] = 26
            mem[_366 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _374 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _374 + 68] = mem[idx + _366 + 32]
                    idx = idx + 32
                    continue 
                mem[_374 + 68] = mem[_374 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _374 + -mem[64] + 100
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _404 = mem[64]
                mem[64] = mem[64] + 64
                mem[_404] = 26
                mem[_404 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _478 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_478] = 26
                    mem[_478 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _510 + 68] = mem[idx + _478 + 32]
                        idx = idx + 32
                        continue 
                    mem[_510 + 68] = mem[_510 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _510 + -mem[64] + 100
                if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _492 = mem[64]
                mem[64] = mem[64] + 64
                mem[_492] = 26
                mem[_492 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _531 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _531 + 68] = mem[idx + _492 + 32]
                    idx = idx + 32
                    continue 
                mem[_531 + 68] = mem[_531 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _531 + -mem[64] + 100
            if 138 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 138:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _408 = mem[64]
            mem[64] = mem[64] + 64
            mem[_408] = 26
            mem[_408 + 32] = 'SafeMath: division by zero'
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args devAddress, 138 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(AUTOAddress)
            call AUTOAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _491 = mem[64]
                mem[64] = mem[64] + 64
                mem[_491] = 26
                mem[_491 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _528 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _528 + 68] = mem[idx + _491 + 32]
                    idx = idx + 32
                    continue 
                mem[_528 + 68] = mem[_528 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _528 + -mem[64] + 100
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _509 = mem[64]
            mem[64] = mem[64] + 64
            mem[_509] = 26
            mem[_509 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                if (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _544 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _544 + 68] = mem[idx + _509 + 32]
                idx = idx + 32
                continue 
            mem[_544 + 68] = mem[_544 + 74 len 26]
            revert with memory
              from mem[64]
               len _544 + -mem[64] + 100
    if arg1 + totalAllocPoint < totalAllocPoint:
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
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if msg.sender == devAddress:
        if arg3:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 5
                if block.number <= poolInfo[idx].field_512:
                    idx = idx + 1
                    continue 
                require ext_code.size(poolInfo[idx].field_1024)
                staticcall poolInfo[idx].field_1024.sharesTotal() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                require ext_code.size(AUTOAddress)
                staticcall AUTOAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= aUTOMaxSupply:
                    _715 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_715] = 26
                    mem[_715 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _717 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _717 + 68] = mem[idx + _715 + 32]
                            idx = idx + 32
                            continue 
                        mem[_717 + 68] = mem[_717 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _717 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_775] = 26
                        mem[_775 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _883 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_883] = 26
                            mem[_883 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _894 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _894 + 68] = mem[idx + _883 + 32]
                                idx = idx + 32
                                continue 
                            mem[_894 + 68] = mem[_894 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _894 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _890 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_890] = 26
                        mem[_890 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _906 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _906 + 68] = mem[idx + _890 + 32]
                            idx = idx + 32
                            continue 
                        mem[_906 + 68] = mem[_906 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _906 + -mem[64] + 100
                    if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_784] = 26
                    mem[_784 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 138 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _889 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_889] = 26
                        mem[_889 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _903 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _903 + 68] = mem[idx + _889 + 32]
                            idx = idx + 32
                            continue 
                        mem[_903 + 68] = mem[_903 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _903 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_893] = 26
                    mem[_893 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _922 + 68] = mem[idx + _893 + 32]
                        idx = idx + 32
                        continue 
                    mem[_922 + 68] = mem[_922 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _922 + -mem[64] + 100
                _687 = mem[64]
                mem[64] = mem[64] + 64
                mem[_687] = 30
                mem[_687 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _687 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _725 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_725] = 26
                    mem[_725 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _738 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _738 + 68] = mem[idx + _725 + 32]
                            idx = idx + 32
                            continue 
                        mem[_738 + 68] = mem[_738 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _738 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _797 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_797] = 26
                        mem[_797 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _921 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_921] = 26
                            mem[_921 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _963 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _963 + 68] = mem[idx + _921 + 32]
                                idx = idx + 32
                                continue 
                            mem[_963 + 68] = mem[_963 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _963 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _941 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_941] = 26
                        mem[_941 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _996 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _996 + 68] = mem[idx + _941 + 32]
                            idx = idx + 32
                            continue 
                        mem[_996 + 68] = mem[_996 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _996 + -mem[64] + 100
                    if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _804 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_804] = 26
                    mem[_804 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 138 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_940] = 26
                        mem[_940 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _993 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _993 + 68] = mem[idx + _940 + 32]
                            idx = idx + 32
                            continue 
                        mem[_993 + 68] = mem[_993 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _993 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_962] = 26
                    mem[_962 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1033 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1033 + 68] = mem[idx + _962 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1033 + 68] = mem[_1033 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1033 + -mem[64] + 100
                if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
                    _731 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_731] = 26
                    mem[_731 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _747 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _747 + 68] = mem[idx + _731 + 32]
                            idx = idx + 32
                            continue 
                        mem[_747 + 68] = mem[_747 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _747 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _803 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_803] = 26
                        mem[_803 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _939 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_939] = 26
                            mem[_939 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                                mem[idx + _990 + 68] = mem[idx + _939 + 32]
                                idx = idx + 32
                                continue 
                            mem[_990 + 68] = mem[_990 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _990 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_961] = 26
                        mem[_961 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1030 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1030 + 68] = mem[idx + _961 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1030 + 68] = mem[_1030 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1030 + -mem[64] + 100
                    if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _814 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_814] = 26
                    mem[_814 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 138 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_960] = 26
                        mem[_960 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1027 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1027 + 68] = mem[idx + _960 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1027 + 68] = mem[_1027 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1027 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_989] = 26
                    mem[_989 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1067 + 68] = mem[idx + _989 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1067 + 68] = mem[_1067 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1067 + -mem[64] + 100
                if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _737 = mem[64]
                mem[64] = mem[64] + 64
                mem[_737] = 26
                mem[_737 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _753 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _753 + 68] = mem[idx + _737 + 32]
                        idx = idx + 32
                        continue 
                    mem[_753 + 68] = mem[_753 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _753 + -mem[64] + 100
                if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_813] = 26
                    mem[_813 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _959 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_959] = 26
                        mem[_959 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1024 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1024 + 68] = mem[idx + _959 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1024 + 68] = mem[_1024 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1024 + -mem[64] + 100
                    if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_988] = 26
                    mem[_988 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1064 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1064 + 68] = mem[idx + _988 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1064 + 68] = mem[_1064 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1064 + -mem[64] + 100
                if 138 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 138:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _821 = mem[64]
                mem[64] = mem[64] + 64
                mem[_821] = 26
                mem[_821 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 138 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _987 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_987] = 26
                    mem[_987 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1061 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1061 + 68] = mem[idx + _987 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1061 + 68] = mem[_1061 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1061 + -mem[64] + 100
                if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1023 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1023] = 26
                mem[_1023 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1093 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1093 + 68] = mem[idx + _1023 + 32]
                    idx = idx + 32
                    continue 
                mem[_1093 + 68] = mem[_1093 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1093 + -mem[64] + 100
    else:
        if governanceAddress != msg.sender:
            revert with 0, 'Not authorised'
        if arg3:
            idx = 0
            while idx < poolInfo.length:
                mem[0] = 5
                if block.number <= poolInfo[idx].field_512:
                    idx = idx + 1
                    continue 
                require ext_code.size(poolInfo[idx].field_1024)
                staticcall poolInfo[idx].field_1024.sharesTotal() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                require ext_code.size(AUTOAddress)
                staticcall AUTOAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= aUTOMaxSupply:
                    _716 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_716] = 26
                    mem[_716 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _720 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _720 + 68] = mem[idx + _716 + 32]
                            idx = idx + 32
                            continue 
                        mem[_720 + 68] = mem[_720 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _720 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _780 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_780] = 26
                        mem[_780 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _888 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_888] = 26
                            mem[_888 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _898 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _898 + 68] = mem[idx + _888 + 32]
                                idx = idx + 32
                                continue 
                            mem[_898 + 68] = mem[_898 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _898 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _892 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_892] = 26
                        mem[_892 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _914 + 68] = mem[idx + _892 + 32]
                            idx = idx + 32
                            continue 
                        mem[_914 + 68] = mem[_914 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _914 + -mem[64] + 100
                    if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _788 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_788] = 26
                    mem[_788 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 138 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _891 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_891] = 26
                        mem[_891 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _911 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _911 + 68] = mem[idx + _891 + 32]
                            idx = idx + 32
                            continue 
                        mem[_911 + 68] = mem[_911 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _911 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_897] = 26
                    mem[_897 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _931 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _931 + 68] = mem[idx + _897 + 32]
                        idx = idx + 32
                        continue 
                    mem[_931 + 68] = mem[_931 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _931 + -mem[64] + 100
                _688 = mem[64]
                mem[64] = mem[64] + 64
                mem[_688] = 30
                mem[_688 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    mem[mem[64] + 68] = 'SafeMath: subtraction overflow'
                    idx = 32
                    while idx < 30:
                        mem[idx + mem[64] + 68] = mem[idx + _688 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[idx].field_512:
                    _729 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_729] = 26
                    mem[_729 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _743 + 68] = mem[idx + _729 + 32]
                            idx = idx + 32
                            continue 
                        mem[_743 + 68] = mem[_743 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _743 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _800 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_800] = 26
                        mem[_800 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _930 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_930] = 26
                            mem[_930 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _978 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _978 + 68] = mem[idx + _930 + 32]
                                idx = idx + 32
                                continue 
                            mem[_978 + 68] = mem[_978 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _978 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_952] = 26
                        mem[_952 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1014 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1014 + 68] = mem[idx + _952 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1014 + 68] = mem[_1014 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1014 + -mem[64] + 100
                    if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _810 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_810] = 26
                    mem[_810 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 138 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _951 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_951] = 26
                        mem[_951 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1011 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1011 + 68] = mem[idx + _951 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1011 + 68] = mem[_1011 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1011 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_977] = 26
                    mem[_977 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1052 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1052 + 68] = mem[idx + _977 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1052 + 68] = mem[_1052 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1052 + -mem[64] + 100
                if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
                    _734 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_734] = 26
                    mem[_734 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _750 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _750 + 68] = mem[idx + _734 + 32]
                            idx = idx + 32
                            continue 
                        mem[_750 + 68] = mem[_750 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _750 + -mem[64] + 100
                    if not 0 / totalAllocPoint:
                        _809 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_809] = 26
                        mem[_809 + 32] = 'SafeMath: division by zero'
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(AUTOAddress)
                        call AUTOAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            _950 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_950] = 26
                            mem[_950 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.number
                                idx = idx + 1
                                continue 
                            _1008 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1008 + 68] = mem[idx + _950 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1008 + 68] = mem[_1008 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _1008 + -mem[64] + 100
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _976 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_976] = 26
                        mem[_976 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                            mem[idx + _1049 + 68] = mem[idx + _976 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1049 + 68] = mem[_1049 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1049 + -mem[64] + 100
                    if 138 * 0 / totalAllocPoint / 0 / totalAllocPoint != 138:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _818 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_818] = 26
                    mem[_818 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 138 * 0 / totalAllocPoint / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _975 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_975] = 26
                        mem[_975 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
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
                            mem[idx + _1046 + 68] = mem[idx + _975 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1046 + 68] = mem[_1046 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1046 + -mem[64] + 100
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1007] = 26
                    mem[_1007 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1083 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1083 + 68] = mem[idx + _1007 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1083 + 68] = mem[_1083 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1083 + -mem[64] + 100
                if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _742 = mem[64]
                mem[64] = mem[64] + 64
                mem[_742] = 26
                mem[_742 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _757 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _757 + 68] = mem[idx + _742 + 32]
                        idx = idx + 32
                        continue 
                    mem[_757 + 68] = mem[_757 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _757 + -mem[64] + 100
                if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_817] = 26
                    mem[_817 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(AUTOAddress)
                    call AUTOAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        _974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_974] = 26
                        mem[_974 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _1043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1043 + 68] = mem[idx + _974 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1043 + 68] = mem[_1043 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _1043 + -mem[64] + 100
                    if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1006 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1006] = 26
                    mem[_1006 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1080 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1080 + 68] = mem[idx + _1006 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1080 + 68] = mem[_1080 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1080 + -mem[64] + 100
                if 138 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 138:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _824 = mem[64]
                mem[64] = mem[64] + 64
                mem[_824] = 26
                mem[_824 + 32] = 'SafeMath: division by zero'
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 138 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(AUTOAddress)
                call AUTOAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _1005 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1005] = 26
                    mem[_1005 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0]:
                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _1077 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1077 + 68] = mem[idx + _1005 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1077 + 68] = mem[_1077 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _1077 + -mem[64] + 100
                if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1042 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1042] = 26
                mem[_1042 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0]:
                    if (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _1107 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _1107 + 68] = mem[idx + _1042 + 32]
                    idx = idx + 32
                    continue 
                mem[_1107 + 68] = mem[_1107 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _1107 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}



}
