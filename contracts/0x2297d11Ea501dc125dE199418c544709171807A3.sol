contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
uint256 totalSupply;
uint256 totalFee;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor10;
address deadAddress; offset 8
address devAddress;
uint256 sub_a14c80fb;
uint256 devFee;
mapping of uint8 stor14;
uint8 stor15;
uint8 stor15; offset 8
address stor15; offset 16
uint256 stor15; offset 8

function sub_03a91c19(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function totalFee() payable {
    return totalFee
}

function deadAddress() payable {
    return deadAddress
}

function decimals() payable {
    return decimals
}

function devAddress() payable {
    return devAddress
}

function devFee() payable {
    return devFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a14c80fb(?) payable {
    return sub_a14c80fb
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_f656dcfe(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    return bool(stor14[address(arg1)])
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

function sub_659ce43d(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function sub_813e5139(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 0
}

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
}

function sub_0d802766(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor15.field_0) = uint8(arg1)
}

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function sub_4c4357f5(?) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor15.field_8) = Mask(248, 0, arg1)
}

function sub_bbf486e8(?) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg2
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'Amopunt'
    if not arg1:
        revert with 0, 'Amopunt'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_507fb3c3(?) payable {
    require calldata.size - 4 >= 64
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 != msg.sender:
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

function sub_f6bdc121(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 14
        stor14[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_65f3a67e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if stor1 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        if not msg.sender:
            revert with 0, 'Amopunt'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Amopunt'
        mem[0] = msg.sender
        mem[32] = 2
        _35 = mem[64]
        mem[64] = mem[64] + 64
        mem[_35] = 30
        mem[_35 + 32] = 'SafeMath: subtraction overflow'
        if arg2 > balanceOf[address(msg.sender)]:
            _36 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_36 + idx + 68] = mem[_35 + idx + 32]
                idx = idx + 32
                continue 
            mem[_36 + 68] = mem[_36 + 70 len 30]
            revert with memory
              from mem[64]
               len _36 + -mem[64] + 100
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[address(_29)] + arg2 < balanceOf[address(_29)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = address(_29)
        mem[32] = 2
        balanceOf[address(_29)] += arg2
        mem[mem[64]] = arg2
        emit Transfer(arg2, msg.sender, address(_29));
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4[address(msg.sender)]:
        if not msg.sender:
            revert with 0, 'Amopunt'
        else:
            if not arg1:
                revert with 0, 'Amopunt'
            else:
                if arg2 <= 0:
                    revert with 0, 'Amopunt'
                else:
                    if not uint8(stor15.field_0):
                        if not msg.sender:
                            revert with 0, 'Amopunt'
                        else:
                            if not arg1:
                                revert with 0, 'Amopunt'
                            else:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                    else:
                        if stor14[address(msg.sender)]:
                            revert with 0, 'Amopunt'
                        else:
                            if not msg.sender:
                                revert with 0, 'Amopunt'
                            else:
                                if not arg1:
                                    revert with 0, 'Amopunt'
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
    else:
        if not stor4[address(arg1)]:
            if arg2:
                require arg2
                if arg2 * devFee / arg2 != devFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                else:
                    if arg2:
                        require arg2
                        if arg2 * sub_a14c80fb / arg2 != sub_a14c80fb:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        else:
                            if not msg.sender:
                                revert with 0, 'Amopunt'
                            else:
                                if not devAddress:
                                    revert with 0, 'Amopunt'
                                else:
                                    if arg2 * devFee / 100 <= 0:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if not uint8(stor15.field_0):
                                            if not msg.sender:
                                                revert with 0, 'Amopunt'
                                            else:
                                                if not devAddress:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if arg2 * devFee / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        balanceOf[address(msg.sender)] -= arg2 * devFee / 100
                                                        if balanceOf[stor11] + (arg2 * devFee / 100) < balanceOf[stor11]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            balanceOf[stor11] += arg2 * devFee / 100
                                                            emit Transfer((arg2 * devFee / 100), msg.sender, devAddress);
                                                            if not msg.sender:
                                                                revert with 0, 'Amopunt'
                                                            else:
                                                                if not deadAddress:
                                                                    revert with 0, 'Amopunt'
                                                                else:
                                                                    if arg2 * sub_a14c80fb / 100 <= 0:
                                                                        revert with 0, 'Amopunt'
                                                                    else:
                                                                        if not uint8(stor15.field_0):
                                                                            if not msg.sender:
                                                                                revert with 0, 'Amopunt'
                                                                            else:
                                                                                if not deadAddress:
                                                                                    revert with 0, 'Amopunt'
                                                                                else:
                                                                                    if arg2 * sub_a14c80fb / 100 > balanceOf[address(msg.sender)]:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 100
                                                                                        if balanceOf[stor10] + (arg2 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            balanceOf[stor10] += arg2 * sub_a14c80fb / 100
                                                                                            emit Transfer((arg2 * sub_a14c80fb / 100), msg.sender, deadAddress);
                                                                                            if arg2 * devFee / 100 > arg2:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                if arg2 * sub_a14c80fb / 100 > arg2 - (arg2 * devFee / 100):
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    if not msg.sender:
                                                                                                        revert with 0, 'Amopunt'
                                                                                                    else:
                                                                                                        if not arg1:
                                                                                                            revert with 0, 'Amopunt'
                                                                                                        else:
                                                                                                            if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) <= 0:
                                                                                                                revert with 0, 'Amopunt'
                                                                                                            else:
                                                                                                                if not uint8(stor15.field_0):
                                                                                                                    if not msg.sender:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if not arg1:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                            else:
                                                                                                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
                                                                                                                                if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                else:
                                                                                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
                                                                                                                                    emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
                                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if stor14[address(msg.sender)]:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if not msg.sender:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not arg1:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                else:
                                                                                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
                                                                                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
                                                                                                                                        emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
                                                                                                                                        return 1
                                                                        else:
                                                                            if stor14[address(msg.sender)]:
                                                                                revert with 0, 'Amopunt'
                                                                            else:
                                                                                if not msg.sender:
                                                                                    revert with 0, 'Amopunt'
                                                                                else:
                                                                                    if not deadAddress:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if arg2 * sub_a14c80fb / 100 > balanceOf[address(msg.sender)]:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 100
                                                                                            if balanceOf[stor10] + (arg2 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                balanceOf[stor10] += arg2 * sub_a14c80fb / 100
                                                                                                emit Transfer((arg2 * sub_a14c80fb / 100), msg.sender, deadAddress);
                                                                                                if arg2 * devFee / 100 > arg2:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    if arg2 * sub_a14c80fb / 100 > arg2 - (arg2 * devFee / 100):
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        if not msg.sender:
                                                                                                            revert with 0, 'Amopunt'
                                                                                                        else:
                                                                                                            if not arg1:
                                                                                                                revert with 0, 'Amopunt'
                                                                                                            else:
                                                                                                                if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) <= 0:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if not uint8(stor15.field_0):
                                                                                                                        if not msg.sender:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not arg1:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                else:
                                                                                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
                                                                                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
                                                                                                                                        emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
                                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        if stor14[address(msg.sender)]:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not msg.sender:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
                                                                                                                                        if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
                                                                                                                                            emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
                                                                                                                                            return 1
                                        else:
                                            if stor14[address(msg.sender)]:
                                                revert with 0, 'Amopunt'
                                            else:
                                                if not msg.sender:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if not devAddress:
                                                        revert with 0, 'Amopunt'
                                                    else:
                                                        if arg2 * devFee / 100 > balanceOf[address(msg.sender)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            balanceOf[address(msg.sender)] -= arg2 * devFee / 100
                                                            if balanceOf[stor11] + (arg2 * devFee / 100) < balanceOf[stor11]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                balanceOf[stor11] += arg2 * devFee / 100
                                                                emit Transfer((arg2 * devFee / 100), msg.sender, devAddress);
                                                                if not msg.sender:
                                                                    revert with 0, 'Amopunt'
                                                                else:
                                                                    if not deadAddress:
                                                                        revert with 0, 'Amopunt'
                                                                    else:
                                                                        if arg2 * sub_a14c80fb / 100 <= 0:
                                                                            revert with 0, 'Amopunt'
                                                                        else:
                                                                            if not uint8(stor15.field_0):
                                                                                if not msg.sender:
                                                                                    revert with 0, 'Amopunt'
                                                                                else:
                                                                                    if not deadAddress:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if arg2 * sub_a14c80fb / 100 > balanceOf[address(msg.sender)]:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 100
                                                                                            if balanceOf[stor10] + (arg2 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                balanceOf[stor10] += arg2 * sub_a14c80fb / 100
                                                                                                emit Transfer((arg2 * sub_a14c80fb / 100), msg.sender, deadAddress);
                                                                                                if arg2 * devFee / 100 > arg2:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    if arg2 * sub_a14c80fb / 100 > arg2 - (arg2 * devFee / 100):
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        if not msg.sender:
                                                                                                            revert with 0, 'Amopunt'
                                                                                                        else:
                                                                                                            if not arg1:
                                                                                                                revert with 0, 'Amopunt'
                                                                                                            else:
                                                                                                                if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) <= 0:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if not uint8(stor15.field_0):
                                                                                                                        if not msg.sender:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not arg1:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                else:
                                                                                                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
                                                                                                                                    if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
                                                                                                                                        emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
                                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        if stor14[address(msg.sender)]:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not msg.sender:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
                                                                                                                                        if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
                                                                                                                                            emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
                                                                                                                                            return 1
                                                                            else:
                                                                                if stor14[address(msg.sender)]:
                                                                                    revert with 0, 'Amopunt'
                                                                                else:
                                                                                    if not msg.sender:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if not deadAddress:
                                                                                            revert with 0, 'Amopunt'
                                                                                        else:
                                                                                            if arg2 * sub_a14c80fb / 100 > balanceOf[address(msg.sender)]:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                balanceOf[address(msg.sender)] -= arg2 * sub_a14c80fb / 100
                                                                                                if balanceOf[stor10] + (arg2 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    balanceOf[stor10] += arg2 * sub_a14c80fb / 100
                                                                                                    emit Transfer((arg2 * sub_a14c80fb / 100), msg.sender, deadAddress);
                                                                                                    if arg2 * devFee / 100 > arg2:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        if arg2 * sub_a14c80fb / 100 > arg2 - (arg2 * devFee / 100):
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            if not msg.sender:
                                                                                                                revert with 0, 'Amopunt'
                                                                                                            else:
                                                                                                                if not arg1:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) <= 0:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if not uint8(stor15.field_0):
                                                                                                                            if not msg.sender:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
                                                                                                                                        if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
                                                                                                                                            emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
                                                                                                                                            return 1
                                                                                                                        else:
                                                                                                                            if stor14[address(msg.sender)]:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not msg.sender:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg1:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) > balanceOf[address(msg.sender)]:
                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * devFee / 100) + (arg2 * sub_a14c80fb / 100)
                                                                                                                                            if balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100) < balanceOf[address(arg1)]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)
                                                                                                                                                emit Transfer((arg2 - (arg2 * devFee / 100) - (arg2 * sub_a14c80fb / 100)), msg.sender, arg1);
                                                                                                                                                return 1
                    else:
                        if not msg.sender:
                            revert with 0, 'Amopunt'
                        else:
                            if not devAddress:
                                revert with 0, 'Amopunt'
                            else:
                                if arg2 * devFee / 100 <= 0:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not uint8(stor15.field_0):
                                        if not msg.sender:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if not devAddress:
                                                revert with 0, 'Amopunt'
                                            else:
                                                if arg2 * devFee / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    balanceOf[address(msg.sender)] -= arg2 * devFee / 100
                                                    if balanceOf[stor11] + (arg2 * devFee / 100) < balanceOf[stor11]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        balanceOf[stor11] += arg2 * devFee / 100
                                                        emit Transfer((arg2 * devFee / 100), msg.sender, devAddress);
                                                        if not msg.sender:
                                                            revert with 0, 'Amopunt'
                                                        else:
                                                            if not deadAddress:
                                                                revert with 0, 'Amopunt'
                                                            else:
                                                                revert with 0, 'Amopunt'
                                    else:
                                        if stor14[address(msg.sender)]:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if not msg.sender:
                                                revert with 0, 'Amopunt'
                                            else:
                                                if not devAddress:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if arg2 * devFee / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        balanceOf[address(msg.sender)] -= arg2 * devFee / 100
                                                        if balanceOf[stor11] + (arg2 * devFee / 100) < balanceOf[stor11]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            balanceOf[stor11] += arg2 * devFee / 100
                                                            emit Transfer((arg2 * devFee / 100), msg.sender, devAddress);
                                                            if not msg.sender:
                                                                revert with 0, 'Amopunt'
                                                            else:
                                                                if not deadAddress:
                                                                    revert with 0, 'Amopunt'
                                                                else:
                                                                    revert with 0, 'Amopunt'
            else:
                if arg2:
                    require arg2
                    if arg2 * sub_a14c80fb / arg2 != sub_a14c80fb:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    else:
                        if not msg.sender:
                            revert with 0, 'Amopunt'
                        else:
                            if not devAddress:
                                revert with 0, 'Amopunt'
                            else:
                                revert with 0, 'Amopunt'
                else:
                    if not msg.sender:
                        revert with 0, 'Amopunt'
                    else:
                        if not devAddress:
                            revert with 0, 'Amopunt'
                        else:
                            revert with 0, 'Amopunt'
        else:
            if not msg.sender:
                revert with 0, 'Amopunt'
            else:
                if not arg1:
                    revert with 0, 'Amopunt'
                else:
                    if arg2 <= 0:
                        revert with 0, 'Amopunt'
                    else:
                        if not uint8(stor15.field_0):
                            if not msg.sender:
                                revert with 0, 'Amopunt'
                            else:
                                if not arg1:
                                    revert with 0, 'Amopunt'
                                else:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                        else:
                            if stor14[address(msg.sender)]:
                                revert with 0, 'Amopunt'
                            else:
                                if not msg.sender:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not arg1:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                balanceOf[address(arg1)] += arg2
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not uint8(stor15.field_8):
        if stor4[address(msg.sender)]:
            if not arg1:
                revert with 0, 'Amopunt'
            else:
                if not arg2:
                    revert with 0, 'Amopunt'
                else:
                    if arg3 <= 0:
                        revert with 0, 'Amopunt'
                    else:
                        if not uint8(stor15.field_0):
                            if not arg1:
                                revert with 0, 'Amopunt'
                            else:
                                if not arg2:
                                    revert with 0, 'Amopunt'
                                else:
                                    if arg3 > balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        balanceOf[address(arg1)] -= arg3
                                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            balanceOf[address(arg2)] += arg3
                                            emit Transfer(arg3, arg1, arg2);
                                            return 1
                        else:
                            if stor14[address(arg1)]:
                                revert with 0, 'Amopunt'
                            else:
                                if not arg1:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not arg2:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
        else:
            if not stor4[address(arg2)]:
                if arg3:
                    require arg3
                    if arg3 * devFee / arg3 != devFee:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    else:
                        if arg3:
                            require arg3
                            if arg3 * sub_a14c80fb / arg3 != sub_a14c80fb:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            else:
                                if not arg1:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not devAddress:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if arg3 * devFee / 100 <= 0:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if not uint8(stor15.field_0):
                                                if not arg1:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if not devAddress:
                                                        revert with 0, 'Amopunt'
                                                    else:
                                                        if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            balanceOf[address(arg1)] -= arg3 * devFee / 100
                                                            if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                balanceOf[stor11] += arg3 * devFee / 100
                                                                emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                                                                if not arg1:
                                                                    revert with 0, 'Amopunt'
                                                                else:
                                                                    if not deadAddress:
                                                                        revert with 0, 'Amopunt'
                                                                    else:
                                                                        if arg3 * sub_a14c80fb / 100 <= 0:
                                                                            revert with 0, 'Amopunt'
                                                                        else:
                                                                            if not uint8(stor15.field_0):
                                                                                if not arg1:
                                                                                    revert with 0, 'Amopunt'
                                                                                else:
                                                                                    if not deadAddress:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
                                                                                            if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                balanceOf[stor10] += arg3 * sub_a14c80fb / 100
                                                                                                emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
                                                                                                if arg3 * devFee / 100 > arg3:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        if not arg1:
                                                                                                            revert with 0, 'Amopunt'
                                                                                                        else:
                                                                                                            if not arg2:
                                                                                                                revert with 0, 'Amopunt'
                                                                                                            else:
                                                                                                                if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if not uint8(stor15.field_0):
                                                                                                                        if not arg1:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not arg2:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                else:
                                                                                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                    if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                        emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                            revert with 0, ''
                                                                                                                                        else:
                                                                                                                                            if not arg1:
                                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                                            else:
                                                                                                                                                if not msg.sender:
                                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                                else:
                                                                                                                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                    return 1
                                                                                                                    else:
                                                                                                                        if stor14[address(arg1)]:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not arg1:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg2:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                        if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                            emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                revert with 0, ''
                                                                                                                                            else:
                                                                                                                                                if not arg1:
                                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                                else:
                                                                                                                                                    if not msg.sender:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                        return 1
                                                                            else:
                                                                                if stor14[address(arg1)]:
                                                                                    revert with 0, 'Amopunt'
                                                                                else:
                                                                                    if not arg1:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if not deadAddress:
                                                                                            revert with 0, 'Amopunt'
                                                                                        else:
                                                                                            if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
                                                                                                if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    balanceOf[stor10] += arg3 * sub_a14c80fb / 100
                                                                                                    emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
                                                                                                    if arg3 * devFee / 100 > arg3:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            if not arg1:
                                                                                                                revert with 0, 'Amopunt'
                                                                                                            else:
                                                                                                                if not arg2:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if not uint8(stor15.field_0):
                                                                                                                            if not arg1:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg2:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                        if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                            emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                revert with 0, ''
                                                                                                                                            else:
                                                                                                                                                if not arg1:
                                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                                else:
                                                                                                                                                    if not msg.sender:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                        return 1
                                                                                                                        else:
                                                                                                                            if stor14[address(arg1)]:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg2:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                            if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                    revert with 0, ''
                                                                                                                                                else:
                                                                                                                                                    if not arg1:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        if not msg.sender:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                            return 1
                                            else:
                                                if stor14[address(arg1)]:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if not arg1:
                                                        revert with 0, 'Amopunt'
                                                    else:
                                                        if not devAddress:
                                                            revert with 0, 'Amopunt'
                                                        else:
                                                            if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3 * devFee / 100
                                                                if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[stor11] += arg3 * devFee / 100
                                                                    emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                                                                    if not arg1:
                                                                        revert with 0, 'Amopunt'
                                                                    else:
                                                                        if not deadAddress:
                                                                            revert with 0, 'Amopunt'
                                                                        else:
                                                                            if arg3 * sub_a14c80fb / 100 <= 0:
                                                                                revert with 0, 'Amopunt'
                                                                            else:
                                                                                if not uint8(stor15.field_0):
                                                                                    if not arg1:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if not deadAddress:
                                                                                            revert with 0, 'Amopunt'
                                                                                        else:
                                                                                            if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
                                                                                                if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    balanceOf[stor10] += arg3 * sub_a14c80fb / 100
                                                                                                    emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
                                                                                                    if arg3 * devFee / 100 > arg3:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            if not arg1:
                                                                                                                revert with 0, 'Amopunt'
                                                                                                            else:
                                                                                                                if not arg2:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if not uint8(stor15.field_0):
                                                                                                                            if not arg1:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg2:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                        if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                            emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                revert with 0, ''
                                                                                                                                            else:
                                                                                                                                                if not arg1:
                                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                                else:
                                                                                                                                                    if not msg.sender:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                        return 1
                                                                                                                        else:
                                                                                                                            if stor14[address(arg1)]:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg2:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                            if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                    revert with 0, ''
                                                                                                                                                else:
                                                                                                                                                    if not arg1:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        if not msg.sender:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                            return 1
                                                                                else:
                                                                                    if stor14[address(arg1)]:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if not arg1:
                                                                                            revert with 0, 'Amopunt'
                                                                                        else:
                                                                                            if not deadAddress:
                                                                                                revert with 0, 'Amopunt'
                                                                                            else:
                                                                                                if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
                                                                                                    if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        balanceOf[stor10] += arg3 * sub_a14c80fb / 100
                                                                                                        emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
                                                                                                        if arg3 * devFee / 100 > arg3:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                if not arg1:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if not arg2:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not uint8(stor15.field_0):
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg2:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                            if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                    revert with 0, ''
                                                                                                                                                else:
                                                                                                                                                    if not arg1:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        if not msg.sender:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                            return 1
                                                                                                                            else:
                                                                                                                                if stor14[address(arg1)]:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg1:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if not arg2:
                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                        else:
                                                                                                                                            if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                                if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                else:
                                                                                                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                    emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                        revert with 0, ''
                                                                                                                                                    else:
                                                                                                                                                        if not arg1:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            if not msg.sender:
                                                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                                                            else:
                                                                                                                                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                                return 1
                        else:
                            if not arg1:
                                revert with 0, 'Amopunt'
                            else:
                                if not devAddress:
                                    revert with 0, 'Amopunt'
                                else:
                                    if arg3 * devFee / 100 <= 0:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if not uint8(stor15.field_0):
                                            if not arg1:
                                                revert with 0, 'Amopunt'
                                            else:
                                                if not devAddress:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        balanceOf[address(arg1)] -= arg3 * devFee / 100
                                                        if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            balanceOf[stor11] += arg3 * devFee / 100
                                                            emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                                                            if not arg1:
                                                                revert with 0, 'Amopunt'
                                                            else:
                                                                if not deadAddress:
                                                                    revert with 0, 'Amopunt'
                                                                else:
                                                                    revert with 0, 'Amopunt'
                                        else:
                                            if stor14[address(arg1)]:
                                                revert with 0, 'Amopunt'
                                            else:
                                                if not arg1:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if not devAddress:
                                                        revert with 0, 'Amopunt'
                                                    else:
                                                        if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            balanceOf[address(arg1)] -= arg3 * devFee / 100
                                                            if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                balanceOf[stor11] += arg3 * devFee / 100
                                                                emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                                                                if not arg1:
                                                                    revert with 0, 'Amopunt'
                                                                else:
                                                                    if not deadAddress:
                                                                        revert with 0, 'Amopunt'
                                                                    else:
                                                                        revert with 0, 'Amopunt'
                else:
                    if arg3:
                        require arg3
                        if arg3 * sub_a14c80fb / arg3 != sub_a14c80fb:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        else:
                            if not arg1:
                                revert with 0, 'Amopunt'
                            else:
                                if not devAddress:
                                    revert with 0, 'Amopunt'
                                else:
                                    revert with 0, 'Amopunt'
                    else:
                        if not arg1:
                            revert with 0, 'Amopunt'
                        else:
                            if not devAddress:
                                revert with 0, 'Amopunt'
                            else:
                                revert with 0, 'Amopunt'
            else:
                if not arg1:
                    revert with 0, 'Amopunt'
                else:
                    if not arg2:
                        revert with 0, 'Amopunt'
                    else:
                        if arg3 <= 0:
                            revert with 0, 'Amopunt'
                        else:
                            if not uint8(stor15.field_0):
                                if not arg1:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not arg2:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                            else:
                                if stor14[address(arg1)]:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not arg1:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if not arg2:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    return 1
    else:
        if address(stor15.field_16) != arg1:
            revert with 0, 'mandiee'
        else:
            if stor4[address(msg.sender)]:
                if not arg1:
                    revert with 0, 'Amopunt'
                else:
                    if not arg2:
                        revert with 0, 'Amopunt'
                    else:
                        if arg3 <= 0:
                            revert with 0, 'Amopunt'
                        else:
                            if not uint8(stor15.field_0):
                                if not arg1:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not arg2:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if arg3 > balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            balanceOf[address(arg1)] -= arg3
                                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                balanceOf[address(arg2)] += arg3
                                                emit Transfer(arg3, arg1, arg2);
                                                return 1
                            else:
                                if stor14[address(arg1)]:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not arg1:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if not arg2:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    return 1
            else:
                if not stor4[address(arg2)]:
                    if arg3:
                        require arg3
                        if arg3 * devFee / arg3 != devFee:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        else:
                            if arg3:
                                require arg3
                                if arg3 * sub_a14c80fb / arg3 != sub_a14c80fb:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                else:
                                    if not arg1:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if not devAddress:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if arg3 * devFee / 100 <= 0:
                                                revert with 0, 'Amopunt'
                                            else:
                                                if not uint8(stor15.field_0):
                                                    if not arg1:
                                                        revert with 0, 'Amopunt'
                                                    else:
                                                        if not devAddress:
                                                            revert with 0, 'Amopunt'
                                                        else:
                                                            if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3 * devFee / 100
                                                                if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[stor11] += arg3 * devFee / 100
                                                                    emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                                                                    if not arg1:
                                                                        revert with 0, 'Amopunt'
                                                                    else:
                                                                        if not deadAddress:
                                                                            revert with 0, 'Amopunt'
                                                                        else:
                                                                            if arg3 * sub_a14c80fb / 100 <= 0:
                                                                                revert with 0, 'Amopunt'
                                                                            else:
                                                                                if not uint8(stor15.field_0):
                                                                                    if not arg1:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if not deadAddress:
                                                                                            revert with 0, 'Amopunt'
                                                                                        else:
                                                                                            if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
                                                                                                if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    balanceOf[stor10] += arg3 * sub_a14c80fb / 100
                                                                                                    emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
                                                                                                    if arg3 * devFee / 100 > arg3:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            if not arg1:
                                                                                                                revert with 0, 'Amopunt'
                                                                                                            else:
                                                                                                                if not arg2:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if not uint8(stor15.field_0):
                                                                                                                            if not arg1:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg2:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                    else:
                                                                                                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                        if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                            emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                revert with 0, ''
                                                                                                                                            else:
                                                                                                                                                if not arg1:
                                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                                else:
                                                                                                                                                    if not msg.sender:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                        return 1
                                                                                                                        else:
                                                                                                                            if stor14[address(arg1)]:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg2:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                            if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                    revert with 0, ''
                                                                                                                                                else:
                                                                                                                                                    if not arg1:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        if not msg.sender:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                            return 1
                                                                                else:
                                                                                    if stor14[address(arg1)]:
                                                                                        revert with 0, 'Amopunt'
                                                                                    else:
                                                                                        if not arg1:
                                                                                            revert with 0, 'Amopunt'
                                                                                        else:
                                                                                            if not deadAddress:
                                                                                                revert with 0, 'Amopunt'
                                                                                            else:
                                                                                                if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
                                                                                                    if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        balanceOf[stor10] += arg3 * sub_a14c80fb / 100
                                                                                                        emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
                                                                                                        if arg3 * devFee / 100 > arg3:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                if not arg1:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if not arg2:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not uint8(stor15.field_0):
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg2:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                            if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                    revert with 0, ''
                                                                                                                                                else:
                                                                                                                                                    if not arg1:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        if not msg.sender:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                            return 1
                                                                                                                            else:
                                                                                                                                if stor14[address(arg1)]:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg1:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if not arg2:
                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                        else:
                                                                                                                                            if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                                if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                else:
                                                                                                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                    emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                        revert with 0, ''
                                                                                                                                                    else:
                                                                                                                                                        if not arg1:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            if not msg.sender:
                                                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                                                            else:
                                                                                                                                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                                return 1
                                                else:
                                                    if stor14[address(arg1)]:
                                                        revert with 0, 'Amopunt'
                                                    else:
                                                        if not arg1:
                                                            revert with 0, 'Amopunt'
                                                        else:
                                                            if not devAddress:
                                                                revert with 0, 'Amopunt'
                                                            else:
                                                                if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    balanceOf[address(arg1)] -= arg3 * devFee / 100
                                                                    if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        balanceOf[stor11] += arg3 * devFee / 100
                                                                        emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                                                                        if not arg1:
                                                                            revert with 0, 'Amopunt'
                                                                        else:
                                                                            if not deadAddress:
                                                                                revert with 0, 'Amopunt'
                                                                            else:
                                                                                if arg3 * sub_a14c80fb / 100 <= 0:
                                                                                    revert with 0, 'Amopunt'
                                                                                else:
                                                                                    if not uint8(stor15.field_0):
                                                                                        if not arg1:
                                                                                            revert with 0, 'Amopunt'
                                                                                        else:
                                                                                            if not deadAddress:
                                                                                                revert with 0, 'Amopunt'
                                                                                            else:
                                                                                                if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
                                                                                                    if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        balanceOf[stor10] += arg3 * sub_a14c80fb / 100
                                                                                                        emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
                                                                                                        if arg3 * devFee / 100 > arg3:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                if not arg1:
                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                else:
                                                                                                                    if not arg2:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if not uint8(stor15.field_0):
                                                                                                                                if not arg1:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg2:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                        else:
                                                                                                                                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                            if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                    revert with 0, ''
                                                                                                                                                else:
                                                                                                                                                    if not arg1:
                                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                                    else:
                                                                                                                                                        if not msg.sender:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                            return 1
                                                                                                                            else:
                                                                                                                                if stor14[address(arg1)]:
                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                else:
                                                                                                                                    if not arg1:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if not arg2:
                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                        else:
                                                                                                                                            if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                                if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                else:
                                                                                                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                    emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                        revert with 0, ''
                                                                                                                                                    else:
                                                                                                                                                        if not arg1:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            if not msg.sender:
                                                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                                                            else:
                                                                                                                                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                                return 1
                                                                                    else:
                                                                                        if stor14[address(arg1)]:
                                                                                            revert with 0, 'Amopunt'
                                                                                        else:
                                                                                            if not arg1:
                                                                                                revert with 0, 'Amopunt'
                                                                                            else:
                                                                                                if not deadAddress:
                                                                                                    revert with 0, 'Amopunt'
                                                                                                else:
                                                                                                    if arg3 * sub_a14c80fb / 100 > balanceOf[address(arg1)]:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        balanceOf[address(arg1)] -= arg3 * sub_a14c80fb / 100
                                                                                                        if balanceOf[stor10] + (arg3 * sub_a14c80fb / 100) < balanceOf[stor10]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            balanceOf[stor10] += arg3 * sub_a14c80fb / 100
                                                                                                            emit Transfer((arg3 * sub_a14c80fb / 100), arg1, deadAddress);
                                                                                                            if arg3 * devFee / 100 > arg3:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                if arg3 * sub_a14c80fb / 100 > arg3 - (arg3 * devFee / 100):
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    if not arg1:
                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                    else:
                                                                                                                        if not arg2:
                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                        else:
                                                                                                                            if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) <= 0:
                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                            else:
                                                                                                                                if not uint8(stor15.field_0):
                                                                                                                                    if not arg1:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if not arg2:
                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                        else:
                                                                                                                                            if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                            else:
                                                                                                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                                if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                else:
                                                                                                                                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                    emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                        revert with 0, ''
                                                                                                                                                    else:
                                                                                                                                                        if not arg1:
                                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                                        else:
                                                                                                                                                            if not msg.sender:
                                                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                                                            else:
                                                                                                                                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                                return 1
                                                                                                                                else:
                                                                                                                                    if stor14[address(arg1)]:
                                                                                                                                        revert with 0, 'Amopunt'
                                                                                                                                    else:
                                                                                                                                        if not arg1:
                                                                                                                                            revert with 0, 'Amopunt'
                                                                                                                                        else:
                                                                                                                                            if not arg2:
                                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                                            else:
                                                                                                                                                if arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) > balanceOf[address(arg1)]:
                                                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                                                else:
                                                                                                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * devFee / 100) + (arg3 * sub_a14c80fb / 100)
                                                                                                                                                    if balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100) < balanceOf[address(arg2)]:
                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                    else:
                                                                                                                                                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)
                                                                                                                                                        emit Transfer((arg3 - (arg3 * devFee / 100) - (arg3 * sub_a14c80fb / 100)), arg1, arg2);
                                                                                                                                                        if arg3 > allowance[address(arg1)][address(msg.sender)]:
                                                                                                                                                            revert with 0, ''
                                                                                                                                                        else:
                                                                                                                                                            if not arg1:
                                                                                                                                                                revert with 0, 'Amopunt'
                                                                                                                                                            else:
                                                                                                                                                                if not msg.sender:
                                                                                                                                                                    revert with 0, 'Amopunt'
                                                                                                                                                                else:
                                                                                                                                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                                                                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                                                                                                    return 1
                            else:
                                if not arg1:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not devAddress:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if arg3 * devFee / 100 <= 0:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if not uint8(stor15.field_0):
                                                if not arg1:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if not devAddress:
                                                        revert with 0, 'Amopunt'
                                                    else:
                                                        if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            balanceOf[address(arg1)] -= arg3 * devFee / 100
                                                            if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                balanceOf[stor11] += arg3 * devFee / 100
                                                                emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                                                                if not arg1:
                                                                    revert with 0, 'Amopunt'
                                                                else:
                                                                    if not deadAddress:
                                                                        revert with 0, 'Amopunt'
                                                                    else:
                                                                        revert with 0, 'Amopunt'
                                            else:
                                                if stor14[address(arg1)]:
                                                    revert with 0, 'Amopunt'
                                                else:
                                                    if not arg1:
                                                        revert with 0, 'Amopunt'
                                                    else:
                                                        if not devAddress:
                                                            revert with 0, 'Amopunt'
                                                        else:
                                                            if arg3 * devFee / 100 > balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                balanceOf[address(arg1)] -= arg3 * devFee / 100
                                                                if balanceOf[stor11] + (arg3 * devFee / 100) < balanceOf[stor11]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    balanceOf[stor11] += arg3 * devFee / 100
                                                                    emit Transfer((arg3 * devFee / 100), arg1, devAddress);
                                                                    if not arg1:
                                                                        revert with 0, 'Amopunt'
                                                                    else:
                                                                        if not deadAddress:
                                                                            revert with 0, 'Amopunt'
                                                                        else:
                                                                            revert with 0, 'Amopunt'
                    else:
                        if arg3:
                            require arg3
                            if arg3 * sub_a14c80fb / arg3 != sub_a14c80fb:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            else:
                                if not arg1:
                                    revert with 0, 'Amopunt'
                                else:
                                    if not devAddress:
                                        revert with 0, 'Amopunt'
                                    else:
                                        revert with 0, 'Amopunt'
                        else:
                            if not arg1:
                                revert with 0, 'Amopunt'
                            else:
                                if not devAddress:
                                    revert with 0, 'Amopunt'
                                else:
                                    revert with 0, 'Amopunt'
                else:
                    if not arg1:
                        revert with 0, 'Amopunt'
                    else:
                        if not arg2:
                            revert with 0, 'Amopunt'
                        else:
                            if arg3 <= 0:
                                revert with 0, 'Amopunt'
                            else:
                                if not uint8(stor15.field_0):
                                    if not arg1:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if not arg2:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if arg3 > balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                balanceOf[address(arg1)] -= arg3
                                                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    balanceOf[address(arg2)] += arg3
                                                    emit Transfer(arg3, arg1, arg2);
                                                    return 1
                                else:
                                    if stor14[address(arg1)]:
                                        revert with 0, 'Amopunt'
                                    else:
                                        if not arg1:
                                            revert with 0, 'Amopunt'
                                        else:
                                            if not arg2:
                                                revert with 0, 'Amopunt'
                                            else:
                                                if arg3 > balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    balanceOf[address(arg1)] -= arg3
                                                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        balanceOf[address(arg2)] += arg3
                                                        emit Transfer(arg3, arg1, arg2);
                                                        return 1
}



}
