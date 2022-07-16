contract main {




// =====================  Runtime code  =====================


address _owner;
address stor1;
mapping of struct sub_9bb5f718;
mapping of uint256 stor3;
mapping of uint256 sub_0ed75318;
mapping of uint256 sub_e35fafe4;
mapping of uint256 sub_de73efdf;
mapping of address sub_1e1be53c;
mapping of uint8 stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;

function sub_0ed75318(?) payable {
    require calldata.size - 4 >= 32
    return sub_0ed75318[address(arg1)]
}

function sub_1e1be53c(?) payable {
    require calldata.size - 4 >= 32
    return sub_1e1be53c[address(arg1)]
}

function sub_9bb5f718(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_9bb5f718[arg1].field_0
    return sub_9bb5f718[arg1][arg2].field_0, 
           sub_9bb5f718[arg1][arg2].field_256,
           sub_9bb5f718[arg1][arg2].field_512,
           sub_9bb5f718[arg1][arg2].field_768
}

function _owner() payable {
    return _owner
}

function sub_de73efdf(?) payable {
    require calldata.size - 4 >= 32
    return sub_de73efdf[address(arg1)]
}

function sub_e35fafe4(?) payable {
    require calldata.size - 4 >= 32
    return sub_e35fafe4[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_9b694d0c(?) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = block.timestamp
    stor10[address(arg1)] = arg2
    return 1
}

function sub_47f87212(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'can not bee address(0)'
    if sub_1e1be53c[address(msg.sender)]:
        revert with 0, 'have parent'
    sub_1e1be53c[address(msg.sender)] = arg1
    sub_0ed75318[address(arg1)]++
    return 1
}

function sub_4c48ef72(?) payable {
    require calldata.size - 4 >= 64
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if _owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    _owner = arg1
}

function sub_f131ab79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9bb5f718[address(msg.sender)].field_0
    require arg1 < sub_9bb5f718[address(msg.sender)].field_0
    if sub_9bb5f718[address(msg.sender)][arg1].field_512 <= 0:
        revert with 0, 'no Pledge'
    if block.timestamp > sub_9bb5f718[address(msg.sender)][arg1].field_256:
        sub_9bb5f718[address(msg.sender)][arg1].field_512 = 0
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_9bb5f718[address(msg.sender)][arg1].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    else:
        return 0
}

function sub_6cb88a1c(?) payable {
    require calldata.size - 4 >= 32
    if stor11[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1 < block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if not stor9[address(arg1)]:
        if not stor10[address(arg1)]:
            if 0 <= stor10[address(arg1)]:
                return 0
        else:
            require stor10[address(arg1)]
            if stor10[address(arg1)] + (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor10[address(arg1)]) / stor10[address(arg1)] != (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor10[address(arg1)] + (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor10[address(arg1)]) / 20 <= stor10[address(arg1)]:
                return (stor10[address(arg1)] + (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor10[address(arg1)]) / 20)
    else:
        if not stor10[address(arg1)]:
            if 0 <= stor10[address(arg1)]:
                return 0
        else:
            require stor10[address(arg1)]
            if stor10[address(arg1)] * 2 * (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1 / stor10[address(arg1)] != 2 * (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor10[address(arg1)] * 2 * (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1 / 20 <= stor10[address(arg1)]:
                return (stor10[address(arg1)] * 2 * (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1 / 20)
    return stor10[address(arg1)]
}

function sub_bde59e3b(?) payable {
    require calldata.size - 4 >= 32
    mem[64] = 224
    mem[192] = 0
    idx = 0
    s = 0
    t = 96
    while idx < sub_9bb5f718[address(arg1)].field_0:
        mem[32] = 2
        require idx < sub_9bb5f718[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        _27 = mem[64]
        mem[64] = mem[64] + 128
        mem[_27] = sub_9bb5f718[address(arg1)][idx].field_0
        mem[_27 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
        mem[_27 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
        mem[_27 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
        if block.timestamp <= sub_9bb5f718[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            t = _27
            continue 
        if block.timestamp >= sub_9bb5f718[address(arg1)][idx].field_256:
            idx = idx + 1
            s = s
            t = _27
            continue 
        if not sub_9bb5f718[address(arg1)][idx].field_768:
            if sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0
            if s + (0 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0) < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (0 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0)
            t = _27
            continue 
        require sub_9bb5f718[address(arg1)][idx].field_768
        if 24 * 3600 * sub_9bb5f718[address(arg1)][idx].field_768 / sub_9bb5f718[address(arg1)][idx].field_768 != 24 * 3600:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0
        if s + (24 * 3600 * sub_9bb5f718[address(arg1)][idx].field_768 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0) < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + (24 * 3600 * sub_9bb5f718[address(arg1)][idx].field_768 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0)
        t = _27
        continue 
    return s
}

function sub_b46282c6(?) payable {
    require calldata.size - 4 >= 32
    mem[64] = 224
    mem[192] = 0
    idx = 0
    s = 0
    t = 96
    while idx < sub_9bb5f718[address(arg1)].field_0:
        mem[32] = 2
        require idx < sub_9bb5f718[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        _31 = mem[64]
        mem[64] = mem[64] + 128
        mem[_31] = sub_9bb5f718[address(arg1)][idx].field_0
        mem[_31 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
        mem[_31 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
        mem[_31 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
        if block.timestamp <= sub_9bb5f718[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            t = _31
            continue 
        if block.timestamp >= sub_9bb5f718[address(arg1)][idx].field_256:
            if s + sub_9bb5f718[address(arg1)][idx].field_768 < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + sub_9bb5f718[address(arg1)][idx].field_768
            t = _31
            continue 
        if not sub_9bb5f718[address(arg1)][idx].field_768:
            if sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0
            if s + (0 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0) < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (0 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0)
            t = _31
            continue 
        require sub_9bb5f718[address(arg1)][idx].field_768
        if (block.timestamp * sub_9bb5f718[address(arg1)][idx].field_768) - (sub_9bb5f718[address(arg1)][idx].field_0 * sub_9bb5f718[address(arg1)][idx].field_768) / sub_9bb5f718[address(arg1)][idx].field_768 != block.timestamp - sub_9bb5f718[address(arg1)][idx].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0
        if s + ((block.timestamp * sub_9bb5f718[address(arg1)][idx].field_768) - (sub_9bb5f718[address(arg1)][idx].field_0 * sub_9bb5f718[address(arg1)][idx].field_768) / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0) < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + ((block.timestamp * sub_9bb5f718[address(arg1)][idx].field_768) - (sub_9bb5f718[address(arg1)][idx].field_0 * sub_9bb5f718[address(arg1)][idx].field_768) / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0)
        t = _31
        continue 
    return s
}

function sub_00b00f6e(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'amount Cannot be zero'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (2160 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        sub_9bb5f718[address(msg.sender)].field_0++
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_256 = block.timestamp + (2160 * 24 * 3600)
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_512 = arg1
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_768 = 0
    else:
        require arg1
        if 18 * arg1 / arg1 != 18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        sub_9bb5f718[address(msg.sender)].field_0++
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_256 = block.timestamp + (2160 * 24 * 3600)
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_512 = arg1
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_768 = 18 * arg1 / 100
    if sub_1e1be53c[address(msg.sender)]:
        if sub_e35fafe4[stor8[address(msg.sender)]] + arg1 < sub_e35fafe4[stor8[address(msg.sender)]]:
            revert with 0, 'SafeMath: addition overflow'
        sub_e35fafe4[stor8[address(msg.sender)]] += arg1
        if not arg1:
            if sub_de73efdf[stor8[address(msg.sender)]] < sub_de73efdf[stor8[address(msg.sender)]]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg1
            if 18 * arg1 / arg1 != 18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if sub_de73efdf[stor8[address(msg.sender)]] + (18 * arg1 / 1000) < sub_de73efdf[stor8[address(msg.sender)]]:
                revert with 0, 'SafeMath: addition overflow'
            sub_de73efdf[stor8[address(msg.sender)]] += 18 * arg1 / 1000
        if not arg1:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_1e1be53c[address(msg.sender)], 0
        else:
            require arg1
            if 18 * arg1 / arg1 != 18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_1e1be53c[address(msg.sender)], 18 * arg1 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1
}

function sub_89c5b1f0(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'amount Cannot be zero'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (4320 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        sub_9bb5f718[address(msg.sender)].field_0++
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_256 = block.timestamp + (4320 * 24 * 3600)
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_512 = arg1
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_768 = 0
    else:
        require arg1
        if 45 * arg1 / arg1 != 45:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        sub_9bb5f718[address(msg.sender)].field_0++
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_256 = block.timestamp + (4320 * 24 * 3600)
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_512 = arg1
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_768 = 45 * arg1 / 100
    if sub_1e1be53c[address(msg.sender)]:
        if sub_e35fafe4[stor8[address(msg.sender)]] + arg1 < sub_e35fafe4[stor8[address(msg.sender)]]:
            revert with 0, 'SafeMath: addition overflow'
        sub_e35fafe4[stor8[address(msg.sender)]] += arg1
        if not arg1:
            if sub_de73efdf[stor8[address(msg.sender)]] < sub_de73efdf[stor8[address(msg.sender)]]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg1
            if 45 * arg1 / arg1 != 45:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if sub_de73efdf[stor8[address(msg.sender)]] + (45 * arg1 / 1000) < sub_de73efdf[stor8[address(msg.sender)]]:
                revert with 0, 'SafeMath: addition overflow'
            sub_de73efdf[stor8[address(msg.sender)]] += 45 * arg1 / 1000
        if not arg1:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_1e1be53c[address(msg.sender)], 0
        else:
            require arg1
            if 45 * arg1 / arg1 != 45:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_1e1be53c[address(msg.sender)], 45 * arg1 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1
}

function sub_cddba5e8(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'amount Cannot be zero'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (720 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        sub_9bb5f718[address(msg.sender)].field_0++
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_256 = block.timestamp + (720 * 24 * 3600)
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_512 = arg1
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_768 = 0
    else:
        require arg1
        if 48 * arg1 / arg1 != 48:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        sub_9bb5f718[address(msg.sender)].field_0++
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_256 = block.timestamp + (720 * 24 * 3600)
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_512 = arg1
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_768 = 48 * arg1 / 1000
    if sub_1e1be53c[address(msg.sender)]:
        if sub_e35fafe4[stor8[address(msg.sender)]] + arg1 < sub_e35fafe4[stor8[address(msg.sender)]]:
            revert with 0, 'SafeMath: addition overflow'
        sub_e35fafe4[stor8[address(msg.sender)]] += arg1
        if not arg1:
            if sub_de73efdf[stor8[address(msg.sender)]] < sub_de73efdf[stor8[address(msg.sender)]]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg1
            if 48 * arg1 / arg1 != 48:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if sub_de73efdf[stor8[address(msg.sender)]] + (48 * arg1 / 10000) < sub_de73efdf[stor8[address(msg.sender)]]:
                revert with 0, 'SafeMath: addition overflow'
            sub_de73efdf[stor8[address(msg.sender)]] += 48 * arg1 / 10000
        if not arg1:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_1e1be53c[address(msg.sender)], 0
        else:
            require arg1
            if 48 * arg1 / arg1 != 48:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_1e1be53c[address(msg.sender)], 48 * arg1 / 10000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1
}

function sub_92cb495c(?) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'amount Cannot be zero'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp + (8640 * 24 * 3600) < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        sub_9bb5f718[address(msg.sender)].field_0++
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_256 = block.timestamp + (8640 * 24 * 3600)
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_512 = arg1
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_768 = 0
    else:
        require arg1
        if 108 * arg1 / arg1 != 108:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        sub_9bb5f718[address(msg.sender)].field_0++
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_0 = block.timestamp
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_256 = block.timestamp + (8640 * 24 * 3600)
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_512 = arg1
        sub_9bb5f718[address(msg.sender)][sub_9bb5f718[address(msg.sender)].field_0].field_768 = 108 * arg1 / 100
    if sub_1e1be53c[address(msg.sender)]:
        if sub_e35fafe4[stor8[address(msg.sender)]] + arg1 < sub_e35fafe4[stor8[address(msg.sender)]]:
            revert with 0, 'SafeMath: addition overflow'
        sub_e35fafe4[stor8[address(msg.sender)]] += arg1
        if not arg1:
            if sub_de73efdf[stor8[address(msg.sender)]] < sub_de73efdf[stor8[address(msg.sender)]]:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require arg1
            if 108 * arg1 / arg1 != 108:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if sub_de73efdf[stor8[address(msg.sender)]] + (108 * arg1 / 1000) < sub_de73efdf[stor8[address(msg.sender)]]:
                revert with 0, 'SafeMath: addition overflow'
            sub_de73efdf[stor8[address(msg.sender)]] += 108 * arg1 / 1000
        if not arg1:
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_1e1be53c[address(msg.sender)], 0
        else:
            require arg1
            if 108 * arg1 / arg1 != 108:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args sub_1e1be53c[address(msg.sender)], 108 * arg1 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1
}

function sub_d30266c6(?) payable {
    require calldata.size - 4 >= 32
    if stor11[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1 < block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if not stor9[address(arg1)]:
        if not stor10[address(arg1)]:
            if 0 <= stor10[address(arg1)]:
                return sub_1e1be53c[address(arg1)], 
                       sub_0ed75318[address(arg1)],
                       sub_e35fafe4[address(arg1)],
                       sub_de73efdf[address(arg1)],
                       0,
                       stor10[address(arg1)],
                       stor12[address(arg1)]
        else:
            require stor10[address(arg1)]
            if stor10[address(arg1)] + (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor10[address(arg1)]) / stor10[address(arg1)] != (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor10[address(arg1)] + (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor10[address(arg1)]) / 20 <= stor10[address(arg1)]:
                return sub_1e1be53c[address(arg1)], 
                       sub_0ed75318[address(arg1)],
                       sub_e35fafe4[address(arg1)],
                       sub_de73efdf[address(arg1)],
                       stor10[address(arg1)] + (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600 * stor10[address(arg1)]) / 20,
                       stor10[address(arg1)],
                       stor12[address(arg1)]
    else:
        if not stor10[address(arg1)]:
            if 0 <= stor10[address(arg1)]:
                return sub_1e1be53c[address(arg1)], 
                       sub_0ed75318[address(arg1)],
                       sub_e35fafe4[address(arg1)],
                       sub_de73efdf[address(arg1)],
                       0,
                       stor10[address(arg1)],
                       stor12[address(arg1)]
        else:
            require stor10[address(arg1)]
            if stor10[address(arg1)] * 2 * (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1 / stor10[address(arg1)] != 2 * (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor10[address(arg1)] * 2 * (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1 / 20 <= stor10[address(arg1)]:
                return sub_1e1be53c[address(arg1)], 
                       sub_0ed75318[address(arg1)],
                       sub_e35fafe4[address(arg1)],
                       sub_de73efdf[address(arg1)],
                       stor10[address(arg1)] * 2 * (block.timestamp - stor11[address(arg1)] / 720 * 24 * 3600) + 1 / 20,
                       stor10[address(arg1)],
                       stor12[address(arg1)]
    return sub_1e1be53c[address(arg1)], 
           sub_0ed75318[address(arg1)],
           sub_e35fafe4[address(arg1)],
           sub_de73efdf[address(arg1)],
           stor10[address(arg1)],
           stor10[address(arg1)],
           stor12[address(arg1)]
}

function sub_883fa92b(?) payable {
    require calldata.size - 4 >= 32
    mem[64] = 224
    idx = 0
    s = 0
    t = 96
    while idx < sub_9bb5f718[address(arg1)].field_0:
        mem[32] = 2
        require idx < sub_9bb5f718[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        _15 = mem[64]
        mem[64] = mem[64] + 128
        mem[_15] = sub_9bb5f718[address(arg1)][idx].field_0
        mem[_15 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
        mem[_15 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
        mem[_15 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
        if s + sub_9bb5f718[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + sub_9bb5f718[address(arg1)][idx].field_512
        t = _15
        continue 
    return (s * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0)
}

function sub_f1285716(?) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not sub_9bb5f718[address(arg1)].field_0:
        mem[96] = 0
        mem[64] = 256
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        idx = 0
        s = 128
        while idx < sub_9bb5f718[address(arg1)].field_0:
            mem[32] = 2
            require idx < sub_9bb5f718[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 2)
            _78 = mem[64]
            mem[64] = mem[64] + 128
            mem[_78] = sub_9bb5f718[address(arg1)][idx].field_0
            mem[_78 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
            mem[_78 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
            mem[_78 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
            require 4 * idx < mem[96]
            mem[(128 * idx) + 128] = sub_9bb5f718[address(arg1)][idx].field_0
            require (4 * idx) + 1 < mem[96]
            mem[(32 * (4 * idx) + 1) + 128] = sub_9bb5f718[address(arg1)][idx].field_256
            require (4 * idx) + 2 < mem[96]
            mem[(32 * (4 * idx) + 2) + 128] = sub_9bb5f718[address(arg1)][idx].field_512
            require (4 * idx) + 3 < mem[96]
            mem[(32 * (4 * idx) + 3) + 128] = sub_9bb5f718[address(arg1)][idx].field_768
            idx = idx + 1
            s = _78
            continue 
    else:
        require sub_9bb5f718[address(arg1)].field_0
        if 4 * sub_9bb5f718[address(arg1)].field_0 / sub_9bb5f718[address(arg1)].field_0 != 4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 4 * sub_9bb5f718[address(arg1)].field_0
        if not sub_9bb5f718[address(arg1)].field_0:
            mem[64] = (128 * sub_9bb5f718[address(arg1)].field_0) + 256
            mem[(128 * sub_9bb5f718[address(arg1)].field_0) + 128] = 0
            mem[(128 * sub_9bb5f718[address(arg1)].field_0) + 160] = 0
            mem[(128 * sub_9bb5f718[address(arg1)].field_0) + 192] = 0
            mem[(128 * sub_9bb5f718[address(arg1)].field_0) + 224] = 0
            idx = 0
            s = (128 * sub_9bb5f718[address(arg1)].field_0) + 128
            while idx < sub_9bb5f718[address(arg1)].field_0:
                mem[32] = 2
                require idx < sub_9bb5f718[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 2)
                _64 = mem[64]
                mem[64] = mem[64] + 128
                mem[_64] = sub_9bb5f718[address(arg1)][idx].field_0
                mem[_64 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
                mem[_64 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
                mem[_64 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
                require 4 * idx < mem[96]
                mem[(128 * idx) + 128] = sub_9bb5f718[address(arg1)][idx].field_0
                require (4 * idx) + 1 < mem[96]
                mem[(32 * (4 * idx) + 1) + 128] = sub_9bb5f718[address(arg1)][idx].field_256
                require (4 * idx) + 2 < mem[96]
                mem[(32 * (4 * idx) + 2) + 128] = sub_9bb5f718[address(arg1)][idx].field_512
                require (4 * idx) + 3 < mem[96]
                mem[(32 * (4 * idx) + 3) + 128] = sub_9bb5f718[address(arg1)][idx].field_768
                idx = idx + 1
                s = _64
                continue 
        else:
            mem[128 len 128 * sub_9bb5f718[address(arg1)].field_0] = code.data[15714 len 128 * sub_9bb5f718[address(arg1)].field_0]
            mem[64] = (128 * sub_9bb5f718[address(arg1)].field_0) + 256
            mem[(128 * sub_9bb5f718[address(arg1)].field_0) + 128] = 0
            mem[(128 * sub_9bb5f718[address(arg1)].field_0) + 160] = 0
            mem[(128 * sub_9bb5f718[address(arg1)].field_0) + 192] = 0
            mem[(128 * sub_9bb5f718[address(arg1)].field_0) + 224] = 0
            idx = 0
            s = (128 * sub_9bb5f718[address(arg1)].field_0) + 128
            while idx < sub_9bb5f718[address(arg1)].field_0:
                mem[32] = 2
                require idx < sub_9bb5f718[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 2)
                _71 = mem[64]
                mem[64] = mem[64] + 128
                mem[_71] = sub_9bb5f718[address(arg1)][idx].field_0
                mem[_71 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
                mem[_71 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
                mem[_71 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
                require 4 * idx < mem[96]
                mem[(128 * idx) + 128] = sub_9bb5f718[address(arg1)][idx].field_0
                require (4 * idx) + 1 < mem[96]
                mem[(32 * (4 * idx) + 1) + 128] = sub_9bb5f718[address(arg1)][idx].field_256
                require (4 * idx) + 2 < mem[96]
                mem[(32 * (4 * idx) + 2) + 128] = sub_9bb5f718[address(arg1)][idx].field_512
                require (4 * idx) + 3 < mem[96]
                mem[(32 * (4 * idx) + 3) + 128] = sub_9bb5f718[address(arg1)][idx].field_768
                idx = idx + 1
                s = _71
                continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_d6475a22(?) payable {
    if stor11[address(msg.sender)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1 < block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if not stor9[address(msg.sender)]:
        if not stor10[address(msg.sender)]:
            if 0 <= stor10[address(msg.sender)]:
                if stor12[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require -stor12[address(msg.sender)] > 0
                stor12[address(msg.sender)] = 0
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -stor12[address(msg.sender)]
            else:
                if stor12[address(msg.sender)] > stor10[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require stor10[address(msg.sender)] - stor12[address(msg.sender)] > 0
                stor12[address(msg.sender)] = stor10[address(msg.sender)]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(msg.sender)] - stor12[address(msg.sender)]
        else:
            require stor10[address(msg.sender)]
            if stor10[address(msg.sender)] + (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor10[address(msg.sender)]) / stor10[address(msg.sender)] != (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor10[address(msg.sender)] + (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor10[address(msg.sender)]) / 20 <= stor10[address(msg.sender)]:
                if stor12[address(msg.sender)] > stor10[address(msg.sender)] + (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor10[address(msg.sender)]) / 20:
                    revert with 0, 'SafeMath: subtraction overflow'
                require (stor10[address(msg.sender)] + (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor10[address(msg.sender)]) / 20) - stor12[address(msg.sender)] > 0
                stor12[address(msg.sender)] = stor10[address(msg.sender)] + (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor10[address(msg.sender)]) / 20
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (stor10[address(msg.sender)] + (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600 * stor10[address(msg.sender)]) / 20) - stor12[address(msg.sender)]
            else:
                if stor12[address(msg.sender)] > stor10[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require stor10[address(msg.sender)] - stor12[address(msg.sender)] > 0
                stor12[address(msg.sender)] = stor10[address(msg.sender)]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(msg.sender)] - stor12[address(msg.sender)]
    else:
        if not stor10[address(msg.sender)]:
            if 0 <= stor10[address(msg.sender)]:
                if stor12[address(msg.sender)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require -stor12[address(msg.sender)] > 0
                stor12[address(msg.sender)] = 0
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -stor12[address(msg.sender)]
            else:
                if stor12[address(msg.sender)] > stor10[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require stor10[address(msg.sender)] - stor12[address(msg.sender)] > 0
                stor12[address(msg.sender)] = stor10[address(msg.sender)]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(msg.sender)] - stor12[address(msg.sender)]
        else:
            require stor10[address(msg.sender)]
            if stor10[address(msg.sender)] * 2 * (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1 / stor10[address(msg.sender)] != 2 * (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if stor10[address(msg.sender)] * 2 * (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1 / 20 <= stor10[address(msg.sender)]:
                if stor12[address(msg.sender)] > stor10[address(msg.sender)] * 2 * (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1 / 20:
                    revert with 0, 'SafeMath: subtraction overflow'
                require (stor10[address(msg.sender)] * 2 * (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1 / 20) - stor12[address(msg.sender)] > 0
                stor12[address(msg.sender)] = stor10[address(msg.sender)] * 2 * (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1 / 20
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (stor10[address(msg.sender)] * 2 * (block.timestamp - stor11[address(msg.sender)] / 720 * 24 * 3600) + 1 / 20) - stor12[address(msg.sender)]
            else:
                if stor12[address(msg.sender)] > stor10[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require stor10[address(msg.sender)] - stor12[address(msg.sender)] > 0
                stor12[address(msg.sender)] = stor10[address(msg.sender)]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor10[address(msg.sender)] - stor12[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function withdrawReward() payable {
    mem[64] = 224
    mem[96] = 0
    mem[192] = 0
    idx = 0
    s = 0
    t = 96
    while idx < sub_9bb5f718[address(msg.sender)].field_0:
        mem[32] = 2
        require idx < sub_9bb5f718[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 2)
        _11 = mem[64]
        mem[64] = mem[64] + 128
        mem[_11] = sub_9bb5f718[address(msg.sender)][idx].field_0
        mem[_11 + 32] = sub_9bb5f718[address(msg.sender)][idx].field_256
        mem[_11 + 64] = sub_9bb5f718[address(msg.sender)][idx].field_512
        mem[_11 + 96] = sub_9bb5f718[address(msg.sender)][idx].field_768
        if s + sub_9bb5f718[address(msg.sender)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + sub_9bb5f718[address(msg.sender)][idx].field_512
        t = _11
        continue 
    require s * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 * sub_9bb5f718[address(msg.sender)].field_0 > 0
    mem[0] = msg.sender
    mem[32] = 2
    _16 = mem[64]
    mem[64] = mem[64] + 128
    mem[_16] = 0
    mem[_16 + 32] = 0
    mem[_16 + 64] = 0
    mem[_16 + 96] = 0
    idx = 0
    s = 0
    t = _16
    while idx < sub_9bb5f718[address(msg.sender)].field_0:
        mem[32] = 2
        require idx < sub_9bb5f718[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 2)
        _52 = mem[64]
        mem[64] = mem[64] + 128
        mem[_52] = sub_9bb5f718[address(msg.sender)][idx].field_0
        mem[_52 + 32] = sub_9bb5f718[address(msg.sender)][idx].field_256
        mem[_52 + 64] = sub_9bb5f718[address(msg.sender)][idx].field_512
        mem[_52 + 96] = sub_9bb5f718[address(msg.sender)][idx].field_768
        if block.timestamp <= sub_9bb5f718[address(msg.sender)][idx].field_0:
            idx = idx + 1
            s = s
            t = _52
            continue 
        if block.timestamp >= sub_9bb5f718[address(msg.sender)][idx].field_256:
            if s + sub_9bb5f718[address(msg.sender)][idx].field_768 < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + sub_9bb5f718[address(msg.sender)][idx].field_768
            t = _52
            continue 
        if not sub_9bb5f718[address(msg.sender)][idx].field_768:
            if sub_9bb5f718[address(msg.sender)][idx].field_256 - sub_9bb5f718[address(msg.sender)][idx].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9bb5f718[address(msg.sender)][idx].field_256 - sub_9bb5f718[address(msg.sender)][idx].field_0
            if s + (0 / sub_9bb5f718[address(msg.sender)][idx].field_256 - sub_9bb5f718[address(msg.sender)][idx].field_0) < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + (0 / sub_9bb5f718[address(msg.sender)][idx].field_256 - sub_9bb5f718[address(msg.sender)][idx].field_0)
            t = _52
            continue 
        require sub_9bb5f718[address(msg.sender)][idx].field_768
        if (block.timestamp * sub_9bb5f718[address(msg.sender)][idx].field_768) - (sub_9bb5f718[address(msg.sender)][idx].field_0 * sub_9bb5f718[address(msg.sender)][idx].field_768) / sub_9bb5f718[address(msg.sender)][idx].field_768 != block.timestamp - sub_9bb5f718[address(msg.sender)][idx].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if sub_9bb5f718[address(msg.sender)][idx].field_256 - sub_9bb5f718[address(msg.sender)][idx].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9bb5f718[address(msg.sender)][idx].field_256 - sub_9bb5f718[address(msg.sender)][idx].field_0
        if s + ((block.timestamp * sub_9bb5f718[address(msg.sender)][idx].field_768) - (sub_9bb5f718[address(msg.sender)][idx].field_0 * sub_9bb5f718[address(msg.sender)][idx].field_768) / sub_9bb5f718[address(msg.sender)][idx].field_256 - sub_9bb5f718[address(msg.sender)][idx].field_0) < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + ((block.timestamp * sub_9bb5f718[address(msg.sender)][idx].field_768) - (sub_9bb5f718[address(msg.sender)][idx].field_0 * sub_9bb5f718[address(msg.sender)][idx].field_768) / sub_9bb5f718[address(msg.sender)][idx].field_256 - sub_9bb5f718[address(msg.sender)][idx].field_0)
        t = _52
        continue 
    if stor3[address(msg.sender)] > s:
        revert with 0, 'SafeMath: subtraction overflow'
    stor3[address(msg.sender)] = s
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s - stor3[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function getUserData(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = 224
    mem[192] = 0
    idx = 0
    s = 0
    t = 96
    while idx < sub_9bb5f718[address(arg1)].field_0:
        mem[32] = 2
        require idx < sub_9bb5f718[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        _68 = mem[64]
        mem[64] = mem[64] + 128
        mem[_68] = sub_9bb5f718[address(arg1)][idx].field_0
        mem[_68 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
        mem[_68 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
        mem[_68 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
        if s + sub_9bb5f718[address(arg1)][idx].field_512 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + sub_9bb5f718[address(arg1)][idx].field_512
        t = _68
        continue 
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = arg1
    mem[32] = 2
    _75 = mem[64]
    mem[64] = mem[64] + 128
    mem[_75] = 0
    mem[_75 + 32] = 0
    mem[_75 + 64] = 0
    mem[_75 + 96] = 0
    idx = 0
    t = 0
    u = _75
    while idx < sub_9bb5f718[address(arg1)].field_0:
        mem[32] = 2
        require idx < sub_9bb5f718[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        _124 = mem[64]
        mem[64] = mem[64] + 128
        mem[_124] = sub_9bb5f718[address(arg1)][idx].field_0
        mem[_124 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
        mem[_124 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
        mem[_124 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
        if block.timestamp <= sub_9bb5f718[address(arg1)][idx].field_0:
            idx = idx + 1
            t = t
            u = _124
            continue 
        if block.timestamp >= sub_9bb5f718[address(arg1)][idx].field_256:
            if t + sub_9bb5f718[address(arg1)][idx].field_768 < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = t + sub_9bb5f718[address(arg1)][idx].field_768
            u = _124
            continue 
        if not sub_9bb5f718[address(arg1)][idx].field_768:
            if sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0
            if t + (0 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0) < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = t + (0 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0)
            u = _124
            continue 
        require sub_9bb5f718[address(arg1)][idx].field_768
        if (block.timestamp * sub_9bb5f718[address(arg1)][idx].field_768) - (sub_9bb5f718[address(arg1)][idx].field_0 * sub_9bb5f718[address(arg1)][idx].field_768) / sub_9bb5f718[address(arg1)][idx].field_768 != block.timestamp - sub_9bb5f718[address(arg1)][idx].field_0:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0
        if t + ((block.timestamp * sub_9bb5f718[address(arg1)][idx].field_768) - (sub_9bb5f718[address(arg1)][idx].field_0 * sub_9bb5f718[address(arg1)][idx].field_768) / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0) < t:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        t = t + ((block.timestamp * sub_9bb5f718[address(arg1)][idx].field_768) - (sub_9bb5f718[address(arg1)][idx].field_0 * sub_9bb5f718[address(arg1)][idx].field_768) / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0)
        u = _124
        continue 
    mem[0] = arg1
    mem[32] = 2
    _128 = mem[64]
    mem[64] = mem[64] + 128
    mem[_128] = 0
    mem[_128 + 32] = 0
    mem[_128 + 64] = 0
    mem[_128 + 96] = 0
    idx = 0
    u = 0
    v = _128
    while idx < sub_9bb5f718[address(arg1)].field_0:
        mem[32] = 2
        require idx < sub_9bb5f718[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 2)
        _168 = mem[64]
        mem[64] = mem[64] + 128
        mem[_168] = sub_9bb5f718[address(arg1)][idx].field_0
        mem[_168 + 32] = sub_9bb5f718[address(arg1)][idx].field_256
        mem[_168 + 64] = sub_9bb5f718[address(arg1)][idx].field_512
        mem[_168 + 96] = sub_9bb5f718[address(arg1)][idx].field_768
        if block.timestamp <= sub_9bb5f718[address(arg1)][idx].field_0:
            idx = idx + 1
            u = u
            v = _168
            continue 
        if block.timestamp >= sub_9bb5f718[address(arg1)][idx].field_256:
            idx = idx + 1
            u = u
            v = _168
            continue 
        if not sub_9bb5f718[address(arg1)][idx].field_768:
            if sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0
            if u + (0 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0) < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            u = u + (0 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0)
            v = _168
            continue 
        require sub_9bb5f718[address(arg1)][idx].field_768
        if 24 * 3600 * sub_9bb5f718[address(arg1)][idx].field_768 / sub_9bb5f718[address(arg1)][idx].field_768 != 24 * 3600:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0
        if u + (24 * 3600 * sub_9bb5f718[address(arg1)][idx].field_768 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0) < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        u = u + (24 * 3600 * sub_9bb5f718[address(arg1)][idx].field_768 / sub_9bb5f718[address(arg1)][idx].field_256 - sub_9bb5f718[address(arg1)][idx].field_0)
        v = _168
        continue 
    return ext_call.return_data[0], 
           s * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0 * sub_9bb5f718[address(arg1)].field_0,
           ext_call.return_data[0],
           t,
           stor3[address(arg1)],
           u
}



}
