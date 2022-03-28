contract main {




// =====================  Runtime code  =====================


address owner;
address alpaAddress;
address woolControllerAddress;
uint256 woolPerAlpaPerBlockInverse;
uint256 sub_2173ab17;
mapping of struct userInfo;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function sub_2173ab17(?) payable {
    return sub_2173ab17
}

function alpa() payable {
    return alpaAddress
}

function owner() payable {
    return owner
}

function woolController() payable {
    return woolControllerAddress
}

function woolPerAlpaPerBlockInverse() payable {
    return woolPerAlpaPerBlockInverse
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

function sub_01772e26(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_2173ab17 = arg1
}

function setWoolPerAlpaPerBlockInverse(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    woolPerAlpaPerBlockInverse = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function pendingWool(address arg1) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(arg1)].field_256 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[address(arg1)].field_0:
        if not woolPerAlpaPerBlockInverse:
            revert with 0, 'SafeMath: division by zero'
        return (0 / woolPerAlpaPerBlockInverse)
    if (block.number * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_256 * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != block.number - userInfo[address(arg1)].field_256:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not woolPerAlpaPerBlockInverse:
        revert with 0, 'SafeMath: division by zero'
    return ((block.number * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_256 * userInfo[address(arg1)].field_0) / woolPerAlpaPerBlockInverse)
}

function emergencyWithdraw() payable {
    if not userInfo[address(msg.sender)].field_0:
        revert with 0, 'WoolReward: insufficient balance'
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_256 = 0
    require ext_code.size(alpaAddress)
    staticcall alpaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(alpaAddress)
    if userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
        call alpaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, userInfo[address(msg.sender)].field_0
    else:
        call alpaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number > userInfo[address(msg.sender)].field_256:
        if userInfo[address(msg.sender)].field_256 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not userInfo[address(msg.sender)].field_0:
            if not woolPerAlpaPerBlockInverse:
                revert with 0, 'SafeMath: division by zero'
            if 0 / woolPerAlpaPerBlockInverse:
                require ext_code.size(woolControllerAddress)
                call woolControllerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0 / woolPerAlpaPerBlockInverse
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if (block.number * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) / userInfo[address(msg.sender)].field_0 != block.number - userInfo[address(msg.sender)].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not woolPerAlpaPerBlockInverse:
                revert with 0, 'SafeMath: division by zero'
            if (block.number * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) / woolPerAlpaPerBlockInverse:
                require ext_code.size(woolControllerAddress)
                call woolControllerAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, (block.number * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) / woolPerAlpaPerBlockInverse
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        if arg1 > userInfo[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[address(msg.sender)].field_0 -= arg1
        require ext_code.size(alpaAddress)
        staticcall alpaAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(alpaAddress)
        if arg1 <= ext_call.return_data[0]:
            call alpaAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1
        else:
            call alpaAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    userInfo[address(msg.sender)].field_256 = block.number
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 + userInfo[address(msg.sender)].field_0 > sub_2173ab17:
        revert with 0, 'WoolReward: max amount exceeded'
    if not userInfo[address(msg.sender)].field_0:
        if arg1:
            if arg1 + userInfo[address(msg.sender)].field_0 < userInfo[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[address(msg.sender)].field_0 += arg1
            if not ext_code.size(alpaAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call alpaAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
    else:
        if block.number <= userInfo[address(msg.sender)].field_256:
            if arg1:
                if arg1 + userInfo[address(msg.sender)].field_0 < userInfo[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[address(msg.sender)].field_0 += arg1
                if not ext_code.size(alpaAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call alpaAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
        else:
            if userInfo[address(msg.sender)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not userInfo[address(msg.sender)].field_0:
                if not woolPerAlpaPerBlockInverse:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / woolPerAlpaPerBlockInverse:
                    if arg1:
                        if arg1 + userInfo[address(msg.sender)].field_0 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if not ext_code.size(alpaAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        mem[516 len 0] = 0
                        call alpaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
                else:
                    require ext_code.size(woolControllerAddress)
                    call woolControllerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0 / woolPerAlpaPerBlockInverse
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg1:
                        if arg1 + userInfo[address(msg.sender)].field_0 < userInfo[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[address(msg.sender)].field_0 += arg1
                        if not ext_code.size(alpaAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[544 len 4] = 0
                        call alpaAddress with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 480, mem[516 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: subtraction overflow'
                        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[452]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 531 len 22]
            else:
                if (block.number * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) / userInfo[address(msg.sender)].field_0 != block.number - userInfo[address(msg.sender)].field_256:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not woolPerAlpaPerBlockInverse:
                    revert with 0, 'SafeMath: division by zero'
                if (block.number * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) / woolPerAlpaPerBlockInverse:
                    require ext_code.size(woolControllerAddress)
                    call woolControllerAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * userInfo[address(msg.sender)].field_0) - (userInfo[address(msg.sender)].field_256 * userInfo[address(msg.sender)].field_0) / woolPerAlpaPerBlockInverse
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if arg1:
                    if arg1 + userInfo[address(msg.sender)].field_0 < userInfo[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[address(msg.sender)].field_0 += arg1
                    if not ext_code.size(alpaAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[420 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[544 len 4] = 0
                    call alpaAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[516 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: subtraction overflow'
                    mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[452]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 531 len 22]
    userInfo[address(msg.sender)].field_256 = block.number
}



}
