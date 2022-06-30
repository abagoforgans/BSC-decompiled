contract main {




// =====================  Runtime code  =====================


#
#  - playerInfo(address arg1)
#  - deposit(uint8 arg1, address arg2)
#
const TIME_STEP = (24 * 3600)


address owner;
address sub_40e19609Address;
address sub_ddf06045Address;
uint256 invested;
uint256 withdrawn;
uint256 match_bonus;
uint256 startUNIX;
array of uint8 ref_bonuses;
mapping of struct tarifs;
mapping of struct players;

function sub_40e19609(?) {
    return sub_40e19609Address
}

function owner() {
    return owner
}

function tarifs(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tarifs[arg1].field_0, tarifs[arg1].field_256
}

function ref_bonuses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return ref_bonuses[uint8(arg1)]
}

function startUNIX() {
    return startUNIX
}

function match_bonus() {
    return match_bonus
}

function withdrawn() {
    return withdrawn
}

function invested() {
    return invested
}

function sub_ddf06045(?) {
    return sub_ddf06045Address
}

function players(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return players[arg1].field_0, 
           players[arg1].field_256,
           players[arg1].field_512,
           players[arg1].field_768,
           players[arg1].field_1024,
           players[arg1].field_1280,
           players[arg1].field_1536,
           players[arg1].field_1792
}

function _fallback() payable {
    revert
}

function contractInfo() {
    return invested, withdrawn, match_bonus, startUNIX
}

function withdraw() {
    require ext_code.size(this.address)
    staticcall this.address.0x6da61d1e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        players[address(msg.sender)].field_1024 = block.timestamp % 1099511627776
        if players[address(msg.sender)].field_256 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        players[address(msg.sender)].field_256 += ext_call.return_data[0]
    if players[address(msg.sender)].field_768 > -86401:
        revert with 'NH{q', 17
    if players[address(msg.sender)].field_768 + (24 * 3600) < players[address(msg.sender)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if players[address(msg.sender)].field_768 + (24 * 3600) >= block.timestamp:
        revert with 0, 'only once a day'
    if players[address(msg.sender)].field_256 <= 0:
        if players[address(msg.sender)].field_512 <= 0:
            revert with 0, 'Zero amount'
    if players[address(msg.sender)].field_256 > -players[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    players[address(msg.sender)].field_256 = 0
    players[address(msg.sender)].field_512 = 0
    if players[address(msg.sender)].field_1536 > -players[address(msg.sender)].field_256 + -players[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    players[address(msg.sender)].field_1536 = players[address(msg.sender)].field_1536 + players[address(msg.sender)].field_256 + players[address(msg.sender)].field_512
    if withdrawn > -players[address(msg.sender)].field_256 + -players[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    withdrawn = withdrawn + players[address(msg.sender)].field_256 + players[address(msg.sender)].field_512
    players[address(msg.sender)].field_768 = block.timestamp
    call msg.sender with:
       value players[address(msg.sender)].field_256 + players[address(msg.sender)].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw((players[address(msg.sender)].field_256 + players[address(msg.sender)].field_512), msg.sender);
}

function payoutOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < players[address(arg1)].field_2048:
        mem[0] = stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_0
        mem[32] = 8
        if tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 and 24 * 3600 > 16777215 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 > -(24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) + test266151307():
            revert with 'NH{q', 17
        if players[address(arg1)].field_1024 > stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512:
            if block.timestamp > stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776:
                if players[address(arg1)].field_1024 >= stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776 < players[address(arg1)].field_1024:
                    revert with 'NH{q', 17
                if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 and (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776 > -1 / stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256:
                    revert with 'NH{q', 17
                if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776 and tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 > -1 / stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776:
                    revert with 'NH{q', 17
                if not tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0:
                    revert with 'NH{q', 18
                if s > -(stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 / 2400 * 24 * 3600)
                continue 
            if players[address(arg1)].field_1024 >= block.timestamp % 1099511627776:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp % 1099511627776 < players[address(arg1)].field_1024:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 and (block.timestamp % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776 > -1 / stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (block.timestamp % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776 and tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 > -1 / stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (block.timestamp % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776:
                revert with 'NH{q', 17
            if not tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0:
                revert with 'NH{q', 18
            if s > -(stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (block.timestamp % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (block.timestamp % 1099511627776) - players[address(arg1)].field_1024 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 / 2400 * 24 * 3600)
            continue 
        if block.timestamp > stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776:
            if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 >= stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776 < stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 and (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776 > -1 / stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776 and tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 > -1 / stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776:
                revert with 'NH{q', 17
            if not tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0:
                revert with 'NH{q', 18
            if s > -(stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 / 2400 * 24 * 3600)
            continue 
        if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 >= block.timestamp % 1099511627776:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp % 1099511627776 < stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 and (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776 > -1 / stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776 and tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 > -1 / stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776:
            revert with 'NH{q', 17
        if not tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0:
            revert with 'NH{q', 18
        if s > -(stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_256 * (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 9)))].field_512 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 8, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor9', 9)))].field_0].field_0 / 2400 * 24 * 3600)
        continue 
    return s
}



}
