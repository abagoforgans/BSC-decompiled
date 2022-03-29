contract main {




// =====================  Runtime code  =====================


address owner;
uint256 minimumBet;
uint256 choice1;
uint256 choice2;
uint256 sub_eb45fb2e;
uint256 stor5;
uint256 balanceTotal;
uint256 sub_c7ae7f6d;
array of address players;
mapping of struct stor12;

function balanceTotal() {
    return balanceTotal
}

function AmountOne() {
    return choice1
}

function choice1() {
    return choice1
}

function AmountTwo() {
    return choice2
}

function sub_7e34bb79(?) {
    return sub_eb45fb2e
}

function choice2() {
    return choice2
}

function owner() {
    return owner
}

function minimumBet() {
    return minimumBet
}

function sub_c7ae7f6d(?) {
    return sub_c7ae7f6d
}

function sub_eb45fb2e(?) {
    return sub_eb45fb2e
}

function players(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < players.length
    return address(players[arg1])
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_8b0c06d3(?) {
    require calldata.size - 4 >= 32
    sub_c7ae7f6d = arg1
}

function sub_835c6a6f(?) {
    require choice2
    return ((100 * balanceTotal / choice2) - (100 * balanceTotal / choice2 / 10))
}

function sub_f1dfbe6e(?) {
    require choice1
    return ((100 * balanceTotal / choice1) - (100 * balanceTotal / choice1 / 10))
}

function sub_17a6230b(?) {
    require sub_eb45fb2e
    return ((100 * balanceTotal / sub_eb45fb2e) - (100 * balanceTotal / sub_eb45fb2e / 10))
}

function sub_402ec45d(?) {
    require calldata.size - 4 >= 32
    call arg1 with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e8a54aac(?) {
    require calldata.size - 4 >= 32
    call arg1 with:
       value balanceTotal wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkPlayerExists(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < players.length:
        mem[0] = 11
        if address(players[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function bet(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < players.length:
        mem[0] = 11
        require address(players[idx]) != msg.sender
        idx = idx + 1
        continue 
    require msg.value >= minimumBet
    stor12[address(msg.sender)].field_0 = msg.value
    stor12[address(msg.sender)].field_256 = arg1
    stor12[address(msg.sender)].field_264 = 0
    players.length++
    address(players[players.length]) = msg.sender
    if arg1 == 1:
        choice1 += msg.value
        balanceTotal += msg.value
    if arg1 == 2:
        choice2 += msg.value
        balanceTotal += msg.value
    if arg1 == 3:
        sub_eb45fb2e += msg.value
        balanceTotal += msg.value
}

function distributePrizes(uint16 arg1) {
    require calldata.size - 4 >= 32
    mem[96 len 1600000] = code.data[3741 len 1600000]
    idx = 0
    s = 0
    t = 0
    while idx < players.length:
        mem[0] = address(players[idx])
        mem[32] = 12
        if stor12[address(stor11[idx])].field_256 != arg1:
            idx = idx + 1
            s = address(players[idx])
            t = t
            continue 
        require t < 50000
        mem[(32 * t) + 96] = address(players[idx])
        idx = idx + 1
        s = address(players[idx])
        t = t + 1
        continue 
    if arg1 != 1:
        if arg1 != 2:
            if arg1 != 3:
                require 0 >= t
            else:
                u = 0
                v = 0
                v = 0
                while u < t:
                    require u < 50000
                    if not mem[(32 * u) + 108 len 20]:
                        mem[0] = address(v)
                        mem[32] = 12
                        require sub_eb45fb2e
                        balanceTotal = (50000 * stor12[address(v)].field_0) + ((50000 * choice1) + (50000 * choice2) / sub_eb45fb2e * stor12[address(v)].field_0) / 50000
                        stor5 = balanceTotal / 10
                        balanceTotal -= stor5
                        require u < 50000
                        call mem[(32 * u) + 108 len 20] with:
                           value balanceTotal wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        u = u + 1
                        v = stor12[address(v)].field_0
                        v = v
                        continue 
                    require u < 50000
                    mem[0] = mem[(32 * u) + 108 len 20]
                    mem[32] = 12
                    require sub_eb45fb2e
                    balanceTotal = (50000 * stor12[mem[(32 * u) + 108 len 20]].field_0) + ((50000 * choice1) + (50000 * choice2) / sub_eb45fb2e * stor12[mem[(32 * u) + 108 len 20]].field_0) / 50000
                    stor5 = balanceTotal / 10
                    balanceTotal -= stor5
                    require u < 50000
                    call mem[(32 * u) + 108 len 20] with:
                       value balanceTotal wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    u = u + 1
                    v = stor12[mem[(32 * u) + 108 len 20]].field_0
                    v = mem[(32 * u) + 96]
                    continue 
        else:
            if arg1 != 3:
                u = 0
                v = 0
                v = 0
                while u < t:
                    require u < 50000
                    if not mem[(32 * u) + 108 len 20]:
                        mem[0] = address(v)
                        mem[32] = 12
                        require choice2
                        balanceTotal = (50000 * stor12[address(v)].field_0) + ((50000 * choice1) + (50000 * sub_eb45fb2e) / choice2 * stor12[address(v)].field_0) / 50000
                        stor5 = balanceTotal / 10
                        balanceTotal -= stor5
                        require u < 50000
                        call mem[(32 * u) + 108 len 20] with:
                           value balanceTotal wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        u = u + 1
                        v = stor12[address(v)].field_0
                        v = v
                        continue 
                    require u < 50000
                    mem[0] = mem[(32 * u) + 108 len 20]
                    mem[32] = 12
                    require choice2
                    balanceTotal = (50000 * stor12[mem[(32 * u) + 108 len 20]].field_0) + ((50000 * choice1) + (50000 * sub_eb45fb2e) / choice2 * stor12[mem[(32 * u) + 108 len 20]].field_0) / 50000
                    stor5 = balanceTotal / 10
                    balanceTotal -= stor5
                    require u < 50000
                    call mem[(32 * u) + 108 len 20] with:
                       value balanceTotal wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    u = u + 1
                    v = stor12[mem[(32 * u) + 108 len 20]].field_0
                    v = mem[(32 * u) + 96]
                    continue 
            else:
                u = 0
                v = 0
                v = 0
                while u < t:
                    require u < 50000
                    if not mem[(32 * u) + 108 len 20]:
                        mem[0] = address(v)
                        mem[32] = 12
                        require sub_eb45fb2e
                        balanceTotal = (50000 * stor12[address(v)].field_0) + ((50000 * choice1) + (50000 * choice2) / sub_eb45fb2e * stor12[address(v)].field_0) / 50000
                        stor5 = balanceTotal / 10
                        balanceTotal -= stor5
                        require u < 50000
                        call mem[(32 * u) + 108 len 20] with:
                           value balanceTotal wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        u = u + 1
                        v = stor12[address(v)].field_0
                        v = v
                        continue 
                    require u < 50000
                    mem[0] = mem[(32 * u) + 108 len 20]
                    mem[32] = 12
                    require sub_eb45fb2e
                    balanceTotal = (50000 * stor12[mem[(32 * u) + 108 len 20]].field_0) + ((50000 * choice1) + (50000 * choice2) / sub_eb45fb2e * stor12[mem[(32 * u) + 108 len 20]].field_0) / 50000
                    stor5 = balanceTotal / 10
                    balanceTotal -= stor5
                    require u < 50000
                    call mem[(32 * u) + 108 len 20] with:
                       value balanceTotal wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    u = u + 1
                    v = stor12[mem[(32 * u) + 108 len 20]].field_0
                    v = mem[(32 * u) + 96]
                    continue 
        stor12[address(s)].field_0 = 0
        stor12[address(s)].field_256 = 0
        players.length = 0
        if players.length > 0:
            idx = 0
            while players.length > idx:
                uint256(players[idx]) = 0
                idx = idx + 1
                continue 
    else:
        if arg1 != 2:
            if arg1 != 3:
                u = 0
                v = 0
                v = 0
                while u < t:
                    require u < 50000
                    if not mem[(32 * u) + 108 len 20]:
                        mem[0] = address(v)
                        mem[32] = 12
                        require choice1
                        balanceTotal = (50000 * stor12[address(v)].field_0) + ((50000 * choice2) + (50000 * sub_eb45fb2e) / choice1 * stor12[address(v)].field_0) / 50000
                        stor5 = balanceTotal / 10
                        balanceTotal -= stor5
                        require u < 50000
                        call mem[(32 * u) + 108 len 20] with:
                           value balanceTotal wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        u = u + 1
                        v = stor12[address(v)].field_0
                        v = v
                        continue 
                    require u < 50000
                    mem[0] = mem[(32 * u) + 108 len 20]
                    mem[32] = 12
                    require choice1
                    balanceTotal = (50000 * stor12[mem[(32 * u) + 108 len 20]].field_0) + ((50000 * choice2) + (50000 * sub_eb45fb2e) / choice1 * stor12[mem[(32 * u) + 108 len 20]].field_0) / 50000
                    stor5 = balanceTotal / 10
                    balanceTotal -= stor5
                    require u < 50000
                    call mem[(32 * u) + 108 len 20] with:
                       value balanceTotal wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    u = u + 1
                    v = stor12[mem[(32 * u) + 108 len 20]].field_0
                    v = mem[(32 * u) + 96]
                    continue 
            else:
                u = 0
                v = 0
                v = 0
                while u < t:
                    require u < 50000
                    if not mem[(32 * u) + 108 len 20]:
                        mem[0] = address(v)
                        mem[32] = 12
                        require sub_eb45fb2e
                        balanceTotal = (50000 * stor12[address(v)].field_0) + ((50000 * choice1) + (50000 * choice2) / sub_eb45fb2e * stor12[address(v)].field_0) / 50000
                        stor5 = balanceTotal / 10
                        balanceTotal -= stor5
                        require u < 50000
                        call mem[(32 * u) + 108 len 20] with:
                           value balanceTotal wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        u = u + 1
                        v = stor12[address(v)].field_0
                        v = v
                        continue 
                    require u < 50000
                    mem[0] = mem[(32 * u) + 108 len 20]
                    mem[32] = 12
                    require sub_eb45fb2e
                    balanceTotal = (50000 * stor12[mem[(32 * u) + 108 len 20]].field_0) + ((50000 * choice1) + (50000 * choice2) / sub_eb45fb2e * stor12[mem[(32 * u) + 108 len 20]].field_0) / 50000
                    stor5 = balanceTotal / 10
                    balanceTotal -= stor5
                    require u < 50000
                    call mem[(32 * u) + 108 len 20] with:
                       value balanceTotal wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    u = u + 1
                    v = stor12[mem[(32 * u) + 108 len 20]].field_0
                    v = mem[(32 * u) + 96]
                    continue 
            stor12[address(s)].field_0 = 0
            stor12[address(s)].field_256 = 0
            players.length = 0
            if players.length > 0:
                idx = 0
                while players.length > idx:
                    uint256(players[idx]) = 0
                    idx = idx + 1
                    continue 
        else:
            if arg1 != 3:
                u = 0
                v = 0
                v = 0
                while u < t:
                    require u < 50000
                    if not mem[(32 * u) + 108 len 20]:
                        mem[0] = address(v)
                        mem[32] = 12
                        require choice2
                        balanceTotal = (50000 * stor12[address(v)].field_0) + ((50000 * choice1) + (50000 * sub_eb45fb2e) / choice2 * stor12[address(v)].field_0) / 50000
                        stor5 = balanceTotal / 10
                        balanceTotal -= stor5
                        require u < 50000
                        call mem[(32 * u) + 108 len 20] with:
                           value balanceTotal wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        u = u + 1
                        v = stor12[address(v)].field_0
                        v = v
                        continue 
                    require u < 50000
                    mem[0] = mem[(32 * u) + 108 len 20]
                    mem[32] = 12
                    require choice2
                    balanceTotal = (50000 * stor12[mem[(32 * u) + 108 len 20]].field_0) + ((50000 * choice1) + (50000 * sub_eb45fb2e) / choice2 * stor12[mem[(32 * u) + 108 len 20]].field_0) / 50000
                    stor5 = balanceTotal / 10
                    balanceTotal -= stor5
                    require u < 50000
                    call mem[(32 * u) + 108 len 20] with:
                       value balanceTotal wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    u = u + 1
                    v = stor12[mem[(32 * u) + 108 len 20]].field_0
                    v = mem[(32 * u) + 96]
                    continue 
            else:
                u = 0
                v = 0
                v = 0
                while u < t:
                    require u < 50000
                    if not mem[(32 * u) + 108 len 20]:
                        mem[0] = address(v)
                        mem[32] = 12
                        require sub_eb45fb2e
                        balanceTotal = (50000 * stor12[address(v)].field_0) + ((50000 * choice1) + (50000 * choice2) / sub_eb45fb2e * stor12[address(v)].field_0) / 50000
                        stor5 = balanceTotal / 10
                        balanceTotal -= stor5
                        require u < 50000
                        call mem[(32 * u) + 108 len 20] with:
                           value balanceTotal wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        u = u + 1
                        v = stor12[address(v)].field_0
                        v = v
                        continue 
                    require u < 50000
                    mem[0] = mem[(32 * u) + 108 len 20]
                    mem[32] = 12
                    require sub_eb45fb2e
                    balanceTotal = (50000 * stor12[mem[(32 * u) + 108 len 20]].field_0) + ((50000 * choice1) + (50000 * choice2) / sub_eb45fb2e * stor12[mem[(32 * u) + 108 len 20]].field_0) / 50000
                    stor5 = balanceTotal / 10
                    balanceTotal -= stor5
                    require u < 50000
                    call mem[(32 * u) + 108 len 20] with:
                       value balanceTotal wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    u = u + 1
                    v = stor12[mem[(32 * u) + 108 len 20]].field_0
                    v = mem[(32 * u) + 96]
                    continue 
            stor12[address(s)].field_0 = 0
            stor12[address(s)].field_256 = 0
            players.length = 0
            if players.length > 0:
                idx = 0
                while players.length > idx:
                    uint256(players[idx]) = 0
                    idx = idx + 1
                    continue 
    choice1 = 0
    choice2 = 0
    sub_eb45fb2e = 0
}



}
