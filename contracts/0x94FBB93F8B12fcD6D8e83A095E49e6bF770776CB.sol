contract main {




// =====================  Runtime code  =====================


#
#  - userInfo(address arg1)
#  - deposit(uint8 arg1, address arg2)
#
address owner;
uint256 invested;
uint256 withdrawn;
uint256 match_bonus;
array of uint8 ref_bonuses;
mapping of struct tarifs;
mapping of struct players;

function owner() {
    return owner
}

function tarifs(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tarifs[arg1].field_0, tarifs[arg1].field_8
}

function ref_bonuses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 5
    return ref_bonuses[uint8(arg1)]
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

function players(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return players[arg1].field_0, 
           players[arg1].field_256,
           players[arg1].field_512,
           players[arg1].field_768,
           players[arg1].field_1024,
           players[arg1].field_1280,
           players[arg1].field_1536
}

function reinvest() {
  stop
}

function _fallback() payable {
    revert
}

function contractInfo() {
    return invested, withdrawn, match_bonus
}

function invest() payable {
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function invest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    staticcall this.address.0x6da61d1e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        players[address(msg.sender)].field_768 = block.timestamp % 1099511627776
        if players[address(msg.sender)].field_256 > -ext_call.return_data[0] - 1:
            revert with 'NH{q', 17
        players[address(msg.sender)].field_256 += ext_call.return_data[0]
    if players[address(msg.sender)].field_256 <= 0:
        if players[address(msg.sender)].field_512 <= 0:
            revert with 0, 'Zero amount'
    if players[address(msg.sender)].field_256 > -players[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    players[address(msg.sender)].field_256 = 0
    players[address(msg.sender)].field_512 = 0
    if players[address(msg.sender)].field_1280 > -players[address(msg.sender)].field_256 + -players[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    players[address(msg.sender)].field_1280 = players[address(msg.sender)].field_1280 + players[address(msg.sender)].field_256 + players[address(msg.sender)].field_512
    if withdrawn > -players[address(msg.sender)].field_256 + -players[address(msg.sender)].field_512 - 1:
        revert with 'NH{q', 17
    withdrawn = withdrawn + players[address(msg.sender)].field_256 + players[address(msg.sender)].field_512
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
    while idx < players[address(arg1)].field_1792:
        mem[0] = stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_0
        mem[32] = 5
        if tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 and 24 * 3600 > 16777215 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 > -(24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) + test266151307():
            revert with 'NH{q', 17
        if players[address(arg1)].field_768 > stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512:
            if block.timestamp > stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
                if players[address(arg1)].field_768 >= stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 < players[address(arg1)].field_768:
                    revert with 'NH{q', 17
                if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 and (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_768 % 1099511627776 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256:
                    revert with 'NH{q', 17
                if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_768 % 1099511627776 and tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_768 % 1099511627776:
                    revert with 'NH{q', 17
                if not tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
                    revert with 'NH{q', 18
                if s > -(stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_768 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - players[address(arg1)].field_768 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600)
                continue 
            if players[address(arg1)].field_768 >= block.timestamp % 1099511627776:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp % 1099511627776 < players[address(arg1)].field_768:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 and (block.timestamp % 1099511627776) - players[address(arg1)].field_768 % 1099511627776 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (block.timestamp % 1099511627776) - players[address(arg1)].field_768 % 1099511627776 and tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (block.timestamp % 1099511627776) - players[address(arg1)].field_768 % 1099511627776:
                revert with 'NH{q', 17
            if not tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
                revert with 'NH{q', 18
            if s > -(stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (block.timestamp % 1099511627776) - players[address(arg1)].field_768 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (block.timestamp % 1099511627776) - players[address(arg1)].field_768 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600)
            continue 
        if block.timestamp > stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 >= stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776 < stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 and (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776 and tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776:
                revert with 'NH{q', 17
            if not tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
                revert with 'NH{q', 18
            if s > -(stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 % 16777216) % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600)
            continue 
        if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 >= block.timestamp % 1099511627776:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp % 1099511627776 < stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 and (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776 and tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 > -1 / stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776:
            revert with 'NH{q', 17
        if not tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0:
            revert with 'NH{q', 18
        if s > -(stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_256 * (block.timestamp % 1099511627776) - stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 6)))].field_512 % 1099511627776 * tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_8 / tarifs[stor[(3 * idx) + ('array', 7, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_0 / 2400 * 24 * 3600)
        continue 
    return s
}



}
