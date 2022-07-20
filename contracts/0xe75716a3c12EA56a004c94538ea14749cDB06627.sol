contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint8 arg1, address arg2, uint256 arg3)
#  - userInfo(address arg1)
#  - withdraw(uint256 arg1)
#
address stor0;
uint256 invested;
uint256 sub_833e1973;
uint256 withdrawn;
uint256 sub_613f50ac;
uint256 ref_bonus;
uint256 charity;
uint256 buyback;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint8 stor16;
array of uint16 ref_bonuses;
mapping of struct tarifs;
address WINAddress;

function sub_613f50ac(?) payable {
    return sub_613f50ac
}

function sub_833e1973(?) payable {
    return sub_833e1973
}

function tarifs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return tarifs[arg1].field_0, tarifs[arg1].field_256
}

function charity() payable {
    return charity
}

function WIN() payable {
    return WINAddress
}

function ref_bonuses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < 11
    return uint16(ref_bonuses[uint8(arg1)])
}

function ref_bonus() payable {
    return ref_bonus
}

function withdrawn() payable {
    return withdrawn
}

function invested() payable {
    return invested
}

function players(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return players[arg1].field_0, 
           players[arg1].field_256,
           players[arg1].field_512,
           players[arg1].field_768,
           players[arg1].field_1024,
           players[arg1].field_1280,
           players[arg1].field_1536,
           players[arg1].field_4608,
           players[arg1].field_5120
}

function buyback() payable {
    return buyback
}

function _fallback() payable {
    revert
}

function contractInfo() payable {
    return invested, withdrawn, ref_bonus, sub_833e1973
}

function sub_134d5d91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    stor12 = arg1
    return 1
}

function sub_dcd9bb42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    stor11 = arg1
    return 1
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    stor0 = arg1
    return 1
}

function setMinWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    stor10 = arg1
    return 1
}

function sub_592a499f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    stor16 = uint8(arg1)
    return 1
}

function sub_521d3113(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    if arg1 and 100 > -1 / arg1:
        revert with 'NH{q', 17
    stor15 = 100 * arg1
    return 1
}

function sub_d0054ff4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    if arg1 and 100 > -1 / arg1:
        revert with 'NH{q', 17
    stor14 = 100 * arg1
    return 1
}

function sub_e6e43c91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    if arg1 and 100 > -1 / arg1:
        revert with 'NH{q', 17
    stor13 = 100 * arg1
    return 1
}

function sub_8d7179b9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    tarifs[arg1].field_0 = arg1
    tarifs[arg1].field_256 = arg2
    return 1
}

function sub_99a63986(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    if uint16(arg1) and 100 > 65535 / uint16(arg1):
        revert with 'NH{q', 17
    uint16(ref_bonuses.length) = uint16(100 * uint16(arg1))
    return 1
}

function sub_00dcefc1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized!'
    if uint16(arg1) and 100 > 65535 / uint16(arg1):
        revert with 'NH{q', 17
    if uint16(arg2) >= 11:
        revert with 'NH{q', 50
    uint256(ref_bonuses[uint16(arg2) / 16]) = uint16(100 * uint16(arg1)) * 256^(2 * arg2 % 16) or !(65535 * 256^(2 * arg2 % 16)) and uint256(ref_bonuses[uint16(arg2) / 16])
    return 1
}

function claim() payable {
    if players[address(msg.sender)].field_512 >= stor12:
        mem[100] = this.address
        staticcall WINAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= players[address(msg.sender)].field_512:
            if players[address(msg.sender)].field_1280 > -players[address(msg.sender)].field_512 - 1:
                revert with 'NH{q', 17
            players[address(msg.sender)].field_1280 += players[address(msg.sender)].field_512
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = players[address(msg.sender)].field_512
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196] = 32
            mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(WINAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, players[address(msg.sender)].field_512, 0
            mem[ceil32(return_data.size) + 328] = 0
            call WINAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, players[address(msg.sender)].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, players[address(msg.sender)].field_512, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if sub_613f50ac > -players[address(msg.sender)].field_512 - 1:
                revert with 'NH{q', 17
            sub_613f50ac += players[address(msg.sender)].field_512
            players[address(msg.sender)].field_512 = 0
            emit Withdraw(players[address(msg.sender)].field_512, msg.sender);
}

function payoutOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < players[address(arg1)].field_4864:
        mem[0] = stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_0
        mem[32] = 18
        if tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 and 24 * 3600 > -1 / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 > (-86400 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0) - 1:
            revert with 'NH{q', 17
        if players[address(arg1)].field_4608 > stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512:
            if block.timestamp > stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0):
                if players[address(arg1)].field_4608 >= stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0):
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0) < players[address(arg1)].field_4608:
                    revert with 'NH{q', 17
                if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 and stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0) - players[address(arg1)].field_4608 > -1 / stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256:
                    revert with 'NH{q', 17
                if (stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) - (players[address(arg1)].field_4608 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) and tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256 > -1 / (stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) - (players[address(arg1)].field_4608 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256):
                    revert with 'NH{q', 17
                if not tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0:
                    revert with 'NH{q', 18
                if s > -((stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) - (players[address(arg1)].field_4608 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 / 24000 * 24 * 3600) - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + ((stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) - (players[address(arg1)].field_4608 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 / 24000 * 24 * 3600)
                continue 
            if players[address(arg1)].field_4608 >= block.timestamp:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if block.timestamp < players[address(arg1)].field_4608:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 and block.timestamp - players[address(arg1)].field_4608 > -1 / stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256:
                revert with 'NH{q', 17
            if (block.timestamp * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) - (players[address(arg1)].field_4608 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) and tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256 > -1 / (block.timestamp * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) - (players[address(arg1)].field_4608 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256):
                revert with 'NH{q', 17
            if not tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0:
                revert with 'NH{q', 18
            if s > -((block.timestamp * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) - (players[address(arg1)].field_4608 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 / 24000 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + ((block.timestamp * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) - (players[address(arg1)].field_4608 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 / 24000 * 24 * 3600)
            continue 
        if block.timestamp > stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0):
            if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 >= stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0):
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 + (24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0) < stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512:
                revert with 'NH{q', 17
            if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 and 24 * 3600 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 > -1 / stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256:
                revert with 'NH{q', 17
            if 24 * 3600 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 and tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256 > -1 / 24 * 3600 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0:
                revert with 'NH{q', 17
            if not tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0:
                revert with 'NH{q', 18
            if s > -(24 * 3600 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 / 24000 * 24 * 3600) - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (24 * 3600 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256 / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 / 24000 * 24 * 3600)
            continue 
        if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 >= block.timestamp:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if block.timestamp < stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512:
            revert with 'NH{q', 17
        if stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 and block.timestamp - stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 > -1 / stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256:
            revert with 'NH{q', 17
        if (block.timestamp * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) - (stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) and tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256 > -1 / (block.timestamp * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256) - (stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256):
            revert with 'NH{q', 17
        if not tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0:
            revert with 'NH{q', 18
        if s > -((block.timestamp * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) - (stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 / 24000 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + ((block.timestamp * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) - (stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_512 * stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'players', 19)))].field_256 * tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_256) / tarifs[stor[(3 * idx) + ('array', 19, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor19', 19)))].field_0].field_0 / 24000 * 24 * 3600)
        continue 
    return s
}



}
