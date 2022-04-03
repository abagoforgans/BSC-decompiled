contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - set(uint256 arg1, uint256 arg2, bool arg3)
#  - withdrawAll(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address AUTOAddress;
address aUTOv2Address;
uint32 stor3;
address burnAddress;
uint256 stor3;
uint256 ownerAUTOReward;
uint256 aUTOMaxSupply;
uint256 aUTOPerBlock;
uint256 startBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;

function ownerAUTOReward() payable {
    return ownerAUTOReward
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

function totalAllocPoint() payable {
    return totalAllocPoint
}

function startBlock() payable {
    return startBlock
}

function AUTO() payable {
    return AUTOAddress
}

function burnAddress() payable {
    return address(burnAddress)
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function AUTOMaxSupply() payable {
    return aUTOMaxSupply
}

function AUTOPerBlock() payable {
    return aUTOPerBlock
}

function AUTOv2() payable {
    return aUTOv2Address
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(aUTOv2Address)
    staticcall aUTOv2Address.0x18160ddd with:
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

function inCaseTokensGetStuck(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == aUTOv2Address:
        revert with 0, '!safe'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
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
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x42da4eb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[arg1][address(arg2)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(arg2)].field_0 != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if ext_call.return_data[0]:
                return (userInfo[arg1][address(arg2)].field_0 * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x42da4eb3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x44a3955e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][address(msg.sender)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.0xf3fef3a3 with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
    else:
        require userInfo[arg1][address(msg.sender)].field_0
        if userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / userInfo[arg1][address(msg.sender)].field_0 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.0xf3fef3a3 with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
        call poolInfo[arg1].field_0 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        emit EmergencyWithdraw((userInfo[arg1][address(msg.sender)].field_0 * ext_call.return_data[0] / ext_call.return_data[0]), msg.sender, arg1);
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}

function migrateToAUTOv2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aUTOv2Address)
    staticcall aUTOv2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= aUTOMaxSupply:
        revert with 0, 'too late :('
    require ext_code.size(AUTOAddress)
    staticcall AUTOAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(burnAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(AUTOAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
    call AUTOAddress with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] + arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] + arg1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if ext_code.size(AUTOAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(burnAddress), Mask(224, 32, arg1) >> 32
        mem[580 len 4] = 0
        call AUTOAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[552 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] + arg1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor3):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[566 len 14],
                            0,
                            mem[584 len 4]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        require ext_code.size(aUTOv2Address)
        call aUTOv2Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if ext_code.size(AUTOAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 96] = unknown_0x23b872dd(?????), msg.sender, address(burnAddress), Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 581 len 4] = 0
        call AUTOAddress with:
           funct uint32(stor3)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0] + arg1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor3):
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 14],
                            0,
                            mem[ceil32(return_data.size) + 585 len 4]
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_1024)
        staticcall poolInfo[arg1].field_1024.0x44a3955e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(aUTOv2Address)
            staticcall aUTOv2Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= aUTOMaxSupply:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args owner, 0
                else:
                    require 0 / totalAllocPoint
                    if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
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
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        require ext_code.size(aUTOv2Address)
                        call aUTOv2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args owner, 0
                    else:
                        require 0 / totalAllocPoint
                        if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        require ext_code.size(aUTOv2Address)
                        call aUTOv2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
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
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) / block.number - poolInfo[arg1].field_512 != aUTOPerBlock:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            require ext_code.size(aUTOv2Address)
                            call aUTOv2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args owner, 0
                        else:
                            require 0 / totalAllocPoint
                            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(aUTOv2Address)
                            call aUTOv2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(aUTOv2Address)
                        call aUTOv2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
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
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock)
                        if (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            require ext_code.size(aUTOv2Address)
                            call aUTOv2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args owner, 0
                        else:
                            require (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != ownerAUTOReward:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            require ext_code.size(aUTOv2Address)
                            call aUTOv2Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args owner, (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint * ownerAUTOReward / 1000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(aUTOv2Address)
                        call aUTOv2Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function pendingAUTO(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.0x44a3955e with:
            gas gas_remaining wei
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require ext_code.size(aUTOv2Address)
    staticcall aUTOv2Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= aUTOMaxSupply:
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
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
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
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
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
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) / block.number - poolInfo[arg1].field_512 != aUTOPerBlock:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock):
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
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock)
    if (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / (block.number * aUTOPerBlock) - (poolInfo[arg1].field_512 * aUTOPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
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
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * aUTOPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * aUTOPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 8
        if block.number <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        require ext_code.size(poolInfo[idx].field_1024)
        staticcall poolInfo[idx].field_1024.0x44a3955e with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        require ext_code.size(aUTOv2Address)
        staticcall aUTOv2Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= aUTOMaxSupply:
            _297 = mem[64]
            mem[64] = mem[64] + 64
            mem[_297] = 26
            mem[_297 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _298 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_298 + idx + 68] = mem[_297 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_298 + 68] = mem[_298 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _298 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_328] = 26
                mem[_328 + 32] = 'SafeMath: division by zero'
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_373] = 26
                    mem[_373 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _384 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_384 + idx + 68] = mem[_373 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_384 + 68] = mem[_384 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _384 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _383 = mem[64]
                mem[64] = mem[64] + 64
                mem[_383] = 26
                mem[_383 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _395 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_395 + idx + 68] = mem[_383 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_395 + 68] = mem[_395 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _395 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _333 = mem[64]
            mem[64] = mem[64] + 64
            mem[_333] = 26
            mem[_333 + 32] = 'SafeMath: division by zero'
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_382] = 26
                mem[_382 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _392 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_392 + idx + 68] = mem[_382 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_392 + 68] = mem[_392 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _392 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _391 = mem[64]
            mem[64] = mem[64] + 64
            mem[_391] = 26
            mem[_391 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _406 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_406 + idx + 68] = mem[_391 + idx + 32]
                idx = idx + 32
                continue 
            mem[_406 + 68] = mem[_406 + 74 len 26]
            revert with memory
              from mem[64]
               len _406 + -mem[64] + 100
        _287 = mem[64]
        mem[64] = mem[64] + 64
        mem[_287] = 30
        mem[_287 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _288 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_288 + idx + 68] = mem[_287 + idx + 32]
                idx = idx + 32
                continue 
            mem[_288 + 68] = mem[_288 + 70 len 30]
            revert with memory
              from mem[64]
               len _288 + -mem[64] + 100
        if not block.number - poolInfo[idx].field_512:
            _302 = mem[64]
            mem[64] = mem[64] + 64
            mem[_302] = 26
            mem[_302 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _309 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_309 + idx + 68] = mem[_302 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_309 + 68] = mem[_309 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _309 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _337 = mem[64]
                mem[64] = mem[64] + 64
                mem[_337] = 26
                mem[_337 + 32] = 'SafeMath: division by zero'
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _399 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_399] = 26
                    mem[_399 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _415 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_415 + idx + 68] = mem[_399 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_415 + 68] = mem[_415 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _415 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _414 = mem[64]
                mem[64] = mem[64] + 64
                mem[_414] = 26
                mem[_414 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _441 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_441 + idx + 68] = mem[_414 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_441 + 68] = mem[_441 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _441 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_343] = 26
            mem[_343 + 32] = 'SafeMath: division by zero'
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _413 = mem[64]
                mem[64] = mem[64] + 64
                mem[_413] = 26
                mem[_413 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _438 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_438 + idx + 68] = mem[_413 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_438 + 68] = mem[_438 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _438 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _437 = mem[64]
            mem[64] = mem[64] + 64
            mem[_437] = 26
            mem[_437 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                mem[_469 + idx + 68] = mem[_437 + idx + 32]
                idx = idx + 32
                continue 
            mem[_469 + 68] = mem[_469 + 74 len 26]
            revert with memory
              from mem[64]
               len _469 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
            _308 = mem[64]
            mem[64] = mem[64] + 64
            mem[_308] = 26
            mem[_308 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_313 + idx + 68] = mem[_308 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_313 + 68] = mem[_313 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _313 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_342] = 26
                mem[_342 + 32] = 'SafeMath: division by zero'
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _412 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_412] = 26
                    mem[_412 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _434 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_434 + idx + 68] = mem[_412 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_434 + 68] = mem[_434 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _434 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _433 = mem[64]
                mem[64] = mem[64] + 64
                mem[_433] = 26
                mem[_433 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _465 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_465 + idx + 68] = mem[_433 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_465 + 68] = mem[_465 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _465 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _351 = mem[64]
            mem[64] = mem[64] + 64
            mem[_351] = 26
            mem[_351 + 32] = 'SafeMath: division by zero'
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _432 = mem[64]
                mem[64] = mem[64] + 64
                mem[_432] = 26
                mem[_432 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _462 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_462 + idx + 68] = mem[_432 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_462 + 68] = mem[_462 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _462 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _461 = mem[64]
            mem[64] = mem[64] + 64
            mem[_461] = 26
            mem[_461 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _493 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_493 + idx + 68] = mem[_461 + idx + 32]
                idx = idx + 32
                continue 
            mem[_493 + 68] = mem[_493 + 74 len 26]
            revert with memory
              from mem[64]
               len _493 + -mem[64] + 100
        require (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock)
        if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _312 = mem[64]
        mem[64] = mem[64] + 64
        mem[_312] = 26
        mem[_312 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _319 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_319 + idx + 68] = mem[_312 + idx + 32]
                idx = idx + 32
                continue 
            mem[_319 + 68] = mem[_319 + 74 len 26]
            revert with memory
              from mem[64]
               len _319 + -mem[64] + 100
        require totalAllocPoint
        if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _350 = mem[64]
            mem[64] = mem[64] + 64
            mem[_350] = 26
            mem[_350 + 32] = 'SafeMath: division by zero'
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args owner, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _431 = mem[64]
                mem[64] = mem[64] + 64
                mem[_431] = 26
                mem[_431 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _458 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_458 + idx + 68] = mem[_431 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_458 + 68] = mem[_458 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _458 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _457 = mem[64]
            mem[64] = mem[64] + 64
            mem[_457] = 26
            mem[_457 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _489 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_489 + idx + 68] = mem[_457 + idx + 32]
                idx = idx + 32
                continue 
            mem[_489 + 68] = mem[_489 + 74 len 26]
            revert with memory
              from mem[64]
               len _489 + -mem[64] + 100
        require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerAUTOReward:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _356 = mem[64]
        mem[64] = mem[64] + 64
        mem[_356] = 26
        mem[_356 + 32] = 'SafeMath: division by zero'
        require ext_code.size(aUTOv2Address)
        call aUTOv2Address.0x40c10f19 with:
             gas gas_remaining wei
            args owner, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(aUTOv2Address)
        call aUTOv2Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _456 = mem[64]
            mem[64] = mem[64] + 64
            mem[_456] = 26
            mem[_456 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _486 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_486 + idx + 68] = mem[_456 + idx + 32]
                idx = idx + 32
                continue 
            mem[_486 + 68] = mem[_486 + 74 len 26]
            revert with memory
              from mem[64]
               len _486 + -mem[64] + 100
        require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _485 = mem[64]
        mem[64] = mem[64] + 64
        mem[_485] = 26
        mem[_485 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _516 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_516 + idx + 68] = mem[_485 + idx + 32]
            idx = idx + 32
            continue 
        mem[_516 + 68] = mem[_516 + 74 len 26]
        revert with memory
          from mem[64]
           len _516 + -mem[64] + 100
}

function add(uint256 arg1, address arg2, bool arg3, address arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 8
            if block.number <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            require ext_code.size(poolInfo[idx].field_1024)
            staticcall poolInfo[idx].field_1024.0x44a3955e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            require ext_code.size(aUTOv2Address)
            staticcall aUTOv2Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= aUTOMaxSupply:
                _353 = mem[64]
                mem[64] = mem[64] + 64
                mem[_353] = 26
                mem[_353 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _354 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_354 + idx + 68] = mem[_353 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_354 + 68] = mem[_354 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _354 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _384 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_384] = 26
                    mem[_384 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = 26
                        mem[_429 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _440 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_440 + idx + 68] = mem[_429 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_440 + 68] = mem[_440 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _440 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _439 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_439] = 26
                    mem[_439 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _451 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_451 + idx + 68] = mem[_439 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_451 + 68] = mem[_451 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _451 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _389 = mem[64]
                mem[64] = mem[64] + 64
                mem[_389] = 26
                mem[_389 + 32] = 'SafeMath: division by zero'
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _438 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_438] = 26
                    mem[_438 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _448 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_448 + idx + 68] = mem[_438 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_448 + 68] = mem[_448 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _448 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _447 = mem[64]
                mem[64] = mem[64] + 64
                mem[_447] = 26
                mem[_447 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _462 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_462 + idx + 68] = mem[_447 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_462 + 68] = mem[_462 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _462 + -mem[64] + 100
            _343 = mem[64]
            mem[64] = mem[64] + 64
            mem[_343] = 30
            mem[_343 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _344 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_344 + idx + 68] = mem[_343 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_344 + 68] = mem[_344 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _344 + -mem[64] + 100
            if not block.number - poolInfo[idx].field_512:
                _358 = mem[64]
                mem[64] = mem[64] + 64
                mem[_358] = 26
                mem[_358 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _365 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_365 + idx + 68] = mem[_358 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_365 + 68] = mem[_365 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _365 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = 26
                    mem[_393 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_455] = 26
                        mem[_455 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _471 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_471 + idx + 68] = mem[_455 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_471 + 68] = mem[_471 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _471 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _470 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_470] = 26
                    mem[_470 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _497 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_497 + idx + 68] = mem[_470 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_497 + 68] = mem[_497 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _497 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _399 = mem[64]
                mem[64] = mem[64] + 64
                mem[_399] = 26
                mem[_399 + 32] = 'SafeMath: division by zero'
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_469] = 26
                    mem[_469 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                        mem[_494 + idx + 68] = mem[_469 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_494 + 68] = mem[_494 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _494 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _493 = mem[64]
                mem[64] = mem[64] + 64
                mem[_493] = 26
                mem[_493 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _525 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_525 + idx + 68] = mem[_493 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_525 + 68] = mem[_525 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _525 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
                _364 = mem[64]
                mem[64] = mem[64] + 64
                mem[_364] = 26
                mem[_364 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _369 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_369 + idx + 68] = mem[_364 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_369 + 68] = mem[_369 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _369 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_398] = 26
                    mem[_398 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args owner, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(aUTOv2Address)
                    call aUTOv2Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _468 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_468] = 26
                        mem[_468 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _490 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_490 + idx + 68] = mem[_468 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_490 + 68] = mem[_490 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _490 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_489] = 26
                    mem[_489 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _521 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_521 + idx + 68] = mem[_489 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_521 + 68] = mem[_521 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _521 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _407 = mem[64]
                mem[64] = mem[64] + 64
                mem[_407] = 26
                mem[_407 + 32] = 'SafeMath: division by zero'
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args owner, 0 / totalAllocPoint * ownerAUTOReward / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_488] = 26
                    mem[_488 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _518 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_518 + idx + 68] = mem[_488 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_518 + 68] = mem[_518 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _518 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _517 = mem[64]
                mem[64] = mem[64] + 64
                mem[_517] = 26
                mem[_517 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _549 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_549 + idx + 68] = mem[_517 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_549 + 68] = mem[_549 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _549 + -mem[64] + 100
            require (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock)
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _368 = mem[64]
            mem[64] = mem[64] + 64
            mem[_368] = 26
            mem[_368 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _375 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_375 + idx + 68] = mem[_368 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_375 + 68] = mem[_375 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _375 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _406 = mem[64]
                mem[64] = mem[64] + 64
                mem[_406] = 26
                mem[_406 + 32] = 'SafeMath: division by zero'
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args owner, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(aUTOv2Address)
                call aUTOv2Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                    _487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_487] = 26
                    mem[_487 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _514 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_514 + idx + 68] = mem[_487 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_514 + 68] = mem[_514 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _514 + -mem[64] + 100
                require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _513 = mem[64]
                mem[64] = mem[64] + 64
                mem[_513] = 26
                mem[_513 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _545 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_545 + idx + 68] = mem[_513 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_545 + 68] = mem[_545 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _545 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _412 = mem[64]
            mem[64] = mem[64] + 64
            mem[_412] = 26
            mem[_412 + 32] = 'SafeMath: division by zero'
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args owner, (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(aUTOv2Address)
            call aUTOv2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(this.address), (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _512 = mem[64]
                mem[64] = mem[64] + 64
                mem[_512] = 26
                mem[_512 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _542 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_542 + idx + 68] = mem[_512 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_542 + 68] = mem[_542 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _542 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _541 = mem[64]
            mem[64] = mem[64] + 64
            mem[_541] = 26
            mem[_541 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _572 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_572 + idx + 68] = mem[_541 + idx + 32]
                idx = idx + 32
                continue 
            mem[_572 + 68] = mem[_572 + 74 len 26]
            revert with memory
              from mem[64]
               len _572 + -mem[64] + 100
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
    poolInfo[poolInfo.length].field_1024 = arg4
}



}
