contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address addrAdmin; offset 8
address operatorAddress;
address sub_ec42b87fAddress;
address blinkPoolAddress;
address addrOperator;
address addrTokenDev;
address sub_fe8b8a05Address;
uint256 sub_67b487da;
uint64 stor8;
uint256 stor8; offset 64
uint256 sub_da08f714;
uint64 sub_586939ac;
uint64 sub_fb28e03b; offset 64
mapping of struct stor10;

function operator() {
    return operatorAddress
}

function sub_586939ac(?) {
    return sub_586939ac
}

function sub_67b487da(?) {
    return sub_67b487da
}

function blinkPool() {
    return blinkPoolAddress
}

function isPaused() {
    return bool(stor0)
}

function addrAdmin() {
    return addrAdmin
}

function addrTokenDev() {
    return addrTokenDev
}

function addrOperator() {
    return addrOperator
}

function sub_da08f714(?) {
    return sub_da08f714
}

function sub_ec42b87f(?) {
    return sub_ec42b87fAddress
}

function sub_fb28e03b(?) {
    return sub_fb28e03b
}

function sub_fe8b8a05(?) {
    return sub_fe8b8a05Address
}

function _fallback() payable {
    revert
}

function sub_cded5132(?) {
    return sub_ec42b87fAddress, blinkPoolAddress
}

function sub_9fc6af1d(?) {
    return sub_586939ac, sub_586939ac, uint64(stor8.field_0)
}

function sub_2b0b4d3d(?) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    sub_67b487da = arg1
}

function setPause(bool arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    stor0 = uint8(arg1)
}

function sub_3e11fdcc(?) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    sub_fe8b8a05Address = arg1
}

function sub_96a3713d(?) {
    if arg1 <= 0:
        return 0
    return arg1, stor10[arg1].field_0, stor10[arg1].field_0, stor10[arg1].field_64
}

function setOperator(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    addrOperator = arg1
}

function setTokenDevAddr(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    addrTokenDev = arg1
}

function sub_b8edb976(?) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    require arg2
    sub_ec42b87fAddress = arg1
    blinkPoolAddress = arg2
}

function setAdmin(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_newAdmin can't be address 0'
    addrAdmin = arg1
}

function sub_740f32f2(?) {
    if addrAdmin != msg.sender:
        require msg.sender == addrOperator
    require arg2 > arg1
    require arg3 >= 5000
    require arg3 <= 50000
    uint64(stor8.field_0) = arg3
    Mask(192, 0, stor8.field_64) = 0
    sub_586939ac = arg1
    sub_fb28e03b = arg2
}

function sub_e07703af(?) {
    if addrAdmin != msg.sender:
        require msg.sender == addrOperator
    require arg1 > 0
    require arg3 > arg2
    if not arg4:
        stor10[arg1].field_0 = 0
        stor10[arg1].field_64 = 0
        stor10[arg1].field_128 = 0
        stor10[arg1].field_0 = stor10[arg1].field_0
    else:
        require arg4 >= 5000
        require arg4 <= 50000
        if not arg4:
            stor10[arg1].field_0 = 0
            stor10[arg1].field_64 = 0
            stor10[arg1].field_128 = 0
            stor10[arg1].field_0 = stor10[arg1].field_0
        else:
            stor10[arg1].field_0 = uint64(arg1)
            stor10[arg1].field_64 = arg4
            stor10[arg1].field_128 = arg2
            stor10[arg1].field_192 = arg3
}

function getDevBLinkAmount() {
    require ext_code.size(blinkPoolAddress)
    call blinkPoolAddress.getDevCacheBalance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_ec42b87fAddress)
    call sub_ec42b87fAddress.0x70a08231 with:
         gas gas_remaining wei
        args addrTokenDev
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_fe8b8a05Address:
        return (2 * ext_call.return_data[0])
    require ext_code.size(sub_ec42b87fAddress)
    call sub_ec42b87fAddress.0x70a08231 with:
         gas gas_remaining wei
        args sub_fe8b8a05Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return (2 * ext_call.return_data[0])
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (3 * ext_call.return_data[0])
}

function sub_03f21072(?) {
    require ext_code.size(blinkPoolAddress)
    call blinkPoolAddress.getPoolBLinkBalance() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
    if sub_da08f714 <= 0:
        if stor10[arg1].field_64 <= 0:
            if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                require -sub_67b487da + 100
                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                    return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
            else:
                require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                    revert with 0, 'SafeMath: multiplication overflow'
                require -sub_67b487da + 100
                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                    revert with 0, 'SafeMath: addition overflow'
                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                    return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                           arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
        else:
            if uint64(block.timestamp) < stor10[arg1].field_128:
                if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                    require -sub_67b487da + 100
                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                        return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
                else:
                    require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                    if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require -sub_67b487da + 100
                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                        return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                               arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
            else:
                if uint64(block.timestamp) > stor10[arg1].field_192:
                    if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                        require -sub_67b487da + 100
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                            return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
                    else:
                        require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                        if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require -sub_67b487da + 100
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                            return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                                   arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
                else:
                    if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                        require -sub_67b487da + 100
                        if 0 / -sub_67b487da + 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 / -sub_67b487da + 100 <= ext_call.return_data[0]:
                            return 0, 0 / -sub_67b487da + 100
                    else:
                        require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                        if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != stor10[arg1].field_64:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                            require -sub_67b487da + 100
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_0 / 10000, 
                                       0 / -sub_67b487da + 100
                        else:
                            require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000
                            if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 != sub_67b487da:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require -sub_67b487da + 100
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_0 / 10000, 
                                       arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100
    else:
        if uint64(block.timestamp) < sub_586939ac:
            if stor10[arg1].field_64 <= 0:
                if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                    require -sub_67b487da + 100
                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                        return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
                else:
                    require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                    if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require -sub_67b487da + 100
                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                        revert with 0, 'SafeMath: addition overflow'
                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                        return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                               arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
            else:
                if uint64(block.timestamp) < stor10[arg1].field_128:
                    if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                        require -sub_67b487da + 100
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                            return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
                    else:
                        require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                        if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require -sub_67b487da + 100
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                            return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                                   arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
                else:
                    if uint64(block.timestamp) > stor10[arg1].field_192:
                        if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            require -sub_67b487da + 100
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
                        else:
                            require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                            if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require -sub_67b487da + 100
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                                       arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
                    else:
                        if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            require -sub_67b487da + 100
                            if 0 / -sub_67b487da + 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 / -sub_67b487da + 100 <= ext_call.return_data[0]:
                                return 0, 0 / -sub_67b487da + 100
                        else:
                            require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                            if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != stor10[arg1].field_64:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                                require -sub_67b487da + 100
                                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                    return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_0 / 10000, 
                                           0 / -sub_67b487da + 100
                            else:
                                require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000
                                if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 != sub_67b487da:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require -sub_67b487da + 100
                                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                    return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_0 / 10000, 
                                           arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100
        else:
            if uint64(block.timestamp) <= sub_fb28e03b:
                if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                    require -sub_67b487da + 100
                    if 0 / -sub_67b487da + 100 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 / -sub_67b487da + 100 <= ext_call.return_data[0]:
                        return 0, 0 / -sub_67b487da + 100
                else:
                    require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                    if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_da08f714:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000:
                        require -sub_67b487da + 100
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                            return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000, 
                                   0 / -sub_67b487da + 100
                    else:
                        require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000
                        if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000 != sub_67b487da:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require -sub_67b487da + 100
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                            return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000, 
                                   arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_da08f714 / 10000 * sub_67b487da / -sub_67b487da + 100
            else:
                if stor10[arg1].field_64 <= 0:
                    if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                        require -sub_67b487da + 100
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                            return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
                    else:
                        require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                        if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require -sub_67b487da + 100
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                            return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                                   arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
                else:
                    if uint64(block.timestamp) < stor10[arg1].field_128:
                        if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                            require -sub_67b487da + 100
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
                        else:
                            require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                            if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require -sub_67b487da + 100
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                                       arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
                    else:
                        if uint64(block.timestamp) > stor10[arg1].field_192:
                            if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                                require -sub_67b487da + 100
                                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                    return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 0 / -sub_67b487da + 100
                            else:
                                require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                                if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != sub_67b487da:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                require -sub_67b487da + 100
                                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                    return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10, 
                                           arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * sub_67b487da / -sub_67b487da + 100
                        else:
                            if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10:
                                require -sub_67b487da + 100
                                if 0 / -sub_67b487da + 100 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 0 / -sub_67b487da + 100 <= ext_call.return_data[0]:
                                    return 0, 0 / -sub_67b487da + 100
                            else:
                                require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10
                                if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 != stor10[arg1].field_64:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                                    require -sub_67b487da + 100
                                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (0 / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (0 / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                        return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_0 / 10000, 
                                               0 / -sub_67b487da + 100
                                else:
                                    require arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000
                                    if arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 != sub_67b487da:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require -sub_67b487da + 100
                                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100) < arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000) + (arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100) <= ext_call.return_data[0]:
                                        return arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_0 / 10000, 
                                               arg2 / 10^10 / (-ext_call.return_data[0] + 3 * 10^14 / 185185000 * 3600) + 10 * stor10[arg1].field_64 / 10000 * sub_67b487da / -sub_67b487da + 100
    if not ext_call.return_data[0]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return 0, ext_call.return_data[0]
    require ext_call.return_data[0]
    if (100 * ext_call.return_data[0]) - (sub_67b487da * ext_call.return_data[0]) / ext_call.return_data[0] != -sub_67b487da + 100:
        revert with 0, 'SafeMath: multiplication overflow'
    if (100 * ext_call.return_data[0]) - (sub_67b487da * ext_call.return_data[0]) / 100 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (100 * ext_call.return_data[0]) - (sub_67b487da * ext_call.return_data[0]) / 100, 
           ext_call.return_data[0] - ((100 * ext_call.return_data[0]) - (sub_67b487da * ext_call.return_data[0]) / 100)
}



}
