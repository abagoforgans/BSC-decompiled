contract main {




// =====================  Runtime code  =====================


const DENOMINATOR = 10^6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
array of struct stor6;
mapping of uint32 sub_ebf95d0f;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ebf95d0f(?) payable {
    require calldata.size - 4 >= 32
    return sub_ebf95d0f[arg1]
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

function sub_a0d3cd99(?) payable {
    if var17002 >= stor6.length:
        return uint32(var17003)
    if var25003 >= stor6.length:
        revert with 0, 'the index is out of bounds'
    require var27002 < stor6.length
    if var37002 >= stor6.length:
        return uint32(var37003)
    if var45003 >= stor6.length:
        revert with 0, 'the index is out of bounds'
    require var47002 < stor6.length
    # nil
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_e849336f(?) payable {
    if not stor6.length:
        mem[(32 * stor6.length) + 128] = 32
        mem[(32 * stor6.length) + 160] = stor6.length
        mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
        return memory
          from (32 * stor6.length) + 128
           len (96 * stor6.length) + 64
    mem[128] = address(stor6.field_0)
    idx = 128
    s = 0
    while (32 * stor6.length) + 96 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6.length) + 192 len floor32(stor6.length)] = mem[128 len floor32(stor6.length)]
    return Array(len=stor6.length, data=mem[128 len floor32(stor6.length)], mem[(32 * stor6.length) + floor32(stor6.length) + 192 len (32 * stor6.length) - floor32(stor6.length)]), 
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_6435a844(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if var22002 >= stor6.length:
        stor6.length++
        stor6[stor6.length].field_0 = arg1
        sub_ebf95d0f[address(arg1)] = arg2
        if var37002 >= stor6.length:
            if uint32(var37003) > 10^6:
                revert with 0, 'Distribute: rate too large.'
            emit 0xa2de0b7c: arg2, arg1
        if var45003 >= stor6.length:
            revert with 0, 'the index is out of bounds'
        require var47002 < stor6.length
        if var57002 < stor6.length:
            # nil
        else:
            if uint32(var57003) > 10^6:
                revert with 0, 'Distribute: rate too large.'
            emit 0xa2de0b7c: arg2, arg1
    else:
        require var24001 < stor6.length
        if stor6[var26001].field_0 == arg1:
            sub_ebf95d0f[address(arg1)] = arg2
            if var42002 >= stor6.length:
                if uint32(var42003) > 10^6:
                    revert with 0, 'Distribute: rate too large.'
                emit 0xa2de0b7c: arg2, arg1
            if var50003 >= stor6.length:
                revert with 0, 'the index is out of bounds'
            require var52002 < stor6.length
            if var62002 < stor6.length:
                # nil
            else:
                if uint32(var62003) > 10^6:
                    revert with 0, 'Distribute: rate too large.'
                emit 0xa2de0b7c: arg2, arg1
        else:
            idx = var26004
            while idx + 1 < stor6.length:
                mem[0] = 6
                if stor6[idx].field_256 != arg1:
                    idx = idx + 1
                    continue 
                sub_ebf95d0f[address(arg1)] = arg2
                if var49002 >= stor6.length:
                    if uint32(var49003) > 10^6:
                        revert with 0, 'Distribute: rate too large.'
                    emit 0xa2de0b7c: arg2, arg1
                if var57003 >= stor6.length:
                    revert with 0, 'the index is out of bounds'
                require var59002 < stor6.length
                if var69002 < stor6.length:
                    # nil
                else:
                    if uint32(var69003) > 10^6:
                        revert with 0, 'Distribute: rate too large.'
                    emit 0xa2de0b7c: arg2, arg1
            stor6.length++
            stor6[stor6.length].field_0 = arg1
            sub_ebf95d0f[address(arg1)] = arg2
            if var46002 >= stor6.length:
                if uint32(var46003) > 10^6:
                    revert with 0, 'Distribute: rate too large.'
                emit 0xa2de0b7c: arg2, arg1
            if var54003 >= stor6.length:
                revert with 0, 'the index is out of bounds'
            require var56002 < stor6.length
            if var66002 < stor6.length:
                # nil
            else:
                if uint32(var66003) > 10^6:
                    revert with 0, 'Distribute: rate too large.'
                emit 0xa2de0b7c: arg2, arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if var23002 >= stor6.length:
        if not arg2:
            if 0 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
            if var84002 >= stor6.length:
                return 1
            if var92003 >= stor6.length:
                revert with 0, 'the index is out of bounds'
            require var94002 < stor6.length
            # nil
        else:
            if uint32(var23003) * arg2 / arg2 != uint32(var23003):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if uint32(var23003) * arg2 / 10^6 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg2 - (uint32(var23003) * arg2 / 10^6) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (uint32(var23003) * arg2 / 10^6)
            if arg2 - (uint32(var23003) * arg2 / 10^6) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - (uint32(var23003) * arg2 / 10^6) + balanceOf[arg1]
            emit Transfer((arg2 - (uint32(var23003) * arg2 / 10^6)), msg.sender, arg1);
            if var85002 >= stor6.length:
                return 1
            if var93003 >= stor6.length:
                revert with 0, 'the index is out of bounds'
            require var95002 < stor6.length
            # nil
    else:
        if var31003 >= stor6.length:
            revert with 0, 'the index is out of bounds'
        require var33002 < stor6.length
        if var43002 < stor6.length:
            if var51003 >= stor6.length:
                revert with 0, 'the index is out of bounds'
            require var53002 < stor6.length
            # nil
        else:
            if not arg2:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
                if var104002 >= stor6.length:
                    return 1
                # nil
            else:
                if uint32(var43003) * arg2 / arg2 != uint32(var43003):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint32(var43003) * arg2 / 10^6 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 - (uint32(var43003) * arg2 / 10^6) > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (uint32(var43003) * arg2 / 10^6)
                if arg2 - (uint32(var43003) * arg2 / 10^6) + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 - (uint32(var43003) * arg2 / 10^6) + balanceOf[arg1]
                emit Transfer((arg2 - (uint32(var43003) * arg2 / 10^6)), msg.sender, arg1);
                if var105002 >= stor6.length:
                    return 1
                # nil
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if var21002 >= stor6.length:
        if not arg3:
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if var82002 < stor6.length:
                if var90003 >= stor6.length:
                    revert with 0, 'the index is out of bounds'
                require var92002 < stor6.length
                # nil
            else:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
        else:
            if uint32(var21003) * arg3 / arg3 != uint32(var21003):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if uint32(var21003) * arg3 / 10^6 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                            mem[201 len 27]
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                            mem[199 len 29]
            if arg3 - (uint32(var21003) * arg3 / 10^6) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (uint32(var21003) * arg3 / 10^6)
            if arg3 - (uint32(var21003) * arg3 / 10^6) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 - (uint32(var21003) * arg3 / 10^6) + balanceOf[arg2]
            emit Transfer((arg3 - (uint32(var21003) * arg3 / 10^6)), arg1, arg2);
            if var83002 < stor6.length:
                if var91003 >= stor6.length:
                    revert with 0, 'the index is out of bounds'
                require var93002 < stor6.length
                # nil
            else:
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                return 1
    else:
        if var29003 >= stor6.length:
            revert with 0, 'the index is out of bounds'
        require var31002 < stor6.length
        if var41002 < stor6.length:
            if var49003 >= stor6.length:
                revert with 0, 'the index is out of bounds'
            require var51002 < stor6.length
            # nil
        else:
            if not arg3:
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                emit Transfer(arg3, arg1, arg2);
                if var102002 < stor6.length:
                    # nil
                else:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        # nil
                    else:
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        return 1
            else:
                if uint32(var41003) * arg3 / arg3 != uint32(var41003):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if uint32(var41003) * arg3 / 10^6 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg3 - (uint32(var41003) * arg3 / 10^6) > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (uint32(var41003) * arg3 / 10^6)
                if arg3 - (uint32(var41003) * arg3 / 10^6) + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 - (uint32(var41003) * arg3 / 10^6) + balanceOf[arg2]
                emit Transfer((arg3 - (uint32(var41003) * arg3 / 10^6)), arg1, arg2);
                if var103002 < stor6.length:
                    # nil
                else:
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        # nil
                    else:
                        if not arg1:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                        if not msg.sender:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        return 1
}



}
