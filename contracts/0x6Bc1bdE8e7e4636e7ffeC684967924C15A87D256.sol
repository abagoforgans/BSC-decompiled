contract main {




// =====================  Runtime code  =====================


const sub_ba2f6e5e(?) = block.timestamp


address owner;
uint256 stor1;
address sub_bd91af3aAddress;
uint256 sub_7eacbf34;
uint256 timeInterval;
uint256 sub_1794d0a9;
uint256 sub_7f3a9476;
array of struct poolInfo;
mapping of struct userInfo;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of struct stor75276140696391174450305814049576319106646922510300487059720162673006384432778;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, bool(poolInfo[arg1].field_512), bool(poolInfo[arg1].field_520)
}

function sub_1794d0a9(?) payable {
    return sub_1794d0a9
}

function sub_7eacbf34(?) payable {
    return sub_7eacbf34
}

function sub_7f3a9476(?) payable {
    return sub_7f3a9476
}

function owner() payable {
    return owner
}

function timeInterval() payable {
    return timeInterval
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768,
           userInfo[arg1][arg2].field_1024
}

function sub_bd91af3a(?) payable {
    return sub_bd91af3aAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_3838bada(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    timeInterval = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg2 - arg1)
}

function sub_ad5cc43e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_7f3a9476 = arg1
    sub_1794d0a9 = arg2
    emit 0x44803fa0: arg1, arg2
}

function sub_aeaa00e6(?) payable {
    require calldata.size - 4 >= 64
    if userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_512 <= block.timestamp:
            return 1
        else:
            return 0
    else:
        return 0
}

function setEmergencyWithdrawnable(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_520 = Mask(248, 0, arg2)
}

function add(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    storA66C[stor7.length] = block.timestamp
    storA66C[stor7.length].field_0 = uint8(arg2)
    storA66C[stor7.length].field_8 = 0
    storA66C[stor7.length].field_16 = Mask(240, 16, arg2) >> 16
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

function sub_04f51656(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(sub_bd91af3aAddress)
    staticcall sub_bd91af3aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_bd91af3aAddress)
    if arg2 <= ext_call.return_data[0]:
        call sub_bd91af3aAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        call sub_bd91af3aAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64736166654d756c74695061645472616e736665723a205472616e73666572206661696c65,
                    mem[201 len 27]
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_520:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6521656d657267656e637957697468647261776e61626c65206e6f7420616c6c6f7765,
                    mem[199 len 29]
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = block.timestamp
    if not ext_code.size(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                            0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    stor1 = 1
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require ext_code.size(sub_bd91af3aAddress)
    staticcall sub_bd91af3aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    if not userInfo[arg1][msg.sender].field_768:
        revert with 0, 'withdraw: not good'
    if ext_call.return_data[0] <= userInfo[arg1][msg.sender].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63,
                    mem[201 len 27]
    if not poolInfo[arg1].field_512:
        revert with 0, 'Only allow Mpad stake'
    if userInfo[arg1][msg.sender].field_768 > 0:
        if userInfo[arg1][msg.sender].field_1024 < block.timestamp:
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_800
            call poolInfo[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args userInfo[arg1][msg.sender].field_768, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_768
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500, mem[370 len 22]
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
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 371 len 22]
            userInfo[arg1][msg.sender].field_768 = 0
            userInfo[arg1][msg.sender].field_1024 = 0
    emit Claim(userInfo[arg1][msg.sender].field_768, msg.sender, arg1);
    stor1 = 1
}

function sub_b71496c3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_256:
        return 0
    if not userInfo[arg1][address(arg2)].field_0:
        return 0
    if userInfo[arg1][address(arg2)].field_256 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7eacbf34:
        revert with 0, 'SafeMath: division by zero'
    if 365 * sub_7eacbf34 / sub_7eacbf34 != 365:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 365 * sub_7eacbf34:
        revert with 0, 'SafeMath: division by zero'
    if not userInfo[arg1][address(arg2)].field_0:
        return 0
    if poolInfo[arg1].field_512:
        if sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_7f3a9476 / 365 * sub_7eacbf34:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100:
            return 0
        if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100) - (userInfo[arg1][address(arg2)].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100) / sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100 != block.timestamp - userInfo[arg1][address(arg2)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return ((block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100) - (userInfo[arg1][address(arg2)].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100) / 10^12)
    if sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != sub_1794d0a9 / 365 * sub_7eacbf34:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100:
        return 0
    if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100) - (userInfo[arg1][address(arg2)].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100) / sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100 != block.timestamp - userInfo[arg1][address(arg2)].field_256:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    return ((block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100) - (userInfo[arg1][address(arg2)].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(arg2)].field_0 / 100) / 10^12)
}

function Harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require ext_code.size(sub_bd91af3aAddress)
    staticcall sub_bd91af3aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_512:
        if userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_7eacbf34:
                revert with 0, 'SafeMath: division by zero'
            if 365 * sub_7eacbf34 / sub_7eacbf34 != 365:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 365 * sub_7eacbf34:
                revert with 0, 'SafeMath: division by zero'
            if not userInfo[arg1][msg.sender].field_0:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
                revert with 0, 'You are not allow to harvest'
            if sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_7f3a9476 / 365 * sub_7eacbf34:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
                revert with 0, 'You are not allow to harvest'
            if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100 != block.timestamp - userInfo[arg1][msg.sender].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
            if not (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                revert with 0, 'You are not allow to harvest'
            userInfo[arg1][msg.sender].field_256 = block.timestamp
            require ext_code.size(sub_bd91af3aAddress)
            staticcall sub_bd91af3aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_bd91af3aAddress)
            if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12 <= ext_call.return_data[0]:
                call sub_bd91af3aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12
            else:
                call sub_bd91af3aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 37, 0x64736166654d756c74695061645472616e736665723a205472616e73666572206661696c65, mem[457 len 27]
    else:
        if userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_7eacbf34:
                revert with 0, 'SafeMath: division by zero'
            if 365 * sub_7eacbf34 / sub_7eacbf34 != 365:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 365 * sub_7eacbf34:
                revert with 0, 'SafeMath: division by zero'
            if not userInfo[arg1][msg.sender].field_0:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
                revert with 0, 'You are not allow to harvest'
            if sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_1794d0a9 / 365 * sub_7eacbf34:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
                revert with 0, 'You are not allow to harvest'
            if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100 != block.timestamp - userInfo[arg1][msg.sender].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
            if not (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                revert with 0, 'You are not allow to harvest'
            userInfo[arg1][msg.sender].field_256 = block.timestamp
            require ext_code.size(sub_bd91af3aAddress)
            staticcall sub_bd91af3aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_bd91af3aAddress)
            if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12 <= ext_call.return_data[0]:
                call sub_bd91af3aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12
            else:
                call sub_bd91af3aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 37, 0x64736166654d756c74695061645472616e736665723a205472616e73666572206661696c65, mem[457 len 27]
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(sub_bd91af3aAddress)
    staticcall sub_bd91af3aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_512:
        if not userInfo[arg1][msg.sender].field_0:
            if arg2:
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[ceil32(return_data.size) + 403 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                userInfo[arg1][msg.sender].field_256 = block.timestamp
        else:
            if userInfo[arg1][msg.sender].field_256 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_7eacbf34:
                revert with 0, 'SafeMath: division by zero'
            if 365 * sub_7eacbf34 / sub_7eacbf34 != 365:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 365 * sub_7eacbf34:
                revert with 0, 'SafeMath: division by zero'
            if not userInfo[arg1][msg.sender].field_0:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
                revert with 0, 'You are not allow to harvest'
            if sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_7f3a9476 / 365 * sub_7eacbf34:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
                revert with 0, 'You are not allow to harvest'
            if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100 != block.timestamp - userInfo[arg1][msg.sender].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
            if not (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                revert with 0, 'You are not allow to harvest'
            userInfo[arg1][msg.sender].field_256 = block.timestamp
            require ext_code.size(sub_bd91af3aAddress)
            staticcall sub_bd91af3aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_bd91af3aAddress)
            if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12 <= ext_call.return_data[0]:
                call sub_bd91af3aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12
            else:
                call sub_bd91af3aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 37, 0x64736166654d756c74695061645472616e736665723a205472616e73666572206661696c65, mem[457 len 27]
            if arg2:
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[672 len 4] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 659 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                userInfo[arg1][msg.sender].field_256 = block.timestamp
    else:
        if not userInfo[arg1][msg.sender].field_0:
            if arg2:
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[416 len 4] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[ceil32(return_data.size) + 403 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                userInfo[arg1][msg.sender].field_256 = block.timestamp
        else:
            if userInfo[arg1][msg.sender].field_256 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_7eacbf34:
                revert with 0, 'SafeMath: division by zero'
            if 365 * sub_7eacbf34 / sub_7eacbf34 != 365:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not 365 * sub_7eacbf34:
                revert with 0, 'SafeMath: division by zero'
            if not userInfo[arg1][msg.sender].field_0:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
                revert with 0, 'You are not allow to harvest'
            if sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_1794d0a9 / 365 * sub_7eacbf34:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
                revert with 0, 'You are not allow to harvest'
            if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100 != block.timestamp - userInfo[arg1][msg.sender].field_256:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if ext_call.return_data[0] <= (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[457 len 27]
            if not (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                revert with 0, 'You are not allow to harvest'
            userInfo[arg1][msg.sender].field_256 = block.timestamp
            require ext_code.size(sub_bd91af3aAddress)
            staticcall sub_bd91af3aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_bd91af3aAddress)
            if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12 <= ext_call.return_data[0]:
                call sub_bd91af3aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12
            else:
                call sub_bd91af3aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 37, 0x64736166654d756c74695061645472616e736665723a205472616e73666572206661696c65, mem[457 len 27]
            if arg2:
                if not ext_code.size(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[548 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                mem[672 len 4] = 0
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg2) << 480, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeBEP20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[580]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                    mem[ceil32(return_data.size) + 659 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                userInfo[arg1][msg.sender].field_256 = block.timestamp
    emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require ext_code.size(sub_bd91af3aAddress)
    staticcall sub_bd91af3aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    if ext_call.return_data[0] <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63,
                    mem[201 len 27]
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_256:
        revert with 0, 'withdraw: not good'
    if not userInfo[arg1][address(msg.sender)].field_0:
        revert with 0, 'withdraw: not good'
    if userInfo[arg1][address(msg.sender)].field_256 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7eacbf34:
        revert with 0, 'SafeMath: division by zero'
    if 365 * sub_7eacbf34 / sub_7eacbf34 != 365:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not 365 * sub_7eacbf34:
        revert with 0, 'SafeMath: division by zero'
    if not userInfo[arg1][address(msg.sender)].field_0:
        revert with 0, 'withdraw: not good'
    if poolInfo[arg1].field_512:
        if sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != sub_7f3a9476 / 365 * sub_7eacbf34:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100:
            revert with 0, 'withdraw: not good'
        if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100) - (userInfo[arg1][address(msg.sender)].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100) / sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100 != block.timestamp - userInfo[arg1][address(msg.sender)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100) - (userInfo[arg1][address(msg.sender)].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100) / 10^12 <= 0:
            revert with 0, 'withdraw: not good'
    else:
        if sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != sub_1794d0a9 / 365 * sub_7eacbf34:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100:
            revert with 0, 'withdraw: not good'
        if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100) - (userInfo[arg1][address(msg.sender)].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100) / sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100 != block.timestamp - userInfo[arg1][address(msg.sender)].field_256:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100) - (userInfo[arg1][address(msg.sender)].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][address(msg.sender)].field_0 / 100) / 10^12 <= 0:
            revert with 0, 'withdraw: not good'
    if arg2:
        require ext_code.size(sub_bd91af3aAddress)
        staticcall sub_bd91af3aAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1 < poolInfo.length
        if poolInfo[arg1].field_512:
            if not userInfo[arg1][msg.sender].field_0:
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if poolInfo[arg1].field_512:
                    userInfo[arg1][msg.sender].field_768 += arg2
                    if timeInterval + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_1024 = timeInterval + block.timestamp
                else:
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[ceil32(return_data.size) + 691 len 22]
            else:
                if userInfo[arg1][msg.sender].field_256 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_7eacbf34:
                    revert with 0, 'SafeMath: division by zero'
                if 365 * sub_7eacbf34 / sub_7eacbf34 != 365:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not 365 * sub_7eacbf34:
                    revert with 0, 'SafeMath: division by zero'
                if not userInfo[arg1][msg.sender].field_0:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[713 len 27]
                    revert with 0, 'You are not allow to harvest'
                if sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_7f3a9476 / 365 * sub_7eacbf34:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[713 len 27]
                    revert with 0, 'You are not allow to harvest'
                if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100 != block.timestamp - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if ext_call.return_data[0] <= (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[713 len 27]
                if not (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                    revert with 0, 'You are not allow to harvest'
                userInfo[arg1][msg.sender].field_256 = block.timestamp
                require ext_code.size(sub_bd91af3aAddress)
                staticcall sub_bd91af3aAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_bd91af3aAddress)
                if (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12 <= ext_call.return_data[0]:
                    call sub_bd91af3aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_7f3a9476 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12
                else:
                    call sub_bd91af3aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 32, 37, 0x64736166654d756c74695061645472616e736665723a205472616e73666572206661696c65, mem[713 len 27]
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if poolInfo[arg1].field_512:
                    userInfo[arg1][msg.sender].field_768 += arg2
                    if timeInterval + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_1024 = timeInterval + block.timestamp
                else:
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[900 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[ceil32(return_data.size) + 947 len 22]
        else:
            if not userInfo[arg1][msg.sender].field_0:
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if poolInfo[arg1].field_512:
                    userInfo[arg1][msg.sender].field_768 += arg2
                    if timeInterval + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_1024 = timeInterval + block.timestamp
                else:
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[644 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[612]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[ceil32(return_data.size) + 691 len 22]
            else:
                if userInfo[arg1][msg.sender].field_256 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_7eacbf34:
                    revert with 0, 'SafeMath: division by zero'
                if 365 * sub_7eacbf34 / sub_7eacbf34 != 365:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if not 365 * sub_7eacbf34:
                    revert with 0, 'SafeMath: division by zero'
                if not userInfo[arg1][msg.sender].field_0:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[713 len 27]
                    revert with 0, 'You are not allow to harvest'
                if sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != sub_1794d0a9 / 365 * sub_7eacbf34:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[713 len 27]
                    revert with 0, 'You are not allow to harvest'
                if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100 != block.timestamp - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                if ext_call.return_data[0] <= (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                    revert with 0, 32, 37, 0x73436f6e747261637420646f65737420636f6e7461696e20656e6f7567682062616c616e63, mem[713 len 27]
                if not (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12:
                    revert with 0, 'You are not allow to harvest'
                userInfo[arg1][msg.sender].field_256 = block.timestamp
                require ext_code.size(sub_bd91af3aAddress)
                staticcall sub_bd91af3aAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_bd91af3aAddress)
                if (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12 <= ext_call.return_data[0]:
                    call sub_bd91af3aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (block.timestamp * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) - (userInfo[arg1][msg.sender].field_256 * sub_1794d0a9 / 365 * sub_7eacbf34 * userInfo[arg1][msg.sender].field_0 / 100) / 10^12
                else:
                    call sub_bd91af3aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 32, 37, 0x64736166654d756c74695061645472616e736665723a205472616e73666572206661696c65, mem[713 len 27]
                if arg2 > userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][msg.sender].field_0 -= arg2
                if poolInfo[arg1].field_512:
                    userInfo[arg1][msg.sender].field_768 += arg2
                    if timeInterval + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_1024 = timeInterval + block.timestamp
                else:
                    if not ext_code.size(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 224, mem[900 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeBEP20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x5361666542455032303a204245503230206f7065726174696f6e20646964206e6f742073756363656500,
                                        mem[ceil32(return_data.size) + 947 len 22]
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
