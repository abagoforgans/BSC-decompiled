contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - withdrawAll(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address AUTOAddress;
address aUTOv2Address;
uint32 stor4;
address burnAddress;
uint256 stor4;
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
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
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
    if not userInfo[arg1][address(msg.sender)].field_0:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.withdraw(address rg1, uint256 rg2) with:
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
        call poolInfo[arg1].field_1024.withdraw(address rg1, uint256 rg2) with:
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
    stor1 = 1
}

function migrateToAUTOv2(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number >= 5033333:
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
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
    call AUTOAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] + arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] + arg1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if ext_code.size(AUTOAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[456 len 96] = unknown_0x23b872dd(?????), msg.sender, address(burnAddress), Mask(224, 32, arg1) >> 32
        mem[580 len 4] = 0
        call AUTOAddress with:
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[552 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] + arg1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
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
           funct uint32(stor4)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 553 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), ext_call.return_data[0] + arg1
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
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
        staticcall poolInfo[arg1].field_1024.sharesTotal() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            require ext_code.size(aUTOv2Address)
            staticcall aUTOv2Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < aUTOMaxSupply:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.number - poolInfo[arg1].field_512 > 0:
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
        mem[0] = 9
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
        require ext_code.size(aUTOv2Address)
        staticcall aUTOv2Address.0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= aUTOMaxSupply:
            idx = idx + 1
            continue 
        _223 = mem[64]
        mem[64] = mem[64] + 64
        mem[_223] = 30
        mem[_223 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _224 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_224 + idx + 68] = mem[_223 + idx + 32]
                idx = idx + 32
                continue 
            mem[_224 + 68] = mem[_224 + 70 len 30]
            revert with memory
              from mem[64]
               len _224 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 <= 0:
            idx = idx + 1
            continue 
        if not block.number - poolInfo[idx].field_512:
            _233 = mem[64]
            mem[64] = mem[64] + 64
            mem[_233] = 26
            mem[_233 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _237 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_237 + idx + 68] = mem[_233 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_237 + 68] = mem[_237 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _237 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _261 = mem[64]
                mem[64] = mem[64] + 64
                mem[_261] = 26
                mem[_261 + 32] = 'SafeMath: division by zero'
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
                    _297 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_297] = 26
                    mem[_297 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _305 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_305 + idx + 68] = mem[_297 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_305 + 68] = mem[_305 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _305 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _304 = mem[64]
                mem[64] = mem[64] + 64
                mem[_304] = 26
                mem[_304 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _322 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_322 + idx + 68] = mem[_304 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_322 + 68] = mem[_322 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _322 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_265] = 26
            mem[_265 + 32] = 'SafeMath: division by zero'
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
                _303 = mem[64]
                mem[64] = mem[64] + 64
                mem[_303] = 26
                mem[_303 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _319 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_319 + idx + 68] = mem[_303 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_319 + 68] = mem[_319 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _319 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _318 = mem[64]
            mem[64] = mem[64] + 64
            mem[_318] = 26
            mem[_318 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _343 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_343 + idx + 68] = mem[_318 + idx + 32]
                idx = idx + 32
                continue 
            mem[_343 + 68] = mem[_343 + 74 len 26]
            revert with memory
              from mem[64]
               len _343 + -mem[64] + 100
        require block.number - poolInfo[idx].field_512
        if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
            _236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_236] = 26
            mem[_236 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _241 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_241 + idx + 68] = mem[_236 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_241 + 68] = mem[_241 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _241 + -mem[64] + 100
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                _264 = mem[64]
                mem[64] = mem[64] + 64
                mem[_264] = 26
                mem[_264 + 32] = 'SafeMath: division by zero'
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
                    _302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_302] = 26
                    mem[_302 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _315 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_315 + idx + 68] = mem[_302 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_315 + 68] = mem[_315 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _315 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_314] = 26
                mem[_314 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _339 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_339 + idx + 68] = mem[_314 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_339 + 68] = mem[_339 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _339 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _269 = mem[64]
            mem[64] = mem[64] + 64
            mem[_269] = 26
            mem[_269 + 32] = 'SafeMath: division by zero'
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
                _313 = mem[64]
                mem[64] = mem[64] + 64
                mem[_313] = 26
                mem[_313 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _336 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_336 + idx + 68] = mem[_313 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_336 + 68] = mem[_336 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _336 + -mem[64] + 100
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _335 = mem[64]
            mem[64] = mem[64] + 64
            mem[_335] = 26
            mem[_335 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _365 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_365 + idx + 68] = mem[_335 + idx + 32]
                idx = idx + 32
                continue 
            mem[_365 + 68] = mem[_365 + 74 len 26]
            revert with memory
              from mem[64]
               len _365 + -mem[64] + 100
        require (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock)
        if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _240 = mem[64]
        mem[64] = mem[64] + 64
        mem[_240] = 26
        mem[_240 + 32] = 'SafeMath: division by zero'
        if totalAllocPoint <= 0:
            _247 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_247 + idx + 68] = mem[_240 + idx + 32]
                idx = idx + 32
                continue 
            mem[_247 + 68] = mem[_247 + 74 len 26]
            revert with memory
              from mem[64]
               len _247 + -mem[64] + 100
        require totalAllocPoint
        if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
            _268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_268] = 26
            mem[_268 + 32] = 'SafeMath: division by zero'
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
                _312 = mem[64]
                mem[64] = mem[64] + 64
                mem[_312] = 26
                mem[_312 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _332 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_332 + idx + 68] = mem[_312 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_332 + 68] = mem[_332 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _332 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _331 = mem[64]
            mem[64] = mem[64] + 64
            mem[_331] = 26
            mem[_331 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _361 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_361 + idx + 68] = mem[_331 + idx + 32]
                idx = idx + 32
                continue 
            mem[_361 + 68] = mem[_361 + 74 len 26]
            revert with memory
              from mem[64]
               len _361 + -mem[64] + 100
        require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerAUTOReward:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _272 = mem[64]
        mem[64] = mem[64] + 64
        mem[_272] = 26
        mem[_272 + 32] = 'SafeMath: division by zero'
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
            _330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_330] = 26
            mem[_330 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _358 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_358 + idx + 68] = mem[_330 + idx + 32]
                idx = idx + 32
                continue 
            mem[_358 + 68] = mem[_358 + 74 len 26]
            revert with memory
              from mem[64]
               len _358 + -mem[64] + 100
        require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
        if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _357 = mem[64]
        mem[64] = mem[64] + 64
        mem[_357] = 26
        mem[_357 + 32] = 'SafeMath: division by zero'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0]
            if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        _388 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_388 + idx + 68] = mem[_357 + idx + 32]
            idx = idx + 32
            continue 
        mem[_388 + 68] = mem[_388 + 74 len 26]
        revert with memory
          from mem[64]
           len _388 + -mem[64] + 100
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
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
            require ext_code.size(aUTOv2Address)
            staticcall aUTOv2Address.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= aUTOMaxSupply:
                idx = idx + 1
                continue 
            _265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_265] = 30
            mem[_265 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _266 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_266 + idx + 68] = mem[_265 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_266 + 68] = mem[_266 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _266 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 <= 0:
                idx = idx + 1
                continue 
            if not block.number - poolInfo[idx].field_512:
                _275 = mem[64]
                mem[64] = mem[64] + 64
                mem[_275] = 26
                mem[_275 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _279 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_279 + idx + 68] = mem[_275 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_279 + 68] = mem[_279 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _279 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_303] = 26
                    mem[_303 + 32] = 'SafeMath: division by zero'
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
                        _339 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_339] = 26
                        mem[_339 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _347 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_347 + idx + 68] = mem[_339 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_347 + 68] = mem[_347 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _347 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _346 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_346] = 26
                    mem[_346 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _364 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_364 + idx + 68] = mem[_346 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_364 + 68] = mem[_364 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _364 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _307 = mem[64]
                mem[64] = mem[64] + 64
                mem[_307] = 26
                mem[_307 + 32] = 'SafeMath: division by zero'
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
                    _345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_345] = 26
                    mem[_345 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _361 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_361 + idx + 68] = mem[_345 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_361 + 68] = mem[_361 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _361 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _360 = mem[64]
                mem[64] = mem[64] + 64
                mem[_360] = 26
                mem[_360 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _385 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_385 + idx + 68] = mem[_360 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_385 + 68] = mem[_385 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _385 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
                _278 = mem[64]
                mem[64] = mem[64] + 64
                mem[_278] = 26
                mem[_278 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _283 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_283 + idx + 68] = mem[_278 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_283 + 68] = mem[_283 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _283 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _306 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_306] = 26
                    mem[_306 + 32] = 'SafeMath: division by zero'
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
                        _344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_344] = 26
                        mem[_344 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _357 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_357 + idx + 68] = mem[_344 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_357 + 68] = mem[_357 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _357 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_356] = 26
                    mem[_356 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _381 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_381 + idx + 68] = mem[_356 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_381 + 68] = mem[_381 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _381 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_311] = 26
                mem[_311 + 32] = 'SafeMath: division by zero'
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
                    _355 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_355] = 26
                    mem[_355 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_378 + idx + 68] = mem[_355 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_378 + 68] = mem[_378 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _378 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _377 = mem[64]
                mem[64] = mem[64] + 64
                mem[_377] = 26
                mem[_377 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _407 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_407 + idx + 68] = mem[_377 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_407 + 68] = mem[_407 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _407 + -mem[64] + 100
            require (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock)
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _282 = mem[64]
            mem[64] = mem[64] + 64
            mem[_282] = 26
            mem[_282 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _289 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_289 + idx + 68] = mem[_282 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_289 + 68] = mem[_289 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _289 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_310] = 26
                mem[_310 + 32] = 'SafeMath: division by zero'
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
                    _354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_354] = 26
                    mem[_354 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _374 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_374 + idx + 68] = mem[_354 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_374 + 68] = mem[_374 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _374 + -mem[64] + 100
                require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_373] = 26
                mem[_373 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _403 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_403 + idx + 68] = mem[_373 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_403 + 68] = mem[_403 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _403 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _314 = mem[64]
            mem[64] = mem[64] + 64
            mem[_314] = 26
            mem[_314 + 32] = 'SafeMath: division by zero'
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
                _372 = mem[64]
                mem[64] = mem[64] + 64
                mem[_372] = 26
                mem[_372 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
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
                    mem[_400 + idx + 68] = mem[_372 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_400 + 68] = mem[_400 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _400 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _399 = mem[64]
            mem[64] = mem[64] + 64
            mem[_399] = 26
            mem[_399 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _430 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_430 + idx + 68] = mem[_399 + idx + 32]
                idx = idx + 32
                continue 
            mem[_430 + 68] = mem[_430 + 74 len 26]
            revert with memory
              from mem[64]
               len _430 + -mem[64] + 100
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3, address arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
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
            require ext_code.size(aUTOv2Address)
            staticcall aUTOv2Address.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= aUTOMaxSupply:
                idx = idx + 1
                continue 
            _279 = mem[64]
            mem[64] = mem[64] + 64
            mem[_279] = 30
            mem[_279 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _280 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_280 + idx + 68] = mem[_279 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_280 + 68] = mem[_280 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _280 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 <= 0:
                idx = idx + 1
                continue 
            if not block.number - poolInfo[idx].field_512:
                _289 = mem[64]
                mem[64] = mem[64] + 64
                mem[_289] = 26
                mem[_289 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _293 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_293 + idx + 68] = mem[_289 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_293 + 68] = mem[_293 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _293 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _317 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_317] = 26
                    mem[_317 + 32] = 'SafeMath: division by zero'
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
                        _353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_353] = 26
                        mem[_353 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _361 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_361 + idx + 68] = mem[_353 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_361 + 68] = mem[_361 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _361 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_360] = 26
                    mem[_360 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_378 + idx + 68] = mem[_360 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_378 + 68] = mem[_378 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _378 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_321] = 26
                mem[_321 + 32] = 'SafeMath: division by zero'
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
                    _359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_359] = 26
                    mem[_359 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _375 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_375 + idx + 68] = mem[_359 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_375 + 68] = mem[_375 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _375 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _374 = mem[64]
                mem[64] = mem[64] + 64
                mem[_374] = 26
                mem[_374 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _399 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_399 + idx + 68] = mem[_374 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_399 + 68] = mem[_399 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _399 + -mem[64] + 100
            require block.number - poolInfo[idx].field_512
            if (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) / block.number - poolInfo[idx].field_512 != aUTOPerBlock:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock):
                _292 = mem[64]
                mem[64] = mem[64] + 64
                mem[_292] = 26
                mem[_292 + 32] = 'SafeMath: division by zero'
                if totalAllocPoint <= 0:
                    _297 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_297 + idx + 68] = mem[_292 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_297 + 68] = mem[_297 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _297 + -mem[64] + 100
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    _320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_320] = 26
                    mem[_320 + 32] = 'SafeMath: division by zero'
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
                        _358 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_358] = 26
                        mem[_358 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0] > 0:
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        _371 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_371 + idx + 68] = mem[_358 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_371 + 68] = mem[_371 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _371 + -mem[64] + 100
                    require 0 / totalAllocPoint
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_370] = 26
                    mem[_370 + 32] = 'SafeMath: division by zero'
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
                        mem[_395 + idx + 68] = mem[_370 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_395 + 68] = mem[_395 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _395 + -mem[64] + 100
                require 0 / totalAllocPoint
                if 0 / totalAllocPoint * ownerAUTOReward / 0 / totalAllocPoint != ownerAUTOReward:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_325] = 26
                mem[_325 + 32] = 'SafeMath: division by zero'
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
                    _369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_369] = 26
                    mem[_369 + 32] = 'SafeMath: division by zero'
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
                        mem[_392 + idx + 68] = mem[_369 + idx + 32]
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
                _421 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_421 + idx + 68] = mem[_391 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_421 + 68] = mem[_421 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _421 + -mem[64] + 100
            require (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock)
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / (block.number * aUTOPerBlock) - (poolInfo[idx].field_512 * aUTOPerBlock) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _296 = mem[64]
            mem[64] = mem[64] + 64
            mem[_296] = 26
            mem[_296 + 32] = 'SafeMath: division by zero'
            if totalAllocPoint <= 0:
                _303 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_303 + idx + 68] = mem[_296 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_303 + 68] = mem[_303 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _303 + -mem[64] + 100
            require totalAllocPoint
            if not (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                _324 = mem[64]
                mem[64] = mem[64] + 64
                mem[_324] = 26
                mem[_324 + 32] = 'SafeMath: division by zero'
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
                    _368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_368] = 26
                    mem[_368 + 32] = 'SafeMath: division by zero'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0]
                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    _388 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_388 + idx + 68] = mem[_368 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_388 + 68] = mem[_388 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _388 + -mem[64] + 100
                require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _387 = mem[64]
                mem[64] = mem[64] + 64
                mem[_387] = 26
                mem[_387 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _417 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_417 + idx + 68] = mem[_387 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_417 + 68] = mem[_417 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _417 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint * ownerAUTOReward / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != ownerAUTOReward:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _328 = mem[64]
            mem[64] = mem[64] + 64
            mem[_328] = 26
            mem[_328 + 32] = 'SafeMath: division by zero'
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
                _386 = mem[64]
                mem[64] = mem[64] + 64
                mem[_386] = 26
                mem[_386 + 32] = 'SafeMath: division by zero'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0]
                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                    poolInfo[idx].field_512 = block.number
                    idx = idx + 1
                    continue 
                _414 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_414 + idx + 68] = mem[_386 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_414 + 68] = mem[_414 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _414 + -mem[64] + 100
            require (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint
            if 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _413 = mem[64]
            mem[64] = mem[64] + 64
            mem[_413] = 26
            mem[_413 + 32] = 'SafeMath: division by zero'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0]
                if poolInfo[idx].field_768 + (10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * aUTOPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * aUTOPerBlock * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
                idx = idx + 1
                continue 
            _444 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_444 + idx + 68] = mem[_413 + idx + 32]
                idx = idx + 32
                continue 
            mem[_444 + 68] = mem[_444 + 74 len 26]
            revert with memory
              from mem[64]
               len _444 + -mem[64] + 100
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
