contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 stor0;
address owner;
address sub_f592e82fAddress;
address sub_5e7dc418Address;
uint256 totalInvested;
uint256 sub_8ad61c55;
uint256 sub_6b56ee02;
uint256 sub_aa37d610;
uint256 sub_a91f8803;
mapping of struct investors;

function sub_3075c8d6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return investors[address(arg1)].field_512, 
           investors[address(arg1)].field_768,
           investors[address(arg1)].field_1024,
           investors[address(arg1)].field_1280,
           investors[address(arg1)].field_1536
}

function totalInvested() {
    return totalInvested
}

function sub_5e7dc418(?) {
    return sub_5e7dc418Address
}

function sub_6b56ee02(?) {
    return sub_6b56ee02
}

function investors(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return investors[arg1].field_0, 
           investors[arg1].field_256,
           investors[arg1].field_1792,
           investors[arg1].field_2048,
           investors[arg1].field_2304
}

function sub_8ad61c55(?) {
    return sub_8ad61c55
}

function owner() {
    return owner
}

function sub_a91f8803(?) {
    return sub_a91f8803
}

function sub_aa37d610(?) {
    return sub_aa37d610
}

function sub_f592e82f(?) {
    return sub_f592e82fAddress
}

function _fallback() payable {
    revert
}

function getContractInformation() {
    return eth.balance(this.address), totalInvested, sub_8ad61c55, sub_6b56ee02, sub_aa37d610, sub_a91f8803
}

function sub_6cbf7bf2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner is authorized for this option'
    if not address(arg1):
        revert with 0, 'Address cannot be null'
    sub_f592e82fAddress = address(arg1)
}

function sub_80f3c220(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner is authorized for this option'
    if not address(arg1):
        revert with 0, 'Address cannot be null'
    sub_5e7dc418Address = address(arg1)
}

function getDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < investors[address(arg1)].field_2560:
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
            revert with 0, 17
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if idx >= investors[address(arg1)].field_2560:
            revert with 0, 50
        if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
            if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024:
                revert with 0, 17
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256:
                revert with 0, 17
            if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000 and block.timestamp - stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000:
                revert with 0, 17
            if s > !((block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if s + ((block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600) < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 9) + 10
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 < block.timestamp:
                if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512:
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600)
            continue 
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024:
            revert with 0, 17
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256:
            revert with 0, 17
        if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000 and stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 + (720 * 24 * 3600) > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000:
            revert with 0, 17
        if s > !((720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600):
            revert with 0, 17
        if s + ((720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600) < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx >= investors[address(arg1)].field_2560:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 9) + 10
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512:
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600)
        continue 
    return s, 0
}

function invest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.value < 5 * 10^16:
        revert with 0, 'Minimum investment is 0.05 Matic'
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ref address cannot be same with caller'
    if not investors[address(msg.sender)].field_0:
        investors[address(msg.sender)].field_0 = msg.sender
        investors[address(msg.sender)].field_256 = arg1
        idx = 0
        s = arg1
        while idx < 5:
            if investors[address(s)].field_0:
                if idx >= 5:
                    revert with 0, 50
                if investors[address(s)][idx].field_512 > -2:
                    revert with 0, 17
                if investors[address(s)][idx].field_512 + 1 < investors[address(s)][idx].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if idx >= 5:
                    revert with 0, 50
                investors[address(s)][idx].field_512++
                if 1 > !idx:
                    revert with 0, 17
                if 1 == idx + 1:
                    if not msg.value:
                        if sub_a91f8803 > -1:
                            revert with 0, 17
                        if sub_a91f8803 < sub_a91f8803:
                            revert with 0, 'SafeMath: addition overflow'
                        call address(s) with:
                             gas 2300 wei
                    else:
                        if msg.value and 50 > -1 / msg.value:
                            revert with 0, 17
                        if not msg.value:
                            revert with 0, 18
                        if 50 * msg.value / msg.value != 50:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if sub_a91f8803 > !(50 * msg.value / 1000):
                            revert with 0, 17
                        if sub_a91f8803 + (50 * msg.value / 1000) < sub_a91f8803:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a91f8803 += 50 * msg.value / 1000
                        call address(s) with:
                           value 50 * msg.value / 1000 wei
                             gas 2300 * is_zero(value) wei
                else:
                    if 2 == idx + 1:
                        if not msg.value:
                            if sub_a91f8803 > -1:
                                revert with 0, 17
                            if sub_a91f8803 < sub_a91f8803:
                                revert with 0, 'SafeMath: addition overflow'
                            call address(s) with:
                                 gas 2300 wei
                        else:
                            if msg.value and 30 > -1 / msg.value:
                                revert with 0, 17
                            if not msg.value:
                                revert with 0, 18
                            if 30 * msg.value / msg.value != 30:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if sub_a91f8803 > !(30 * msg.value / 1000):
                                revert with 0, 17
                            if sub_a91f8803 + (30 * msg.value / 1000) < sub_a91f8803:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a91f8803 += 30 * msg.value / 1000
                            call address(s) with:
                               value 30 * msg.value / 1000 wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        if 3 == idx + 1:
                            if not msg.value:
                                if sub_a91f8803 > -1:
                                    revert with 0, 17
                                if sub_a91f8803 < sub_a91f8803:
                                    revert with 0, 'SafeMath: addition overflow'
                                call address(s) with:
                                     gas 2300 wei
                            else:
                                if msg.value and 15 > -1 / msg.value:
                                    revert with 0, 17
                                if not msg.value:
                                    revert with 0, 18
                                if 15 * msg.value / msg.value != 15:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if sub_a91f8803 > !(15 * msg.value / 1000):
                                    revert with 0, 17
                                if sub_a91f8803 + (15 * msg.value / 1000) < sub_a91f8803:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_a91f8803 += 15 * msg.value / 1000
                                call address(s) with:
                                   value 15 * msg.value / 1000 wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            if 4 == idx + 1:
                                if not msg.value:
                                    if sub_a91f8803 > -1:
                                        revert with 0, 17
                                    if sub_a91f8803 < sub_a91f8803:
                                        revert with 0, 'SafeMath: addition overflow'
                                    call address(s) with:
                                         gas 2300 wei
                                else:
                                    if msg.value and 5 > -1 / msg.value:
                                        revert with 0, 17
                                    if not msg.value:
                                        revert with 0, 18
                                    if 5 * msg.value / msg.value != 5:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                    if sub_a91f8803 > !(5 * msg.value / 1000):
                                        revert with 0, 17
                                    if sub_a91f8803 + (5 * msg.value / 1000) < sub_a91f8803:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_a91f8803 += 5 * msg.value / 1000
                                    call address(s) with:
                                       value 5 * msg.value / 1000 wei
                                         gas 2300 * is_zero(value) wei
                            else:
                                if idx + 1 != 5:
                                    if sub_a91f8803 > -1:
                                        revert with 0, 17
                                    if sub_a91f8803 < sub_a91f8803:
                                        revert with 0, 'SafeMath: addition overflow'
                                    call address(s) with:
                                         gas 2300 wei
                                else:
                                    if not msg.value:
                                        if sub_a91f8803 > -1:
                                            revert with 0, 17
                                        if sub_a91f8803 < sub_a91f8803:
                                            revert with 0, 'SafeMath: addition overflow'
                                        call address(s) with:
                                             gas 2300 wei
                                    else:
                                        if msg.value and 5 > -1 / msg.value:
                                            revert with 0, 17
                                        if not msg.value:
                                            revert with 0, 18
                                        if 5 * msg.value / msg.value != 5:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                        if sub_a91f8803 > !(5 * msg.value / 1000):
                                            revert with 0, 17
                                        if sub_a91f8803 + (5 * msg.value / 1000) < sub_a91f8803:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_a91f8803 += 5 * msg.value / 1000
                                        call address(s) with:
                                           value 5 * msg.value / 1000 wei
                                             gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = address(s)
                mem[32] = 9
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = investors[address(s)].field_256
                continue 
            if investors[address(msg.sender)].field_1792 > !msg.value:
                revert with 0, 17
            if investors[address(msg.sender)].field_1792 + msg.value < investors[address(msg.sender)].field_1792:
                revert with 0, 'SafeMath: addition overflow'
            investors[address(msg.sender)].field_1792 += msg.value
            if totalInvested > !msg.value:
                revert with 0, 17
            if totalInvested + msg.value < totalInvested:
                revert with 0, 'SafeMath: addition overflow'
            totalInvested += msg.value
            if sub_8ad61c55 > !msg.value:
                revert with 0, 17
            if sub_8ad61c55 + msg.value < sub_8ad61c55:
                revert with 0, 'SafeMath: addition overflow'
            sub_8ad61c55 += msg.value
            investors[address(msg.sender)].field_2560++
            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = msg.value
            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
            if msg.value <= 0:
                revert with 0, 'Amount must be greater than 0'
            if not msg.value:
                call sub_f592e82fAddress with:
                     gas 2300 wei
            else:
                if msg.value and 65 > -1 / msg.value:
                    revert with 0, 17
                if not msg.value:
                    revert with 0, 18
                if 65 * msg.value / msg.value != 65:
                    revert with 0, 'SafeMath: multiplication overflow'
                call sub_f592e82fAddress with:
                   value 65 * msg.value / 1000 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xaf2a5379: msg.sender, msg.value
    if investors[address(msg.sender)].field_1792 > !msg.value:
        revert with 0, 17
    if investors[address(msg.sender)].field_1792 + msg.value < investors[address(msg.sender)].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    investors[address(msg.sender)].field_1792 += msg.value
    if totalInvested > !msg.value:
        revert with 0, 17
    if totalInvested + msg.value < totalInvested:
        revert with 0, 'SafeMath: addition overflow'
    totalInvested += msg.value
    if sub_8ad61c55 > !msg.value:
        revert with 0, 17
    if sub_8ad61c55 + msg.value < sub_8ad61c55:
        revert with 0, 'SafeMath: addition overflow'
    sub_8ad61c55 += msg.value
    investors[address(msg.sender)].field_2560++
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = msg.value
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
    if msg.value <= 0:
        revert with 0, 'Amount must be greater than 0'
    if not msg.value:
        call sub_f592e82fAddress with:
             gas 2300 wei
    else:
        if msg.value and 65 > -1 / msg.value:
            revert with 0, 17
        if not msg.value:
            revert with 0, 18
        if 65 * msg.value / msg.value != 65:
            revert with 0, 'SafeMath: multiplication overflow'
        call sub_f592e82fAddress with:
           value 65 * msg.value / 1000 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xaf2a5379: msg.sender, msg.value
}

function getInvestments(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if investors[address(arg1)].field_2560 > test266151307():
        revert with 0, 65
    if not investors[address(arg1)].field_2560:
        if investors[address(arg1)].field_2560 > test266151307():
            revert with 0, 65
        mem[(32 * investors[address(arg1)].field_2560) + 128] = investors[address(arg1)].field_2560
        if not investors[address(arg1)].field_2560:
            if investors[address(arg1)].field_2560 > test266151307():
                revert with 0, 65
            mem[(64 * investors[address(arg1)].field_2560) + 160] = investors[address(arg1)].field_2560
            if not investors[address(arg1)].field_2560:
                if investors[address(arg1)].field_2560 > test266151307():
                    revert with 0, 65
                mem[(98 * investors[address(arg1)].field_2560) + 192] = investors[address(arg1)].field_2560
                if not investors[address(arg1)].field_2560:
                    idx = 0
                    while idx < investors[address(arg1)].field_2560:
                        if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                            revert with 0, 'wrong investment date'
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 9) + 10
                        if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                            revert with 0, 50
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                            mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                        else:
                            mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                            if idx >= investors[address(arg1)].field_2560:
                                revert with 0, 50
                            mem[0] = sha3(address(arg1), 9) + 10
                            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                                revert with 0, 17
                            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                                if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
                    mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
                    mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
                    mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
                    _865 = mem[(32 * investors[address(arg1)].field_2560) + 128]
                    mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
                    mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
                    mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
                    _993 = mem[(64 * investors[address(arg1)].field_2560) + 160]
                    mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
                    mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _993] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _993]
                    mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _993) + 224
                    _1089 = mem[(98 * investors[address(arg1)].field_2560) + 192]
                    mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _993) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
                    idx = 0
                    s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _993) + 480
                    t = (98 * investors[address(arg1)].field_2560) + 224
                    while idx < _1089:
                        mem[s] = bool(mem[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from (131 * investors[address(arg1)].field_2560) + 224
                       len (33 * investors[address(arg1)].field_2560) + (32 * _865) + (32 * _993) + (32 * _1089) + 256
                mem[(98 * investors[address(arg1)].field_2560) + 224 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
                idx = 0
                while idx < investors[address(arg1)].field_2560:
                    if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'wrong investment date'
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                        revert with 0, 50
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                    else:
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 9) + 10
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                            revert with 0, 17
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                            if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
                mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
                mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
                mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
                _866 = mem[(32 * investors[address(arg1)].field_2560) + 128]
                mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
                mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
                mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
                _994 = mem[(64 * investors[address(arg1)].field_2560) + 160]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _994] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _994]
                mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _994) + 224
                _1090 = mem[(98 * investors[address(arg1)].field_2560) + 192]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _994) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
                idx = 0
                s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _994) + 480
                t = (98 * investors[address(arg1)].field_2560) + 224
                while idx < _1090:
                    mem[s] = bool(mem[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (131 * investors[address(arg1)].field_2560) + 224
                   len (33 * investors[address(arg1)].field_2560) + (32 * _866) + (32 * _994) + (32 * _1090) + 256
            mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
            if investors[address(arg1)].field_2560 > test266151307():
                revert with 0, 65
            mem[(98 * investors[address(arg1)].field_2560) + 192] = investors[address(arg1)].field_2560
            if not investors[address(arg1)].field_2560:
                idx = 0
                while idx < investors[address(arg1)].field_2560:
                    if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'wrong investment date'
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                        revert with 0, 50
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                    else:
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 9) + 10
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                            revert with 0, 17
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                            if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
                mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
                mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
                mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
                _867 = mem[(32 * investors[address(arg1)].field_2560) + 128]
                mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
                mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
                mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
                _995 = mem[(64 * investors[address(arg1)].field_2560) + 160]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _995] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _995]
                mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _995) + 224
                _1091 = mem[(98 * investors[address(arg1)].field_2560) + 192]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _995) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
                idx = 0
                s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _995) + 480
                t = (98 * investors[address(arg1)].field_2560) + 224
                while idx < _1091:
                    mem[s] = bool(mem[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (131 * investors[address(arg1)].field_2560) + 224
                   len (33 * investors[address(arg1)].field_2560) + (32 * _867) + (32 * _995) + (32 * _1091) + 256
            mem[(98 * investors[address(arg1)].field_2560) + 224 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
            idx = 0
            while idx < investors[address(arg1)].field_2560:
                if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'wrong investment date'
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                    revert with 0, 50
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                else:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
            mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
            mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
            mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
            _868 = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
            mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
            _996 = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _996] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _996]
            mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _996) + 224
            _1092 = mem[(98 * investors[address(arg1)].field_2560) + 192]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _996) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
            idx = 0
            s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _996) + 480
            t = (98 * investors[address(arg1)].field_2560) + 224
            while idx < _1092:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (131 * investors[address(arg1)].field_2560) + 224
               len (33 * investors[address(arg1)].field_2560) + (32 * _868) + (32 * _996) + (32 * _1092) + 256
        mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
        if investors[address(arg1)].field_2560 > test266151307():
            revert with 0, 65
        mem[(64 * investors[address(arg1)].field_2560) + 160] = investors[address(arg1)].field_2560
        if not investors[address(arg1)].field_2560:
            if investors[address(arg1)].field_2560 > test266151307():
                revert with 0, 65
            mem[(98 * investors[address(arg1)].field_2560) + 192] = investors[address(arg1)].field_2560
            if not investors[address(arg1)].field_2560:
                idx = 0
                while idx < investors[address(arg1)].field_2560:
                    if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'wrong investment date'
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                        revert with 0, 50
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                    else:
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 9) + 10
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                            revert with 0, 17
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                            if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
                mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
                mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
                mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
                _869 = mem[(32 * investors[address(arg1)].field_2560) + 128]
                mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
                mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
                mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
                _997 = mem[(64 * investors[address(arg1)].field_2560) + 160]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _997] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _997]
                mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _997) + 224
                _1093 = mem[(98 * investors[address(arg1)].field_2560) + 192]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _997) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
                idx = 0
                s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _997) + 480
                t = (98 * investors[address(arg1)].field_2560) + 224
                while idx < _1093:
                    mem[s] = bool(mem[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (131 * investors[address(arg1)].field_2560) + 224
                   len (33 * investors[address(arg1)].field_2560) + (32 * _869) + (32 * _997) + (32 * _1093) + 256
            mem[(98 * investors[address(arg1)].field_2560) + 224 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
            idx = 0
            while idx < investors[address(arg1)].field_2560:
                if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'wrong investment date'
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                    revert with 0, 50
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                else:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
            mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
            mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
            mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
            _870 = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
            mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
            _998 = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _998] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _998]
            mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _998) + 224
            _1094 = mem[(98 * investors[address(arg1)].field_2560) + 192]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _998) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
            idx = 0
            s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _998) + 480
            t = (98 * investors[address(arg1)].field_2560) + 224
            while idx < _1094:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (131 * investors[address(arg1)].field_2560) + 224
               len (33 * investors[address(arg1)].field_2560) + (32 * _870) + (32 * _998) + (32 * _1094) + 256
        mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
        if investors[address(arg1)].field_2560 > test266151307():
            revert with 0, 65
        mem[(98 * investors[address(arg1)].field_2560) + 192] = investors[address(arg1)].field_2560
        if not investors[address(arg1)].field_2560:
            idx = 0
            while idx < investors[address(arg1)].field_2560:
                if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'wrong investment date'
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                    revert with 0, 50
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                else:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
            mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
            mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
            mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
            _871 = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
            mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
            _999 = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _999] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _999]
            mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _999) + 224
            _1095 = mem[(98 * investors[address(arg1)].field_2560) + 192]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _999) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
            idx = 0
            s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _999) + 480
            t = (98 * investors[address(arg1)].field_2560) + 224
            while idx < _1095:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (131 * investors[address(arg1)].field_2560) + 224
               len (33 * investors[address(arg1)].field_2560) + (32 * _871) + (32 * _999) + (32 * _1095) + 256
        mem[(98 * investors[address(arg1)].field_2560) + 224 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
        idx = 0
        while idx < investors[address(arg1)].field_2560:
            if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                revert with 0, 'wrong investment date'
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 9) + 10
            if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                revert with 0, 50
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
            else:
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                    revert with 0, 17
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                    if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
        mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
        mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
        mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
        _872 = mem[(32 * investors[address(arg1)].field_2560) + 128]
        mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
        mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
        mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
        _1000 = mem[(64 * investors[address(arg1)].field_2560) + 160]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1000] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1000]
        mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1000) + 224
        _1096 = mem[(98 * investors[address(arg1)].field_2560) + 192]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1000) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
        idx = 0
        s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1000) + 480
        t = (98 * investors[address(arg1)].field_2560) + 224
        while idx < _1096:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (131 * investors[address(arg1)].field_2560) + 224
           len (33 * investors[address(arg1)].field_2560) + (32 * _872) + (32 * _1000) + (32 * _1096) + 256
    mem[128 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
    if investors[address(arg1)].field_2560 > test266151307():
        revert with 0, 65
    mem[(32 * investors[address(arg1)].field_2560) + 128] = investors[address(arg1)].field_2560
    if not investors[address(arg1)].field_2560:
        if investors[address(arg1)].field_2560 > test266151307():
            revert with 0, 65
        mem[(64 * investors[address(arg1)].field_2560) + 160] = investors[address(arg1)].field_2560
        if not investors[address(arg1)].field_2560:
            if investors[address(arg1)].field_2560 > test266151307():
                revert with 0, 65
            mem[(98 * investors[address(arg1)].field_2560) + 192] = investors[address(arg1)].field_2560
            if not investors[address(arg1)].field_2560:
                idx = 0
                while idx < investors[address(arg1)].field_2560:
                    if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'wrong investment date'
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                        revert with 0, 50
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                    else:
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 9) + 10
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                            revert with 0, 17
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                            if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
                mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
                mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
                mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
                _873 = mem[(32 * investors[address(arg1)].field_2560) + 128]
                mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
                mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
                mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
                _1001 = mem[(64 * investors[address(arg1)].field_2560) + 160]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1001] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1001]
                mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1001) + 224
                _1097 = mem[(98 * investors[address(arg1)].field_2560) + 192]
                mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1001) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
                idx = 0
                s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1001) + 480
                t = (98 * investors[address(arg1)].field_2560) + 224
                while idx < _1097:
                    mem[s] = bool(mem[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (131 * investors[address(arg1)].field_2560) + 224
                   len (33 * investors[address(arg1)].field_2560) + (32 * _873) + (32 * _1001) + (32 * _1097) + 256
            mem[(98 * investors[address(arg1)].field_2560) + 224 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
            idx = 0
            while idx < investors[address(arg1)].field_2560:
                if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'wrong investment date'
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                    revert with 0, 50
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                else:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
            mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
            mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
            mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
            _874 = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
            mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
            _1002 = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1002] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1002]
            mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1002) + 224
            _1098 = mem[(98 * investors[address(arg1)].field_2560) + 192]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1002) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
            idx = 0
            s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1002) + 480
            t = (98 * investors[address(arg1)].field_2560) + 224
            while idx < _1098:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (131 * investors[address(arg1)].field_2560) + 224
               len (33 * investors[address(arg1)].field_2560) + (32 * _874) + (32 * _1002) + (32 * _1098) + 256
        mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
        if investors[address(arg1)].field_2560 > test266151307():
            revert with 0, 65
        mem[(98 * investors[address(arg1)].field_2560) + 192] = investors[address(arg1)].field_2560
        if not investors[address(arg1)].field_2560:
            idx = 0
            while idx < investors[address(arg1)].field_2560:
                if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'wrong investment date'
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                    revert with 0, 50
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                else:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
            mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
            mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
            mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
            _875 = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
            mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
            _1003 = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1003] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1003]
            mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1003) + 224
            _1099 = mem[(98 * investors[address(arg1)].field_2560) + 192]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1003) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
            idx = 0
            s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1003) + 480
            t = (98 * investors[address(arg1)].field_2560) + 224
            while idx < _1099:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (131 * investors[address(arg1)].field_2560) + 224
               len (33 * investors[address(arg1)].field_2560) + (32 * _875) + (32 * _1003) + (32 * _1099) + 256
        mem[(98 * investors[address(arg1)].field_2560) + 224 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
        idx = 0
        while idx < investors[address(arg1)].field_2560:
            if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                revert with 0, 'wrong investment date'
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 9) + 10
            if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                revert with 0, 50
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
            else:
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                    revert with 0, 17
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                    if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
        mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
        mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
        mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
        _876 = mem[(32 * investors[address(arg1)].field_2560) + 128]
        mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
        mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
        mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
        _1004 = mem[(64 * investors[address(arg1)].field_2560) + 160]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1004] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1004]
        mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1004) + 224
        _1100 = mem[(98 * investors[address(arg1)].field_2560) + 192]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1004) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
        idx = 0
        s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1004) + 480
        t = (98 * investors[address(arg1)].field_2560) + 224
        while idx < _1100:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (131 * investors[address(arg1)].field_2560) + 224
           len (33 * investors[address(arg1)].field_2560) + (32 * _876) + (32 * _1004) + (32 * _1100) + 256
    mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
    if investors[address(arg1)].field_2560 > test266151307():
        revert with 0, 65
    mem[(64 * investors[address(arg1)].field_2560) + 160] = investors[address(arg1)].field_2560
    if not investors[address(arg1)].field_2560:
        if investors[address(arg1)].field_2560 > test266151307():
            revert with 0, 65
        mem[(98 * investors[address(arg1)].field_2560) + 192] = investors[address(arg1)].field_2560
        if not investors[address(arg1)].field_2560:
            idx = 0
            while idx < investors[address(arg1)].field_2560:
                if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'wrong investment date'
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                    revert with 0, 50
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                else:
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    mem[0] = sha3(address(arg1), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
            mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
            mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
            mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
            _877 = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
            mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
            mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
            _1005 = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1005] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1005]
            mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1005) + 224
            _1101 = mem[(98 * investors[address(arg1)].field_2560) + 192]
            mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1005) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
            idx = 0
            s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1005) + 480
            t = (98 * investors[address(arg1)].field_2560) + 224
            while idx < _1101:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (131 * investors[address(arg1)].field_2560) + 224
               len (33 * investors[address(arg1)].field_2560) + (32 * _877) + (32 * _1005) + (32 * _1101) + 256
        mem[(98 * investors[address(arg1)].field_2560) + 224 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
        idx = 0
        while idx < investors[address(arg1)].field_2560:
            if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                revert with 0, 'wrong investment date'
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 9) + 10
            if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                revert with 0, 50
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
            else:
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                    revert with 0, 17
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                    if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
        mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
        mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
        mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
        _878 = mem[(32 * investors[address(arg1)].field_2560) + 128]
        mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
        mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
        mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
        _1006 = mem[(64 * investors[address(arg1)].field_2560) + 160]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1006] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1006]
        mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1006) + 224
        _1102 = mem[(98 * investors[address(arg1)].field_2560) + 192]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1006) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
        idx = 0
        s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1006) + 480
        t = (98 * investors[address(arg1)].field_2560) + 224
        while idx < _1102:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (131 * investors[address(arg1)].field_2560) + 224
           len (33 * investors[address(arg1)].field_2560) + (32 * _878) + (32 * _1006) + (32 * _1102) + 256
    mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
    if investors[address(arg1)].field_2560 > test266151307():
        revert with 0, 65
    mem[(98 * investors[address(arg1)].field_2560) + 192] = investors[address(arg1)].field_2560
    if not investors[address(arg1)].field_2560:
        idx = 0
        while idx < investors[address(arg1)].field_2560:
            if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                revert with 0, 'wrong investment date'
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 9) + 10
            if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                revert with 0, 50
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
            else:
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 9) + 10
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                    revert with 0, 17
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                    if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
        mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
        mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
        mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
        _879 = mem[(32 * investors[address(arg1)].field_2560) + 128]
        mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
        mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
        mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
        _1007 = mem[(64 * investors[address(arg1)].field_2560) + 160]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1007] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1007]
        mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1007) + 224
        _1103 = mem[(98 * investors[address(arg1)].field_2560) + 192]
        mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1007) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
        idx = 0
        s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1007) + 480
        t = (98 * investors[address(arg1)].field_2560) + 224
        while idx < _1103:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (131 * investors[address(arg1)].field_2560) + 224
           len (33 * investors[address(arg1)].field_2560) + (32 * _879) + (32 * _1007) + (32 * _1103) + 256
    mem[(98 * investors[address(arg1)].field_2560) + 224 len 32 * investors[address(arg1)].field_2560] = call.data[calldata.size len 32 * investors[address(arg1)].field_2560]
    idx = 0
    while idx < investors[address(arg1)].field_2560:
        if 0 == stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
            revert with 0, 'wrong investment date'
        if idx >= investors[address(arg1)].field_2560:
            revert with 0, 50
        if idx >= mem[(64 * investors[address(arg1)].field_2560) + 160]:
            revert with 0, 50
        mem[(32 * idx) + (64 * investors[address(arg1)].field_2560) + 192] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1536
        if idx >= investors[address(arg1)].field_2560:
            revert with 0, 50
        if idx >= investors[address(arg1)].field_2560:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0
        if idx >= investors[address(arg1)].field_2560:
            revert with 0, 50
        if idx >= mem[(32 * investors[address(arg1)].field_2560) + 128]:
            revert with 0, 50
        mem[(32 * idx) + (32 * investors[address(arg1)].field_2560) + 160] = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
        if idx >= investors[address(arg1)].field_2560:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 9) + 10
        if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
            revert with 0, 50
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
            mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
        else:
            mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 0
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 9) + 10
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                revert with 0, 17
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                if idx >= mem[(98 * investors[address(arg1)].field_2560) + 192]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * investors[address(arg1)].field_2560) + 224] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(131 * investors[address(arg1)].field_2560) + 224] = 128
    mem[(131 * investors[address(arg1)].field_2560) + 352] = investors[address(arg1)].field_2560
    mem[(131 * investors[address(arg1)].field_2560) + 384 len 32 * investors[address(arg1)].field_2560] = mem[128 len 32 * investors[address(arg1)].field_2560]
    mem[(131 * investors[address(arg1)].field_2560) + 256] = (32 * investors[address(arg1)].field_2560) + 160
    _880 = mem[(32 * investors[address(arg1)].field_2560) + 128]
    mem[(164 * investors[address(arg1)].field_2560) + 384] = mem[(32 * investors[address(arg1)].field_2560) + 128]
    mem[(164 * investors[address(arg1)].field_2560) + 416 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]] = mem[(32 * investors[address(arg1)].field_2560) + 160 len 32 * mem[(32 * investors[address(arg1)].field_2560) + 128]]
    mem[(131 * investors[address(arg1)].field_2560) + 288] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 192
    _1008 = mem[(64 * investors[address(arg1)].field_2560) + 160]
    mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 416] = mem[(64 * investors[address(arg1)].field_2560) + 160]
    mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + 448 len 32 * _1008] = mem[(64 * investors[address(arg1)].field_2560) + 192 len 32 * _1008]
    mem[(131 * investors[address(arg1)].field_2560) + 320] = (32 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1008) + 224
    _1104 = mem[(98 * investors[address(arg1)].field_2560) + 192]
    mem[(164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1008) + 448] = mem[(98 * investors[address(arg1)].field_2560) + 192]
    idx = 0
    s = (164 * investors[address(arg1)].field_2560) + (32 * mem[(32 * investors[address(arg1)].field_2560) + 128]) + (32 * _1008) + 480
    t = (98 * investors[address(arg1)].field_2560) + 224
    while idx < _1104:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (131 * investors[address(arg1)].field_2560) + 224
       len (33 * investors[address(arg1)].field_2560) + (32 * _880) + (32 * _1008) + (32 * _1104) + 256
}

function sub_a327ed93(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < investors[address(arg1)].field_2560:
        mem[0] = sha3(address(arg1), 9) + 10
        if not stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768:
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 > -2592001:
                revert with 0, 17
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if idx >= investors[address(arg1)].field_2560:
                revert with 0, 50
            if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024:
                    revert with 0, 17
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256:
                    revert with 0, 17
                if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000 and block.timestamp - stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000:
                    revert with 0, 17
                if idx >= investors[address(arg1)].field_2560:
                    revert with 0, 50
                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 = (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600
                mem[0] = sha3(address(arg1), 9) + 10
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 < block.timestamp:
                    if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512:
                        revert with 0, 17
                    if block.timestamp - stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 / 24 * 3600:
                        if not (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                            if investors[address(arg1)].field_1792 > -1:
                                revert with 0, 17
                            if investors[address(arg1)].field_1792 < investors[address(arg1)].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            if investors[address(arg1)].field_2304 > -1:
                                revert with 0, 17
                            if investors[address(arg1)].field_2304 < investors[address(arg1)].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_aa37d610 > -1:
                                revert with 0, 17
                            if sub_aa37d610 < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(arg1)].field_2560++
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_0 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_256 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_512 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_768 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1024 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1280 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1536 = 0
                            if sub_8ad61c55 > -1:
                                revert with 0, 17
                            if sub_8ad61c55 < sub_8ad61c55:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalInvested > -1:
                                revert with 0, 17
                            if totalInvested < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            revert with 0, 'Amount must be greater than 0'
                        if (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 and 210 > -1 / (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                            revert with 0, 17
                        if not (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                            revert with 0, 18
                        if 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 != 210:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if investors[address(arg1)].field_1792 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if investors[address(arg1)].field_1792 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(arg1)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        investors[address(arg1)].field_1792 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if investors[address(arg1)].field_2304 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if investors[address(arg1)].field_2304 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(arg1)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        investors[address(arg1)].field_2304 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if sub_aa37d610 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if sub_aa37d610 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_aa37d610 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        mem[0] = address(arg1)
                        mem[32] = 9
                        _335 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_335] = block.timestamp
                        mem[_335 + 32] = 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        mem[_335 + 64] = block.timestamp
                        mem[_335 + 96] = 0
                        mem[_335 + 128] = block.timestamp
                        mem[_335 + 160] = 0
                        mem[_335 + 192] = 0
                        investors[address(arg1)].field_2560++
                        mem[0] = sha3(address(arg1), 9) + 10
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_0 = block.timestamp
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_256 = 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_512 = block.timestamp
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_768 = 0
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1024 = block.timestamp
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1280 = 0
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1536 = 0
                        if sub_8ad61c55 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if sub_8ad61c55 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_8ad61c55:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_8ad61c55 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if totalInvested > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if totalInvested + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < totalInvested:
                            revert with 0, 'SafeMath: addition overflow'
                        totalInvested += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 <= 0:
                            revert with 0, 'Amount must be greater than 0'
                        if not 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                            call sub_f592e82fAddress with:
                                 gas 2300 wei
                        else:
                            if 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 and 50 > -1 / 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                revert with 0, 17
                            if not 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                revert with 0, 18
                            if 50 * 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 != 50:
                                revert with 0, 'SafeMath: multiplication overflow'
                            call sub_f592e82fAddress with:
                               value 50 * 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 1000 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = address(arg1)
                        mem[mem[64] + 32] = 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        emit 0xaf2a5379: address(arg1), 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        if 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280:
                            if idx >= investors[address(arg1)].field_2560:
                                revert with 0, 50
                            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 = 0
                        else:
                            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 < 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                revert with 0, 17
                            if idx >= investors[address(arg1)].field_2560:
                                revert with 0, 50
                            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 -= 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if sub_aa37d610 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if sub_aa37d610 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_aa37d610 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if idx >= investors[address(arg1)].field_2560:
                            revert with 0, 50
                        mem[0] = sha3(address(arg1), 9) + 10
                        stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 = block.timestamp
            else:
                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_768 = 1
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 >= sub_8ad61c55:
                    sub_8ad61c55 = 0
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256:
                        revert with 0, 17
                    if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000 and stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 + (720 * 24 * 3600) > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000:
                        revert with 0, 17
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 = (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600
                    mem[0] = sha3(address(arg1), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512:
                            revert with 0, 17
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 + (720 * 24 * 3600) / 24 * 3600:
                            if not (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                if investors[address(arg1)].field_1792 > -1:
                                    revert with 0, 17
                                if investors[address(arg1)].field_1792 < investors[address(arg1)].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(arg1)].field_2304 > -1:
                                    revert with 0, 17
                                if investors[address(arg1)].field_2304 < investors[address(arg1)].field_2304:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_aa37d610 > -1:
                                    revert with 0, 17
                                if sub_aa37d610 < sub_aa37d610:
                                    revert with 0, 'SafeMath: addition overflow'
                                investors[address(arg1)].field_2560++
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_0 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_256 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_512 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_768 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1024 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1280 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1536 = 0
                                if sub_8ad61c55 > -1:
                                    revert with 0, 17
                                if sub_8ad61c55 < sub_8ad61c55:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalInvested > -1:
                                    revert with 0, 17
                                if totalInvested < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                revert with 0, 'Amount must be greater than 0'
                            if (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 and 210 > -1 / (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                revert with 0, 17
                            if not (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                revert with 0, 18
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 != 210:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if investors[address(arg1)].field_1792 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if investors[address(arg1)].field_1792 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(arg1)].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(arg1)].field_1792 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if investors[address(arg1)].field_2304 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if investors[address(arg1)].field_2304 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(arg1)].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(arg1)].field_2304 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if sub_aa37d610 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_aa37d610 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_aa37d610 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            mem[0] = address(arg1)
                            mem[32] = 9
                            _381 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_381] = block.timestamp
                            mem[_381 + 32] = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            mem[_381 + 64] = block.timestamp
                            mem[_381 + 96] = 0
                            mem[_381 + 128] = block.timestamp
                            mem[_381 + 160] = 0
                            mem[_381 + 192] = 0
                            investors[address(arg1)].field_2560++
                            mem[0] = sha3(address(arg1), 9) + 10
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_0 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_256 = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_512 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_768 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1024 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1280 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1536 = 0
                            if sub_8ad61c55 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_8ad61c55 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_8ad61c55:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_8ad61c55 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if totalInvested > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if totalInvested + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            totalInvested += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 <= 0:
                                revert with 0, 'Amount must be greater than 0'
                            if not 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                call sub_f592e82fAddress with:
                                     gas 2300 wei
                            else:
                                if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 and 50 > -1 / 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 17
                                if not 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 18
                                if 50 * 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 != 50:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                call sub_f592e82fAddress with:
                                   value 50 * 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 1000 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(arg1)
                            mem[mem[64] + 32] = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            emit 0xaf2a5379: address(arg1), 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if idx >= investors[address(arg1)].field_2560:
                                revert with 0, 50
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280:
                                if idx >= investors[address(arg1)].field_2560:
                                    revert with 0, 50
                                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 = 0
                            else:
                                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 < 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 17
                                if idx >= investors[address(arg1)].field_2560:
                                    revert with 0, 50
                                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 -= 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if sub_aa37d610 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_aa37d610 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_aa37d610 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if idx >= investors[address(arg1)].field_2560:
                                revert with 0, 50
                            mem[0] = sha3(address(arg1), 9) + 10
                            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600)
                else:
                    if sub_8ad61c55 < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256:
                        revert with 0, 17
                    sub_8ad61c55 -= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256:
                        revert with 0, 17
                    if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000 and stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 + (720 * 24 * 3600) > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000:
                        revert with 0, 17
                    if idx >= investors[address(arg1)].field_2560:
                        revert with 0, 50
                    stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 = (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600
                    mem[0] = sha3(address(arg1), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512:
                            revert with 0, 17
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 + (720 * 24 * 3600) / 24 * 3600:
                            if not (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                if investors[address(arg1)].field_1792 > -1:
                                    revert with 0, 17
                                if investors[address(arg1)].field_1792 < investors[address(arg1)].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(arg1)].field_2304 > -1:
                                    revert with 0, 17
                                if investors[address(arg1)].field_2304 < investors[address(arg1)].field_2304:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_aa37d610 > -1:
                                    revert with 0, 17
                                if sub_aa37d610 < sub_aa37d610:
                                    revert with 0, 'SafeMath: addition overflow'
                                investors[address(arg1)].field_2560++
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_0 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_256 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_512 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_768 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1024 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1280 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1536 = 0
                                if sub_8ad61c55 > -1:
                                    revert with 0, 17
                                if sub_8ad61c55 < sub_8ad61c55:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalInvested > -1:
                                    revert with 0, 17
                                if totalInvested < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                revert with 0, 'Amount must be greater than 0'
                            if (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 and 210 > -1 / (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                revert with 0, 17
                            if not (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                revert with 0, 18
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 != 210:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if investors[address(arg1)].field_1792 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if investors[address(arg1)].field_1792 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(arg1)].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(arg1)].field_1792 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if investors[address(arg1)].field_2304 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if investors[address(arg1)].field_2304 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(arg1)].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(arg1)].field_2304 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if sub_aa37d610 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_aa37d610 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_aa37d610 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            mem[0] = address(arg1)
                            mem[32] = 9
                            _394 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_394] = block.timestamp
                            mem[_394 + 32] = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            mem[_394 + 64] = block.timestamp
                            mem[_394 + 96] = 0
                            mem[_394 + 128] = block.timestamp
                            mem[_394 + 160] = 0
                            mem[_394 + 192] = 0
                            investors[address(arg1)].field_2560++
                            mem[0] = sha3(address(arg1), 9) + 10
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_0 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_256 = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_512 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_768 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1024 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1280 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9))) + (7 * investors[address(arg1)].field_2560)].field_1536 = 0
                            if sub_8ad61c55 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_8ad61c55 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_8ad61c55:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_8ad61c55 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if totalInvested > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if totalInvested + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            totalInvested += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 <= 0:
                                revert with 0, 'Amount must be greater than 0'
                            if not 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                call sub_f592e82fAddress with:
                                     gas 2300 wei
                            else:
                                if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 and 50 > -1 / 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 17
                                if not 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 18
                                if 50 * 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 != 50:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                call sub_f592e82fAddress with:
                                   value 50 * 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 1000 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(arg1)
                            mem[mem[64] + 32] = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            emit 0xaf2a5379: address(arg1), 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if idx >= investors[address(arg1)].field_2560:
                                revert with 0, 50
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280:
                                if idx >= investors[address(arg1)].field_2560:
                                    revert with 0, 50
                                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 = 0
                            else:
                                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 < 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 17
                                if idx >= investors[address(arg1)].field_2560:
                                    revert with 0, 50
                                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1280 -= 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if sub_aa37d610 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_aa37d610 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_aa37d610 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if idx >= investors[address(arg1)].field_2560:
                                revert with 0, 50
                            mem[0] = sha3(address(arg1), 9) + 10
                            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_512 = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdraw() payable {
    mem[64] = 96
    require not msg.value
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    while idx < investors[address(msg.sender)].field_2560:
        mem[0] = sha3(address(msg.sender), 9) + 10
        if not stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_768:
            if idx >= investors[address(msg.sender)].field_2560:
                revert with 0, 50
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 > -2592001:
                revert with 0, 17
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if idx >= investors[address(msg.sender)].field_2560:
                revert with 0, 50
            if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024:
                    revert with 0, 17
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256:
                    revert with 0, 17
                if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000 and block.timestamp - stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000:
                    revert with 0, 17
                if idx >= investors[address(msg.sender)].field_2560:
                    revert with 0, 50
                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 = (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600
                mem[0] = sha3(address(msg.sender), 9) + 10
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 < block.timestamp:
                    if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512:
                        revert with 0, 17
                    if block.timestamp - stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 / 24 * 3600:
                        if not (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                            if investors[address(msg.sender)].field_1792 > -1:
                                revert with 0, 17
                            if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            if investors[address(msg.sender)].field_2304 > -1:
                                revert with 0, 17
                            if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_aa37d610 > -1:
                                revert with 0, 17
                            if sub_aa37d610 < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(msg.sender)].field_2560++
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
                            if sub_8ad61c55 > -1:
                                revert with 0, 17
                            if sub_8ad61c55 < sub_8ad61c55:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalInvested > -1:
                                revert with 0, 17
                            if totalInvested < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            revert with 0, 'Amount must be greater than 0'
                        if (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 and 210 > -1 / (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                            revert with 0, 17
                        if not (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                            revert with 0, 18
                        if 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 != 210:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if investors[address(msg.sender)].field_1792 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if investors[address(msg.sender)].field_1792 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(msg.sender)].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        investors[address(msg.sender)].field_1792 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if investors[address(msg.sender)].field_2304 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if investors[address(msg.sender)].field_2304 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(msg.sender)].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        investors[address(msg.sender)].field_2304 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if sub_aa37d610 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if sub_aa37d610 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_aa37d610 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        mem[0] = msg.sender
                        mem[32] = 9
                        _369 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_369] = block.timestamp
                        mem[_369 + 32] = 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        mem[_369 + 64] = block.timestamp
                        mem[_369 + 96] = 0
                        mem[_369 + 128] = block.timestamp
                        mem[_369 + 160] = 0
                        mem[_369 + 192] = 0
                        investors[address(msg.sender)].field_2560++
                        mem[0] = sha3(address(msg.sender), 9) + 10
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
                        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
                        if sub_8ad61c55 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if sub_8ad61c55 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_8ad61c55:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_8ad61c55 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if totalInvested > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if totalInvested + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < totalInvested:
                            revert with 0, 'SafeMath: addition overflow'
                        totalInvested += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 <= 0:
                            revert with 0, 'Amount must be greater than 0'
                        if not 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                            call sub_f592e82fAddress with:
                                 gas 2300 wei
                        else:
                            if 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 and 50 > -1 / 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                revert with 0, 17
                            if not 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                revert with 0, 18
                            if 50 * 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 != 50:
                                revert with 0, 'SafeMath: multiplication overflow'
                            call sub_f592e82fAddress with:
                               value 50 * 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 1000 wei
                                 gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        emit 0xaf2a5379: msg.sender, 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if idx >= investors[address(msg.sender)].field_2560:
                            revert with 0, 50
                        if 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280:
                            if idx >= investors[address(msg.sender)].field_2560:
                                revert with 0, 50
                            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 = 0
                        else:
                            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 < 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                revert with 0, 17
                            if idx >= investors[address(msg.sender)].field_2560:
                                revert with 0, 50
                            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 -= 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if sub_aa37d610 > !(210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                            revert with 0, 17
                        if sub_aa37d610 + (210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_aa37d610 += 210 * (block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                        if idx >= investors[address(msg.sender)].field_2560:
                            revert with 0, 50
                        mem[0] = sha3(address(msg.sender), 9) + 10
                        stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 = block.timestamp
            else:
                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_768 = 1
                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 >= sub_8ad61c55:
                    sub_8ad61c55 = 0
                    if idx >= investors[address(msg.sender)].field_2560:
                        revert with 0, 50
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256:
                        revert with 0, 17
                    if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000 and stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 + (720 * 24 * 3600) > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000:
                        revert with 0, 17
                    if idx >= investors[address(msg.sender)].field_2560:
                        revert with 0, 50
                    stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 = (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600
                    mem[0] = sha3(address(msg.sender), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512:
                            revert with 0, 17
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 + (720 * 24 * 3600) / 24 * 3600:
                            if not (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                if investors[address(msg.sender)].field_1792 > -1:
                                    revert with 0, 17
                                if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2304 > -1:
                                    revert with 0, 17
                                if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_aa37d610 > -1:
                                    revert with 0, 17
                                if sub_aa37d610 < sub_aa37d610:
                                    revert with 0, 'SafeMath: addition overflow'
                                investors[address(msg.sender)].field_2560++
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
                                if sub_8ad61c55 > -1:
                                    revert with 0, 17
                                if sub_8ad61c55 < sub_8ad61c55:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalInvested > -1:
                                    revert with 0, 17
                                if totalInvested < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                revert with 0, 'Amount must be greater than 0'
                            if (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 and 210 > -1 / (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                revert with 0, 17
                            if not (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                revert with 0, 18
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 != 210:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_1792 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if investors[address(msg.sender)].field_1792 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(msg.sender)].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(msg.sender)].field_1792 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if investors[address(msg.sender)].field_2304 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if investors[address(msg.sender)].field_2304 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(msg.sender)].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(msg.sender)].field_2304 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if sub_aa37d610 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_aa37d610 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_aa37d610 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            mem[0] = msg.sender
                            mem[32] = 9
                            _415 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_415] = block.timestamp
                            mem[_415 + 32] = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            mem[_415 + 64] = block.timestamp
                            mem[_415 + 96] = 0
                            mem[_415 + 128] = block.timestamp
                            mem[_415 + 160] = 0
                            mem[_415 + 192] = 0
                            investors[address(msg.sender)].field_2560++
                            mem[0] = sha3(address(msg.sender), 9) + 10
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
                            if sub_8ad61c55 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_8ad61c55 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_8ad61c55:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_8ad61c55 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if totalInvested > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if totalInvested + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            totalInvested += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 <= 0:
                                revert with 0, 'Amount must be greater than 0'
                            if not 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                call sub_f592e82fAddress with:
                                     gas 2300 wei
                            else:
                                if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 and 50 > -1 / 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 17
                                if not 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 18
                                if 50 * 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 != 50:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                call sub_f592e82fAddress with:
                                   value 50 * 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 1000 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            emit 0xaf2a5379: msg.sender, 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if idx >= investors[address(msg.sender)].field_2560:
                                revert with 0, 50
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280:
                                if idx >= investors[address(msg.sender)].field_2560:
                                    revert with 0, 50
                                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 = 0
                            else:
                                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 < 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 17
                                if idx >= investors[address(msg.sender)].field_2560:
                                    revert with 0, 50
                                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 -= 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if sub_aa37d610 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_aa37d610 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_aa37d610 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if idx >= investors[address(msg.sender)].field_2560:
                                revert with 0, 50
                            mem[0] = sha3(address(msg.sender), 9) + 10
                            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600)
                else:
                    if sub_8ad61c55 < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256:
                        revert with 0, 17
                    sub_8ad61c55 -= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256
                    if idx >= investors[address(msg.sender)].field_2560:
                        revert with 0, 50
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024:
                        revert with 0, 17
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256:
                        revert with 0, 17
                    if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000 and stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 + (720 * 24 * 3600) > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000:
                        revert with 0, 17
                    if idx >= investors[address(msg.sender)].field_2560:
                        revert with 0, 50
                    stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 = (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600
                    mem[0] = sha3(address(msg.sender), 9) + 10
                    if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512:
                            revert with 0, 17
                        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 + (720 * 24 * 3600) / 24 * 3600:
                            if not (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                if investors[address(msg.sender)].field_1792 > -1:
                                    revert with 0, 17
                                if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
                                    revert with 0, 'SafeMath: addition overflow'
                                if investors[address(msg.sender)].field_2304 > -1:
                                    revert with 0, 17
                                if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_aa37d610 > -1:
                                    revert with 0, 17
                                if sub_aa37d610 < sub_aa37d610:
                                    revert with 0, 'SafeMath: addition overflow'
                                investors[address(msg.sender)].field_2560++
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
                                stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
                                if sub_8ad61c55 > -1:
                                    revert with 0, 17
                                if sub_8ad61c55 < sub_8ad61c55:
                                    revert with 0, 'SafeMath: addition overflow'
                                if totalInvested > -1:
                                    revert with 0, 17
                                if totalInvested < totalInvested:
                                    revert with 0, 'SafeMath: addition overflow'
                                revert with 0, 'Amount must be greater than 0'
                            if (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 and 210 > -1 / (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                revert with 0, 17
                            if not (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600:
                                revert with 0, 18
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 != 210:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if investors[address(msg.sender)].field_1792 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if investors[address(msg.sender)].field_1792 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(msg.sender)].field_1792:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(msg.sender)].field_1792 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if investors[address(msg.sender)].field_2304 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if investors[address(msg.sender)].field_2304 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < investors[address(msg.sender)].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            investors[address(msg.sender)].field_2304 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if sub_aa37d610 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_aa37d610 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_aa37d610 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            mem[0] = msg.sender
                            mem[32] = 9
                            _428 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_428] = block.timestamp
                            mem[_428 + 32] = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            mem[_428 + 64] = block.timestamp
                            mem[_428 + 96] = 0
                            mem[_428 + 128] = block.timestamp
                            mem[_428 + 160] = 0
                            mem[_428 + 192] = 0
                            investors[address(msg.sender)].field_2560++
                            mem[0] = sha3(address(msg.sender), 9) + 10
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
                            stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
                            if sub_8ad61c55 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_8ad61c55 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_8ad61c55:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_8ad61c55 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if totalInvested > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if totalInvested + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < totalInvested:
                                revert with 0, 'SafeMath: addition overflow'
                            totalInvested += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 <= 0:
                                revert with 0, 'Amount must be greater than 0'
                            if not 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                call sub_f592e82fAddress with:
                                     gas 2300 wei
                            else:
                                if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 and 50 > -1 / 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 17
                                if not 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 18
                                if 50 * 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 != 50:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                call sub_f592e82fAddress with:
                                   value 50 * 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 / 1000 wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = msg.sender
                            mem[mem[64] + 32] = 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            emit 0xaf2a5379: msg.sender, 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if idx >= investors[address(msg.sender)].field_2560:
                                revert with 0, 50
                            if 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000 >= stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280:
                                if idx >= investors[address(msg.sender)].field_2560:
                                    revert with 0, 50
                                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 = 0
                            else:
                                if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 < 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000:
                                    revert with 0, 17
                                if idx >= investors[address(msg.sender)].field_2560:
                                    revert with 0, 50
                                stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1280 -= 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if sub_aa37d610 > !(210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000):
                                revert with 0, 17
                            if sub_aa37d610 + (210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000) < sub_aa37d610:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_aa37d610 += 210 * (720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600 / 1000
                            if idx >= investors[address(msg.sender)].field_2560:
                                revert with 0, 50
                            mem[0] = sha3(address(msg.sender), 9) + 10
                            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 = stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < investors[address(msg.sender)].field_2560:
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 > -2592001:
            revert with 0, 17
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if idx >= investors[address(msg.sender)].field_2560:
            revert with 0, 50
        if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
            if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024:
                revert with 0, 17
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256:
                revert with 0, 17
            if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000 and block.timestamp - stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000:
                revert with 0, 17
            if s > !((block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600):
                revert with 0, 17
            if s + ((block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600) < s:
                revert with 0, 'SafeMath: addition overflow'
            if idx >= investors[address(msg.sender)].field_2560:
                revert with 0, 50
            mem[0] = sha3(address(msg.sender), 9) + 10
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 < block.timestamp:
                if block.timestamp < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512:
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((block.timestamp * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600)
            continue 
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024:
            revert with 0, 17
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 and 70 > -1 / stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256:
            revert with 0, 17
        if 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000 and stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + -stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 + (720 * 24 * 3600) > -1 / 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000:
            revert with 0, 17
        if s > !((720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600):
            revert with 0, 17
        if s + ((720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600) < s:
            revert with 0, 'SafeMath: addition overflow'
        if idx >= investors[address(msg.sender)].field_2560:
            revert with 0, 50
        mem[0] = sha3(address(msg.sender), 9) + 10
        if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512 < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600):
            if stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 + (720 * 24 * 3600) < stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_512:
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + ((720 * 24 * 3600 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) + (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_0 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) - (stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1024 * 70 * stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_256 / 1000) / 24 * 3600)
        continue 
    if s < 2 * 10^16:
        revert with 0, 'Cannot withdraw less than 0.02 Matic'
    if not s:
        if investors[address(msg.sender)].field_1792 > -1:
            revert with 0, 17
        if investors[address(msg.sender)].field_1792 < investors[address(msg.sender)].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if investors[address(msg.sender)].field_2304 > -1:
            revert with 0, 17
        if investors[address(msg.sender)].field_2304 < investors[address(msg.sender)].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        if sub_aa37d610 > -1:
            revert with 0, 17
        if sub_aa37d610 < sub_aa37d610:
            revert with 0, 'SafeMath: addition overflow'
        investors[address(msg.sender)].field_2560++
        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = 0
        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
        stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
        if sub_8ad61c55 > -1:
            revert with 0, 17
        if sub_8ad61c55 < sub_8ad61c55:
            revert with 0, 'SafeMath: addition overflow'
        if totalInvested > -1:
            revert with 0, 17
        if totalInvested < totalInvested:
            revert with 0, 'SafeMath: addition overflow'
        revert with 0, 'Amount must be greater than 0'
    if s and 250 > -1 / s:
        revert with 0, 17
    if not s:
        revert with 0, 18
    if 250 * s / s != 250:
        revert with 0, 'SafeMath: multiplication overflow'
    if investors[address(msg.sender)].field_1792 > !(250 * s / 1000):
        revert with 0, 17
    if investors[address(msg.sender)].field_1792 + (250 * s / 1000) < investors[address(msg.sender)].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    investors[address(msg.sender)].field_1792 += 250 * s / 1000
    if investors[address(msg.sender)].field_2304 > !(250 * s / 1000):
        revert with 0, 17
    if investors[address(msg.sender)].field_2304 + (250 * s / 1000) < investors[address(msg.sender)].field_2304:
        revert with 0, 'SafeMath: addition overflow'
    investors[address(msg.sender)].field_2304 += 250 * s / 1000
    if sub_aa37d610 > !(250 * s / 1000):
        revert with 0, 17
    if sub_aa37d610 + (250 * s / 1000) < sub_aa37d610:
        revert with 0, 'SafeMath: addition overflow'
    sub_aa37d610 += 250 * s / 1000
    investors[address(msg.sender)].field_2560++
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_0 = block.timestamp
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_256 = 250 * s / 1000
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_512 = block.timestamp
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_768 = 0
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1024 = block.timestamp
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1280 = 0
    stor[('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9))) + (7 * investors[address(msg.sender)].field_2560)].field_1536 = 0
    if sub_8ad61c55 > !(250 * s / 1000):
        revert with 0, 17
    if sub_8ad61c55 + (250 * s / 1000) < sub_8ad61c55:
        revert with 0, 'SafeMath: addition overflow'
    sub_8ad61c55 += 250 * s / 1000
    if totalInvested > !(250 * s / 1000):
        revert with 0, 17
    if totalInvested + (250 * s / 1000) < totalInvested:
        revert with 0, 'SafeMath: addition overflow'
    totalInvested += 250 * s / 1000
    if 250 * s / 1000 <= 0:
        revert with 0, 'Amount must be greater than 0'
    if not 250 * s / 1000:
        call sub_f592e82fAddress with:
             gas 2300 wei
    else:
        if 250 * s / 1000 and 50 > -1 / 250 * s / 1000:
            revert with 0, 17
        if not 250 * s / 1000:
            revert with 0, 18
        if 50 * 250 * s / 1000 / 250 * s / 1000 != 50:
            revert with 0, 'SafeMath: multiplication overflow'
        call sub_f592e82fAddress with:
           value 50 * 250 * s / 1000 / 1000 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 250 * s / 1000 >= s:
        if sub_6b56ee02 > -1:
            revert with 0, 17
        if sub_6b56ee02 < sub_6b56ee02:
            revert with 0, 'SafeMath: addition overflow'
        investors[msg.sender].field_2048 = 0
        idx = 0
        while idx < investors[msg.sender].field_2560:
            if idx >= investors[msg.sender].field_2560:
                revert with 0, 50
            stor[(7 * idx) + ('array', 10, ('map', 'msg.sender', ('name', 'investors', 9)))].field_1024 = block.timestamp
            if idx >= investors[msg.sender].field_2560:
                revert with 0, 50
            if idx >= investors[address(msg.sender)].field_2560:
                revert with 0, 50
            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1536 = stor[(7 * idx) + ('array', 10, ('map', 'msg.sender', ('name', 'investors', 9)))].field_1280
            if idx >= investors[msg.sender].field_2560:
                revert with 0, 50
            stor[(7 * idx) + ('array', 10, ('map', 'msg.sender', ('name', 'investors', 9)))].field_1280 = 0
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 9
            idx = idx + 1
            continue 
        call msg.sender with:
             gas 2300 wei
    else:
        if s < 250 * s / 1000:
            revert with 0, 17
        if sub_6b56ee02 > !(s - (250 * s / 1000)):
            revert with 0, 17
        if sub_6b56ee02 + s - (250 * s / 1000) < sub_6b56ee02:
            revert with 0, 'SafeMath: addition overflow'
        sub_6b56ee02 = sub_6b56ee02 + s - (250 * s / 1000)
        investors[msg.sender].field_2048 = s - (250 * s / 1000)
        idx = 0
        while idx < investors[msg.sender].field_2560:
            if idx >= investors[msg.sender].field_2560:
                revert with 0, 50
            stor[(7 * idx) + ('array', 10, ('map', 'msg.sender', ('name', 'investors', 9)))].field_1024 = block.timestamp
            if idx >= investors[msg.sender].field_2560:
                revert with 0, 50
            if idx >= investors[address(msg.sender)].field_2560:
                revert with 0, 50
            stor[(7 * idx) + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'investors', 9)))].field_1536 = stor[(7 * idx) + ('array', 10, ('map', 'msg.sender', ('name', 'investors', 9)))].field_1280
            if idx >= investors[msg.sender].field_2560:
                revert with 0, 50
            stor[(7 * idx) + ('array', 10, ('map', 'msg.sender', ('name', 'investors', 9)))].field_1280 = 0
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 9
            idx = idx + 1
            continue 
        call msg.sender with:
           value s - (250 * s / 1000) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}



}
