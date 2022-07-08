contract main {




// =====================  Runtime code  =====================


#
#  - feed(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of struct infos;
uint256 sub_10d4f96d;
uint256 rewardsTotal;
uint256 mintingStartTime;
uint256 sub_5af04ce5;
uint256 sub_0cbd349f;
uint256 sub_ce88888c;
uint256 sub_7e3ed9e7;
uint256 sub_8053c861;
uint256 sub_d7c1eb84;
uint256 sub_8cc56a8c;
mapping of uint8 stor112;
address stor113;
address stor114;
address stor115;
address stor116;
address stor117;
address stor118;
address stor119;
mapping of uint256 sub_d95e8d86;
mapping of uint256 sub_6239182b;
mapping of uint256 sub_12eabd5e;
mapping of uint256 sub_5ed2b032;
array of struct sub_e900d358;
mapping of uint256 sub_90d55b5d;
address stor126;

function sub_0cbd349f(?) {
    return sub_0cbd349f
}

function sub_10d4f96d(?) {
    return sub_10d4f96d
}

function sub_12eabd5e(?) {
    require calldata.size - 4 >= 32
    return sub_12eabd5e[arg1]
}

function infos(uint256 arg1) {
    require calldata.size - 4 >= 32
    return infos[arg1].field_0, 
           infos[arg1].field_256,
           infos[arg1].field_512,
           infos[arg1].field_768,
           infos[arg1].field_1024,
           infos[arg1].field_1280,
           infos[arg1].field_1536,
           infos[arg1].field_2048,
           infos[arg1].field_2304,
           infos[arg1].field_2560
}

function sub_5af04ce5(?) {
    return sub_5af04ce5
}

function sub_5ed2b032(?) {
    require calldata.size - 4 >= 32
    return sub_5ed2b032[arg1]
}

function sub_6239182b(?) {
    require calldata.size - 4 >= 32
    return sub_6239182b[arg1]
}

function sub_7e3ed9e7(?) {
    return sub_7e3ed9e7
}

function sub_8053c861(?) {
    return sub_8053c861
}

function sub_8cc56a8c(?) {
    return sub_8cc56a8c
}

function owner() {
    return owner
}

function sub_90d55b5d(?) {
    require calldata.size - 4 >= 32
    return sub_90d55b5d[arg1]
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor112[arg1])
}

function rewardsTotal() {
    return rewardsTotal
}

function sub_ce88888c(?) {
    return sub_ce88888c
}

function sub_d7c1eb84(?) {
    return sub_d7c1eb84
}

function sub_d95e8d86(?) {
    require calldata.size - 4 >= 32
    return sub_d95e8d86[arg1]
}

function mintingStartTime() {
    return mintingStartTime
}

function sub_e900d358(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_e900d358[arg1].field_0
    return sub_e900d358[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function getBuyPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function sub_8915567b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return 0, 64, 8, 0, 0
}

function stopMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintingStartTime = 0
}

function startMinting() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintingStartTime = block.timestamp
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function upgrade(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor126 = arg1
}

function sub_685d860d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor113 = address(arg1)
}

function sub_f45ca291(?) {
    require calldata.size - 4 >= 32
    if not sub_5ed2b032[arg1]:
        return 0
    if 900 > !sub_5ed2b032[arg1]:
        revert with 0, 17
    if block.timestamp > sub_5ed2b032[arg1] + 900:
        return 2
    return 1
}

function sub_6a9bb352(?) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0cbd349f = arg1
    sub_ce88888c = arg2
    sub_7e3ed9e7 = arg3
    sub_8053c861 = arg4
    sub_d7c1eb84 = arg5
    sub_8cc56a8c = arg6
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sub_7eccfc03(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_10d4f96d:
        if sub_5af04ce5 > !(arg1 / sub_10d4f96d):
            revert with 0, 17
        sub_5af04ce5 += arg1 / sub_10d4f96d
        if rewardsTotal > !arg1:
            revert with 0, 17
        rewardsTotal += arg1
}

function sub_e0f8c43c(?) {
    require calldata.size - 4 >= 32
    if infos[arg1].field_0 and sub_5af04ce5 > -1 / infos[arg1].field_0:
        revert with 0, 17
    if infos[arg1].field_2304 >= infos[arg1].field_0 * sub_5af04ce5:
        return 0
    if infos[arg1].field_0 * sub_5af04ce5 < infos[arg1].field_2304:
        revert with 0, 17
    return ((infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304)
}

function sub_b88fefd3(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if infos[arg1].field_0 > !arg2:
        revert with 0, 17
    infos[arg1].field_0 += arg2
    if sub_10d4f96d > !arg2:
        revert with 0, 17
    sub_10d4f96d += arg2
    if sub_5af04ce5 and arg2 > -1 / sub_5af04ce5:
        revert with 0, 17
    if infos[arg1].field_2304 > !(sub_5af04ce5 * arg2):
        revert with 0, 17
    infos[arg1].field_2304 += sub_5af04ce5 * arg2
    infos[arg1].field_1280 = block.timestamp
}

function sub_c595ce94(?) {
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'TokenID 0 not allowed'
    if not sub_5ed2b032[arg2]:
        revert with 0, 'Stealing not available'
    if 900 > !sub_5ed2b032[arg2]:
        revert with 0, 17
    if block.timestamp <= sub_5ed2b032[arg2] + 900:
        revert with 0, 'Stealing not available'
    if arg1 != sub_90d55b5d[arg2]:
        revert with 0, 'No successful steal'
    if block.timestamp < 1800:
        revert with 0, 17
    if sub_5ed2b032[arg2] <= block.timestamp - 1800:
        revert with 0, 'Steal expired'
    sub_90d55b5d[arg2] = 0
    sub_e900d358[arg2].field_0 = 0
    idx = 0
    while sub_e900d358[arg2].field_0 > idx:
        sub_e900d358[arg2][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_5ed2b032[arg2] = 0
}

function sub_2708d4ff(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 112
        stor112[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6d876802(?) {
    require calldata.size - 4 >= 32
    if sub_d95e8d86[arg1]:
        if block.timestamp / 24 * 3600 < sub_d95e8d86[arg1]:
            revert with 0, 17
        if (block.timestamp / 24 * 3600) - sub_d95e8d86[arg1] > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1]) <= 50:
            return ((5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1]))
    else:
        require ext_code.size(stor113)
        staticcall stor113.0xf586fd9d with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] / 24 * 3600 > block.timestamp / 24 * 3600:
            return 0
        if block.timestamp / 24 * 3600 < ext_call.return_data[0] / 24 * 3600:
            revert with 0, 17
        if (block.timestamp / 24 * 3600) - (ext_call.return_data[0] / 24 * 3600) > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600) <= 50:
            return ((5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600))
    return 50
}

function sub_23c67f42(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor113)
    staticcall stor113.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Token not owned by caller'
    require ext_code.size(stor126)
    staticcall stor126.exists(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'Gen-1 already minted'
    if 10000 >= infos[arg1].field_0:
        revert with 0, 'PXP must be larger than 10,000'
    require ext_code.size(stor126)
    call stor126.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sha3(block.timestamp, msg.sender, arg1) % 9 > -2:
        revert with 0, 17
    infos[arg1].field_2560 = (sha3(block.timestamp, msg.sender, arg1) % 9) + 1
}

function sub_4216d797(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor113)
    staticcall stor113.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Token not owned by caller'
    if sub_5ed2b032[arg2]:
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp > sub_5ed2b032[arg2] + 900:
            if block.timestamp < 1800:
                revert with 0, 17
            if sub_5ed2b032[arg2] >= block.timestamp - 1800:
                revert with 0, 'Steal already happened, wait for claim or timeout'
    if 10000 >= infos[arg1].field_0:
        if block.timestamp < 24 * 3600:
            revert with 0, 17
        if sub_6239182b[arg1] > block.timestamp - (24 * 3600):
            return 0, 64, 24, 0x41747461636b657220697320636f6f6c, 0
    else:
        if block.timestamp < 12 * 3600:
            revert with 0, 17
        if sub_6239182b[arg1] > block.timestamp - (12 * 3600):
            return 0, 64, 24, 0x41747461636b657220697320636f6f6c, 0
    if block.timestamp < 12 * 3600:
        revert with 0, 17
    if infos[arg1].field_1024 < block.timestamp - (12 * 3600):
        return 0, 64, 32, 'Attacker is too hungry to attack'
    if block.timestamp < 240 * 24 * 3600:
        revert with 0, 17
    if infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600):
        return 0, 64, 16, 'Victim is active', 0
    if infos[arg2].field_0 and sub_5af04ce5 > -1 / infos[arg2].field_0:
        revert with 0, 17
    if infos[arg2].field_2304 < infos[arg2].field_0 * sub_5af04ce5:
        if infos[arg2].field_0 * sub_5af04ce5 < infos[arg2].field_2304:
            revert with 0, 17
        if (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304:
            return 1, 64, 2, 0, 0
    return 0, 64, 29, 'Victim has no rewards pending', 0
}

function sub_18719efe(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor113)
    staticcall stor113.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Token not owned by caller'
    if sub_5ed2b032[arg2]:
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp > sub_5ed2b032[arg2] + 900:
            if block.timestamp < 1800:
                revert with 0, 17
            if sub_5ed2b032[arg2] >= block.timestamp - 1800:
                revert with 0, 'Steal already happened, wait for claim or timeout'
    if 10000 >= infos[arg1].field_0:
        if block.timestamp < 24 * 3600:
            revert with 0, 17
        if sub_6239182b[arg1] > block.timestamp - (24 * 3600):
            revert with 0, 'Attacker is cool', 0
    else:
        if block.timestamp < 12 * 3600:
            revert with 0, 17
        if sub_6239182b[arg1] > block.timestamp - (12 * 3600):
            revert with 0, 'Attacker is cool', 0
    if block.timestamp < 12 * 3600:
        revert with 0, 17
    if infos[arg1].field_1024 < block.timestamp - (12 * 3600):
        revert with 0, 'Attacker is too hungry to attack'
    if block.timestamp < 240 * 24 * 3600:
        revert with 0, 17
    if infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600):
        revert with 0, 'Victim is active', 0
    if infos[arg2].field_0 and sub_5af04ce5 > -1 / infos[arg2].field_0:
        revert with 0, 17
    if infos[arg2].field_2304 >= infos[arg2].field_0 * sub_5af04ce5:
        revert with 0, 'Victim has no rewards pending', 0
    if infos[arg2].field_0 * sub_5af04ce5 < infos[arg2].field_2304:
        revert with 0, 17
    if not (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304:
        revert with 0, 'Victim has no rewards pending', 0
    if not sub_5ed2b032[arg2]:
        sub_5ed2b032[arg2] = block.timestamp
        sub_90d55b5d[arg2] = arg1
        sub_e900d358[arg2].field_0 = 0
        idx = 0
        while sub_e900d358[arg2].field_0 > idx:
            sub_e900d358[arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if block.timestamp < 1800:
            revert with 0, 17
        if sub_5ed2b032[arg2] < block.timestamp - 1800:
            sub_5ed2b032[arg2] = block.timestamp
            sub_90d55b5d[arg2] = arg1
            sub_e900d358[arg2].field_0 = 0
            idx = 0
            while sub_e900d358[arg2].field_0 > idx:
                sub_e900d358[arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if infos[arg1].field_0 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if not infos[stor125[arg2]].field_0:
                revert with 0, 18
            if 1000 * infos[arg1].field_0 / infos[stor125[arg2]].field_0 < 0:
                revert with 0, 17
            if not 1000 * infos[arg1].field_0 / infos[stor125[arg2]].field_0:
                revert with 0, 18
            if sha3(block.timestamp, msg.sender, arg1) % 1000 * infos[arg1].field_0 / infos[stor125[arg2]].field_0 > -1:
                revert with 0, 17
            if sha3(block.timestamp, msg.sender, arg1) % 1000 * infos[arg1].field_0 / infos[stor125[arg2]].field_0 > 1000:
                sub_90d55b5d[arg2] = arg1
    sub_e900d358[arg2].field_0++
    sub_e900d358[arg2][sub_e900d358[arg2].field_0].field_0 = arg1
    sub_6239182b[arg1] = block.timestamp
    emit 0x7c1686d7: msg.sender, arg1, arg2
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if uint8(stor0.field_8):
        owner = msg.sender
        emit 0xfe8be007: 0, msg.sender
        stor113 = arg1
        stor114 = arg2
        stor115 = arg3
        stor116 = arg4
        stor117 = arg5
        stor118 = arg6
        stor119 = arg7
        sub_0cbd349f = 308 * 10^15
        sub_ce88888c = 386 * 10^15
        sub_7e3ed9e7 = 463 * 10^15
        sub_8053c861 = 5 * 10^15
        sub_d7c1eb84 = 15 * 10^15
        sub_8cc56a8c = 35 * 10^15
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit 0xfe8be007: 0, msg.sender
            stor113 = arg1
            stor114 = arg2
            stor115 = arg3
            stor116 = arg4
            stor117 = arg5
            stor118 = arg6
            stor119 = arg7
            sub_0cbd349f = 308 * 10^15
            sub_ce88888c = 386 * 10^15
            sub_7e3ed9e7 = 463 * 10^15
            sub_8053c861 = 5 * 10^15
            sub_d7c1eb84 = 15 * 10^15
            sub_8cc56a8c = 35 * 10^15
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit 0xfe8be007: 0, msg.sender
                stor113 = arg1
                stor114 = arg2
                stor115 = arg3
                stor116 = arg4
                stor117 = arg5
                stor118 = arg6
                stor119 = arg7
                sub_0cbd349f = 308 * 10^15
                sub_ce88888c = 386 * 10^15
                sub_7e3ed9e7 = 463 * 10^15
                sub_8053c861 = 5 * 10^15
                sub_d7c1eb84 = 15 * 10^15
                sub_8cc56a8c = 35 * 10^15
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit 0xfe8be007: 0, msg.sender
                    stor113 = arg1
                    stor114 = arg2
                    stor115 = arg3
                    stor116 = arg4
                    stor117 = arg5
                    stor118 = arg6
                    stor119 = arg7
                    sub_0cbd349f = 308 * 10^15
                    sub_ce88888c = 386 * 10^15
                    sub_7e3ed9e7 = 463 * 10^15
                    sub_8053c861 = 5 * 10^15
                    sub_d7c1eb84 = 15 * 10^15
                    sub_8cc56a8c = 35 * 10^15
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit 0xfe8be007: 0, msg.sender
                        stor113 = arg1
                        stor114 = arg2
                        stor115 = arg3
                        stor116 = arg4
                        stor117 = arg5
                        stor118 = arg6
                        stor119 = arg7
                        sub_0cbd349f = 308 * 10^15
                        sub_ce88888c = 386 * 10^15
                        sub_7e3ed9e7 = 463 * 10^15
                        sub_8053c861 = 5 * 10^15
                        sub_d7c1eb84 = 15 * 10^15
                        sub_8cc56a8c = 35 * 10^15
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit 0xfe8be007: 0, msg.sender
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stor113 = arg1
                        stor114 = arg2
                        stor115 = arg3
                        stor116 = arg4
                        stor117 = arg5
                        stor118 = arg6
                        stor119 = arg7
                        sub_0cbd349f = 308 * 10^15
                        sub_ce88888c = 386 * 10^15
                        sub_7e3ed9e7 = 463 * 10^15
                        sub_8053c861 = 5 * 10^15
                        sub_d7c1eb84 = 15 * 10^15
                        sub_8cc56a8c = 35 * 10^15
                        uint8(stor0.field_8) = 0
}

function getInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_d95e8d86[arg1]:
        if block.timestamp / 24 * 3600 < sub_d95e8d86[arg1]:
            revert with 0, 17
        if (block.timestamp / 24 * 3600) - sub_d95e8d86[arg1] > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1]) <= 50:
            if infos[arg1].field_0 and sub_5af04ce5 > -1 / infos[arg1].field_0:
                revert with 0, 17
            if infos[arg1].field_2304 >= infos[arg1].field_0 * sub_5af04ce5:
                return infos[arg1].field_0, 
                       infos[arg1].field_256,
                       infos[arg1].field_512,
                       infos[arg1].field_768,
                       infos[arg1].field_1024,
                       infos[arg1][7][block.timestamp / 24 * 3600].field_0,
                       infos[arg1].field_2048,
                       (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1]),
                       0
            if infos[arg1].field_0 * sub_5af04ce5 < infos[arg1].field_2304:
                revert with 0, 17
            return infos[arg1].field_0, 
                   infos[arg1].field_256,
                   infos[arg1].field_512,
                   infos[arg1].field_768,
                   infos[arg1].field_1024,
                   infos[arg1][7][block.timestamp / 24 * 3600].field_0,
                   infos[arg1].field_2048,
                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1]),
                   (infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304
    else:
        require ext_code.size(stor113)
        staticcall stor113.0xf586fd9d with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] / 24 * 3600 > block.timestamp / 24 * 3600:
            if infos[arg1].field_0 and sub_5af04ce5 > -1 / infos[arg1].field_0:
                revert with 0, 17
            if infos[arg1].field_2304 >= infos[arg1].field_0 * sub_5af04ce5:
                return infos[arg1].field_0, 
                       infos[arg1].field_256,
                       infos[arg1].field_512,
                       infos[arg1].field_768,
                       infos[arg1].field_1024,
                       infos[arg1][7][block.timestamp / 24 * 3600].field_0,
                       infos[arg1].field_2048,
                       0,
                       0
            if infos[arg1].field_0 * sub_5af04ce5 < infos[arg1].field_2304:
                revert with 0, 17
            return infos[arg1].field_0, 
                   infos[arg1].field_256,
                   infos[arg1].field_512,
                   infos[arg1].field_768,
                   infos[arg1].field_1024,
                   infos[arg1][7][block.timestamp / 24 * 3600].field_0,
                   infos[arg1].field_2048,
                   0,
                   (infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304
        if block.timestamp / 24 * 3600 < ext_call.return_data[0] / 24 * 3600:
            revert with 0, 17
        if (block.timestamp / 24 * 3600) - (ext_call.return_data[0] / 24 * 3600) > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600) <= 50:
            if infos[arg1].field_0 and sub_5af04ce5 > -1 / infos[arg1].field_0:
                revert with 0, 17
            if infos[arg1].field_2304 >= infos[arg1].field_0 * sub_5af04ce5:
                return infos[arg1].field_0, 
                       infos[arg1].field_256,
                       infos[arg1].field_512,
                       infos[arg1].field_768,
                       infos[arg1].field_1024,
                       infos[arg1][7][block.timestamp / 24 * 3600].field_0,
                       infos[arg1].field_2048,
                       (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                       0
            if infos[arg1].field_0 * sub_5af04ce5 < infos[arg1].field_2304:
                revert with 0, 17
            return infos[arg1].field_0, 
                   infos[arg1].field_256,
                   infos[arg1].field_512,
                   infos[arg1].field_768,
                   infos[arg1].field_1024,
                   infos[arg1][7][block.timestamp / 24 * 3600].field_0,
                   infos[arg1].field_2048,
                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                   (infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304
    if infos[arg1].field_0 and sub_5af04ce5 > -1 / infos[arg1].field_0:
        revert with 0, 17
    if infos[arg1].field_2304 >= infos[arg1].field_0 * sub_5af04ce5:
        return infos[arg1].field_0, 
               infos[arg1].field_256,
               infos[arg1].field_512,
               infos[arg1].field_768,
               infos[arg1].field_1024,
               infos[arg1][7][block.timestamp / 24 * 3600].field_0,
               infos[arg1].field_2048,
               50,
               0
    if infos[arg1].field_0 * sub_5af04ce5 < infos[arg1].field_2304:
        revert with 0, 17
    return infos[arg1].field_0, 
           infos[arg1].field_256,
           infos[arg1].field_512,
           infos[arg1].field_768,
           infos[arg1].field_1024,
           infos[arg1][7][block.timestamp / 24 * 3600].field_0,
           infos[arg1].field_2048,
           50,
           (infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor113)
    staticcall stor113.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Token not owned by caller'
    if sub_5ed2b032[arg1]:
        if 900 > !sub_5ed2b032[arg1]:
            revert with 0, 17
        if block.timestamp <= sub_5ed2b032[arg1] + 900:
            revert with 0, 'Robbery in progress!'
    if not infos[arg1].field_768:
        revert with 0, 'Feed at least once to start claiming'
    if sub_d95e8d86[arg1]:
        if block.timestamp / 24 * 3600 < sub_d95e8d86[arg1]:
            revert with 0, 17
        if (block.timestamp / 24 * 3600) - sub_d95e8d86[arg1] > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1]) <= 50:
            if infos[arg1].field_0 > !((5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1])):
                revert with 0, 17
            infos[arg1].field_0 = infos[arg1].field_0 + (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1])
            if sub_10d4f96d > !((5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1])):
                revert with 0, 17
            sub_10d4f96d = sub_10d4f96d + (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1])
            if sub_5af04ce5 and (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg1]) > -1 / sub_5af04ce5:
                revert with 0, 17
            if infos[arg1].field_2304 > !((5 * block.timestamp / 24 * 3600 * sub_5af04ce5) - (5 * sub_d95e8d86[arg1] * sub_5af04ce5)):
                revert with 0, 17
            infos[arg1].field_2304 = infos[arg1].field_2304 + (5 * block.timestamp / 24 * 3600 * sub_5af04ce5) - (5 * sub_d95e8d86[arg1] * sub_5af04ce5)
        else:
            if infos[arg1].field_0 > -51:
                revert with 0, 17
            infos[arg1].field_0 += 50
            if sub_10d4f96d > -51:
                revert with 0, 17
            sub_10d4f96d += 50
            if sub_5af04ce5 and 50 > -1 / sub_5af04ce5:
                revert with 0, 17
            if infos[arg1].field_2304 > !(50 * sub_5af04ce5):
                revert with 0, 17
            infos[arg1].field_2304 += 50 * sub_5af04ce5
    else:
        require ext_code.size(stor113)
        staticcall stor113.0xf586fd9d with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] / 24 * 3600 > block.timestamp / 24 * 3600:
            if infos[arg1].field_0 > -1:
                revert with 0, 17
            if sub_10d4f96d > -1:
                revert with 0, 17
            if sub_5af04ce5 and 0 > -1 / sub_5af04ce5:
                revert with 0, 17
            if infos[arg1].field_2304 > -1:
                revert with 0, 17
        else:
            if block.timestamp / 24 * 3600 < ext_call.return_data[0] / 24 * 3600:
                revert with 0, 17
            if (block.timestamp / 24 * 3600) - (ext_call.return_data[0] / 24 * 3600) > 0x3333333333333333333333333333333333333333333333333333333333333333:
                revert with 0, 17
            if (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600) <= 50:
                if infos[arg1].field_0 > !((5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)):
                    revert with 0, 17
                infos[arg1].field_0 = infos[arg1].field_0 + (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                if sub_10d4f96d > !((5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)):
                    revert with 0, 17
                sub_10d4f96d = sub_10d4f96d + (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                if sub_5af04ce5 and (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600) > -1 / sub_5af04ce5:
                    revert with 0, 17
                if infos[arg1].field_2304 > !((5 * block.timestamp / 24 * 3600 * sub_5af04ce5) - (5 * ext_call.return_data[0] / 24 * 3600 * sub_5af04ce5)):
                    revert with 0, 17
                infos[arg1].field_2304 = infos[arg1].field_2304 + (5 * block.timestamp / 24 * 3600 * sub_5af04ce5) - (5 * ext_call.return_data[0] / 24 * 3600 * sub_5af04ce5)
            else:
                if infos[arg1].field_0 > -51:
                    revert with 0, 17
                infos[arg1].field_0 += 50
                if sub_10d4f96d > -51:
                    revert with 0, 17
                sub_10d4f96d += 50
                if sub_5af04ce5 and 50 > -1 / sub_5af04ce5:
                    revert with 0, 17
                if infos[arg1].field_2304 > !(50 * sub_5af04ce5):
                    revert with 0, 17
                infos[arg1].field_2304 += 50 * sub_5af04ce5
    infos[arg1].field_1280 = block.timestamp
    sub_d95e8d86[arg1] = block.timestamp / 24 * 3600
    if infos[arg1].field_0 and sub_5af04ce5 > -1 / infos[arg1].field_0:
        revert with 0, 17
    if infos[arg1].field_2304 >= infos[arg1].field_0 * sub_5af04ce5:
        if infos[arg1].field_0 and sub_5af04ce5 > -1 / infos[arg1].field_0:
            revert with 0, 17
        infos[arg1].field_2304 = infos[arg1].field_0 * sub_5af04ce5
    else:
        if infos[arg1].field_0 * sub_5af04ce5 < infos[arg1].field_2304:
            revert with 0, 17
        if infos[arg1].field_0 and sub_5af04ce5 > -1 / infos[arg1].field_0:
            revert with 0, 17
        infos[arg1].field_2304 = infos[arg1].field_0 * sub_5af04ce5
        if (infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304:
            if infos[arg1].field_256 > !((infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304):
                revert with 0, 17
            infos[arg1].field_256 = infos[arg1].field_256 + (infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304
            require ext_code.size(stor114)
            call stor114.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (infos[arg1].field_0 * sub_5af04ce5) - infos[arg1].field_2304
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Claim(msg.sender, arg1);
}

function sub_74614c89(?) {
    require calldata.size - 4 >= 64
    if block.timestamp < 240 * 24 * 3600:
        revert with 0, 17
    if sub_d95e8d86[arg2]:
        if block.timestamp / 24 * 3600 < sub_d95e8d86[arg2]:
            revert with 0, 17
        if (block.timestamp / 24 * 3600) - sub_d95e8d86[arg2] > 0x3333333333333333333333333333333333333333333333333333333333333333:
            revert with 0, 17
        if infos[arg2].field_0 and sub_5af04ce5 > -1 / infos[arg2].field_0:
            revert with 0, 17
        if (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]) <= 50:
            if infos[arg2].field_2304 >= infos[arg2].field_0 * sub_5af04ce5:
                if block.timestamp < 12 * 3600:
                    revert with 0, 17
                if block.timestamp < 24 * 3600:
                    revert with 0, 17
                if sub_e900d358[arg2].field_0:
                    mem[544] = sub_e900d358[arg2].field_0
                    idx = 544
                    s = 0
                    while (32 * sub_e900d358[arg2].field_0) + 512 > idx:
                        mem[idx + 32] = sub_e900d358[arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if 900 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if 900 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                       (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                       0,
                                       infos[arg2].field_1024,
                                       infos[arg1].field_1024,
                                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                       416,
                                       sub_5ed2b032[arg2],
                                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                                       block.timestamp > sub_5ed2b032[arg2] + 900,
                                       10000,
                                       0,
                                       sub_e900d358[arg2].field_0,
                                       mem[544 len 32 * sub_e900d358[arg2].field_0]
                            require ext_code.size(stor113)
                            staticcall stor113.0x6352211e with:
                                    gas gas_remaining wei
                                   args sub_90d55b5d[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   bool(ext_call.return_data[12 len 20] == msg.sender),
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               sub_90d55b5d[arg2],
                               bool(ext_call.return_data[12 len 20] == msg.sender),
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               10000,
                               bool(ext_call.return_data[12 len 20] == msg.sender),
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp < sub_5ed2b032[arg2] + 1800,
                           sub_90d55b5d[arg2],
                           bool(ext_call.return_data[12 len 20] == msg.sender),
                           sub_e900d358[arg2].field_0,
                           mem[544 len 32 * sub_e900d358[arg2].field_0]
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2])
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = 0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2])
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = 0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = sub_90d55b5d[arg2]
                else:
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2])
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = 0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2])
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = 0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = sub_90d55b5d[arg2]
            else:
                if infos[arg2].field_0 * sub_5af04ce5 < infos[arg2].field_2304:
                    revert with 0, 17
                if block.timestamp < 12 * 3600:
                    revert with 0, 17
                if block.timestamp < 24 * 3600:
                    revert with 0, 17
                if sub_e900d358[arg2].field_0:
                    mem[544] = sub_e900d358[arg2].field_0
                    idx = 544
                    s = 0
                    while (32 * sub_e900d358[arg2].field_0) + 512 > idx:
                        mem[idx + 32] = sub_e900d358[arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if 900 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if 900 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                       (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                       infos[arg2].field_1024,
                                       infos[arg1].field_1024,
                                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                       416,
                                       sub_5ed2b032[arg2],
                                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                                       block.timestamp > sub_5ed2b032[arg2] + 900,
                                       10000,
                                       0,
                                       sub_e900d358[arg2].field_0,
                                       mem[544 len 32 * sub_e900d358[arg2].field_0]
                            require ext_code.size(stor113)
                            staticcall stor113.0x6352211e with:
                                    gas gas_remaining wei
                                   args sub_90d55b5d[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   bool(ext_call.return_data[12 len 20] == msg.sender),
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               sub_90d55b5d[arg2],
                               bool(ext_call.return_data[12 len 20] == msg.sender),
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               10000,
                               bool(ext_call.return_data[12 len 20] == msg.sender),
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp < sub_5ed2b032[arg2] + 1800,
                           sub_90d55b5d[arg2],
                           bool(ext_call.return_data[12 len 20] == msg.sender),
                           sub_e900d358[arg2].field_0,
                           mem[544 len 32 * sub_e900d358[arg2].field_0]
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2])
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2])
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = sub_90d55b5d[arg2]
                else:
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2])
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2]),
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * sub_d95e8d86[arg2])
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = sub_90d55b5d[arg2]
        else:
            if infos[arg2].field_2304 >= infos[arg2].field_0 * sub_5af04ce5:
                if block.timestamp < 12 * 3600:
                    revert with 0, 17
                if block.timestamp < 24 * 3600:
                    revert with 0, 17
                if sub_e900d358[arg2].field_0:
                    mem[544] = sub_e900d358[arg2].field_0
                    idx = 544
                    s = 0
                    while (32 * sub_e900d358[arg2].field_0) + 512 > idx:
                        mem[idx + 32] = sub_e900d358[arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if 900 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if 900 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                       50,
                                       0,
                                       infos[arg2].field_1024,
                                       infos[arg1].field_1024,
                                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                       416,
                                       sub_5ed2b032[arg2],
                                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                                       block.timestamp > sub_5ed2b032[arg2] + 900,
                                       10000,
                                       0,
                                       sub_e900d358[arg2].field_0,
                                       mem[544 len 32 * sub_e900d358[arg2].field_0]
                            require ext_code.size(stor113)
                            staticcall stor113.0x6352211e with:
                                    gas gas_remaining wei
                                   args sub_90d55b5d[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   bool(ext_call.return_data[12 len 20] == msg.sender),
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               sub_90d55b5d[arg2],
                               bool(ext_call.return_data[12 len 20] == msg.sender),
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               10000,
                               bool(ext_call.return_data[12 len 20] == msg.sender),
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           50,
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp < sub_5ed2b032[arg2] + 1800,
                           sub_90d55b5d[arg2],
                           bool(ext_call.return_data[12 len 20] == msg.sender),
                           sub_e900d358[arg2].field_0,
                           mem[544 len 32 * sub_e900d358[arg2].field_0]
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = 50
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = 0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = 50
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = 0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = sub_90d55b5d[arg2]
                else:
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = 50
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = 0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = 50
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = 0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = sub_90d55b5d[arg2]
            else:
                if infos[arg2].field_0 * sub_5af04ce5 < infos[arg2].field_2304:
                    revert with 0, 17
                if block.timestamp < 12 * 3600:
                    revert with 0, 17
                if block.timestamp < 24 * 3600:
                    revert with 0, 17
                if sub_e900d358[arg2].field_0:
                    mem[544] = sub_e900d358[arg2].field_0
                    idx = 544
                    s = 0
                    while (32 * sub_e900d358[arg2].field_0) + 512 > idx:
                        mem[idx + 32] = sub_e900d358[arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if 900 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if 900 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                       50,
                                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                       infos[arg2].field_1024,
                                       infos[arg1].field_1024,
                                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                       416,
                                       sub_5ed2b032[arg2],
                                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                                       block.timestamp > sub_5ed2b032[arg2] + 900,
                                       10000,
                                       0,
                                       sub_e900d358[arg2].field_0,
                                       mem[544 len 32 * sub_e900d358[arg2].field_0]
                            require ext_code.size(stor113)
                            staticcall stor113.0x6352211e with:
                                    gas gas_remaining wei
                                   args sub_90d55b5d[arg2]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   bool(ext_call.return_data[12 len 20] == msg.sender),
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               sub_90d55b5d[arg2],
                               bool(ext_call.return_data[12 len 20] == msg.sender),
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               10000,
                               bool(ext_call.return_data[12 len 20] == msg.sender),
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[544 len 32 * sub_e900d358[arg2].field_0]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           50,
                           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp < sub_5ed2b032[arg2] + 1800,
                           sub_90d55b5d[arg2],
                           bool(ext_call.return_data[12 len 20] == msg.sender),
                           sub_e900d358[arg2].field_0,
                           mem[544 len 32 * sub_e900d358[arg2].field_0]
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = 50
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = 50
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = sub_90d55b5d[arg2]
                else:
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = 50
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   50,
                                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544] = 32
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 608] = 50
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 672] = infos[arg2].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 704] = infos[arg1].field_1024
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 800] = 416
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 992] = sub_e900d358[arg2].field_0
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 832] = sub_5ed2b032[arg2]
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 928] = sub_90d55b5d[arg2]
        mem[(32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
        return memory
          from (32 * sub_e900d358[arg2].field_0) + ceil32(return_data.size) + 544
           len (96 * sub_e900d358[arg2].field_0) + 480
    mem[516] = arg2
    require ext_code.size(stor113)
    staticcall stor113.0xf586fd9d with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] / 24 * 3600 > block.timestamp / 24 * 3600:
        if infos[arg2].field_0 and sub_5af04ce5 > -1 / infos[arg2].field_0:
            revert with 0, 17
        if infos[arg2].field_2304 >= infos[arg2].field_0 * sub_5af04ce5:
            if block.timestamp < 12 * 3600:
                revert with 0, 17
            if block.timestamp < 24 * 3600:
                revert with 0, 17
            if not sub_e900d358[arg2].field_0:
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   0,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   0,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
                else:
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   0,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   0,
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return memory
                  from (2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544
                   len (96 * sub_e900d358[arg2].field_0) + 480
            mem[ceil32(return_data.size) + 544] = sub_e900d358[arg2].field_0
            idx = ceil32(return_data.size) + 544
            s = 0
            while ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 512 > idx:
                mem[idx + 32] = sub_e900d358[arg2][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               0,
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               10000,
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           0,
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           10000,
                           bool(ext_call.return_data[12 len 20] == msg.sender),
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           0,
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           sub_90d55b5d[arg2],
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       0,
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       sub_90d55b5d[arg2],
                       bool(ext_call.return_data[12 len 20] == msg.sender),
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            if 1800 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           0,
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp < sub_5ed2b032[arg2] + 1800,
                           10000,
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       0,
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp < sub_5ed2b032[arg2] + 1800,
                       10000,
                       bool(ext_call.return_data[12 len 20] == msg.sender),
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       0,
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp < sub_5ed2b032[arg2] + 1800,
                       sub_90d55b5d[arg2],
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   0,
                   0,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   sub_90d55b5d[arg2],
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if infos[arg2].field_0 * sub_5af04ce5 < infos[arg2].field_2304:
            revert with 0, 17
        if block.timestamp < 12 * 3600:
            revert with 0, 17
        if block.timestamp < 24 * 3600:
            revert with 0, 17
        if not sub_e900d358[arg2].field_0:
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               0,
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               10000,
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                else:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               0,
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            else:
                if 1800 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               0,
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               10000,
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                else:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               0,
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return memory
              from (2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544
               len (96 * sub_e900d358[arg2].field_0) + 480
        mem[ceil32(return_data.size) + 544] = sub_e900d358[arg2].field_0
        idx = ceil32(return_data.size) + 544
        s = 0
        while ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 512 > idx:
            mem[idx + 32] = sub_e900d358[arg2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           0,
                           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           10000,
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       0,
                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       10000,
                       bool(ext_call.return_data[12 len 20] == msg.sender),
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       0,
                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       sub_90d55b5d[arg2],
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   0,
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp > sub_5ed2b032[arg2] + 900,
                   sub_90d55b5d[arg2],
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if 1800 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       0,
                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp < sub_5ed2b032[arg2] + 1800,
                       10000,
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   0,
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   10000,
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   0,
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   sub_90d55b5d[arg2],
                   0,
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        require ext_code.size(stor113)
        staticcall stor113.0x6352211e with:
                gas gas_remaining wei
               args sub_90d55b5d[arg2]
        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
               0,
               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
               infos[arg2].field_1024,
               infos[arg1].field_1024,
               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
               416,
               sub_5ed2b032[arg2],
               block.timestamp <= sub_5ed2b032[arg2] + 900,
               block.timestamp < sub_5ed2b032[arg2] + 1800,
               sub_90d55b5d[arg2],
               bool(ext_call.return_data[12 len 20] == msg.sender),
               sub_e900d358[arg2].field_0,
               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
    if block.timestamp / 24 * 3600 < ext_call.return_data[0] / 24 * 3600:
        revert with 0, 17
    if (block.timestamp / 24 * 3600) - (ext_call.return_data[0] / 24 * 3600) > 0x3333333333333333333333333333333333333333333333333333333333333333:
        revert with 0, 17
    if infos[arg2].field_0 and sub_5af04ce5 > -1 / infos[arg2].field_0:
        revert with 0, 17
    if (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600) <= 50:
        if infos[arg2].field_2304 >= infos[arg2].field_0 * sub_5af04ce5:
            if block.timestamp < 12 * 3600:
                revert with 0, 17
            if block.timestamp < 24 * 3600:
                revert with 0, 17
            if not sub_e900d358[arg2].field_0:
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if 900 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp > sub_5ed2b032[arg2] + 900,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
                else:
                    if 1800 > !sub_5ed2b032[arg2]:
                        revert with 0, 17
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   10000,
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                    else:
                        if block.timestamp <= sub_5ed2b032[arg2] + 900:
                            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                                   0,
                                   infos[arg2].field_1024,
                                   infos[arg1].field_1024,
                                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                                   416,
                                   sub_5ed2b032[arg2],
                                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                                   sub_90d55b5d[arg2],
                                   0,
                                   sub_e900d358[arg2].field_0,
                                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                        require ext_code.size(stor113)
                        staticcall stor113.0x6352211e with:
                                gas gas_remaining wei
                               args sub_90d55b5d[arg2]
                        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return memory
                  from (2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544
                   len (96 * sub_e900d358[arg2].field_0) + 480
            mem[ceil32(return_data.size) + 544] = sub_e900d358[arg2].field_0
            idx = ceil32(return_data.size) + 544
            s = 0
            while ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 512 > idx:
                mem[idx + 32] = sub_e900d358[arg2][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               10000,
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           10000,
                           bool(ext_call.return_data[12 len 20] == msg.sender),
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           sub_90d55b5d[arg2],
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       sub_90d55b5d[arg2],
                       bool(ext_call.return_data[12 len 20] == msg.sender),
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            if 1800 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp < sub_5ed2b032[arg2] + 1800,
                           10000,
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp < sub_5ed2b032[arg2] + 1800,
                       10000,
                       bool(ext_call.return_data[12 len 20] == msg.sender),
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp < sub_5ed2b032[arg2] + 1800,
                       sub_90d55b5d[arg2],
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                   0,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   sub_90d55b5d[arg2],
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if infos[arg2].field_0 * sub_5af04ce5 < infos[arg2].field_2304:
            revert with 0, 17
        if block.timestamp < 12 * 3600:
            revert with 0, 17
        if block.timestamp < 24 * 3600:
            revert with 0, 17
        if not sub_e900d358[arg2].field_0:
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               10000,
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                else:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            else:
                if 1800 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               10000,
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                else:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return memory
              from (2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544
               len (96 * sub_e900d358[arg2].field_0) + 480
        mem[ceil32(return_data.size) + 544] = sub_e900d358[arg2].field_0
        idx = ceil32(return_data.size) + 544
        s = 0
        while ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 512 > idx:
            mem[idx + 32] = sub_e900d358[arg2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           10000,
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       10000,
                       bool(ext_call.return_data[12 len 20] == msg.sender),
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       sub_90d55b5d[arg2],
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp > sub_5ed2b032[arg2] + 900,
                   sub_90d55b5d[arg2],
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if 1800 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp < sub_5ed2b032[arg2] + 1800,
                       10000,
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   10000,
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   sub_90d55b5d[arg2],
                   0,
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        require ext_code.size(stor113)
        staticcall stor113.0x6352211e with:
                gas gas_remaining wei
               args sub_90d55b5d[arg2]
        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
               (5 * block.timestamp / 24 * 3600) - (5 * ext_call.return_data[0] / 24 * 3600),
               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
               infos[arg2].field_1024,
               infos[arg1].field_1024,
               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
               416,
               sub_5ed2b032[arg2],
               block.timestamp <= sub_5ed2b032[arg2] + 900,
               block.timestamp < sub_5ed2b032[arg2] + 1800,
               sub_90d55b5d[arg2],
               bool(ext_call.return_data[12 len 20] == msg.sender),
               sub_e900d358[arg2].field_0,
               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
    if infos[arg2].field_2304 >= infos[arg2].field_0 * sub_5af04ce5:
        if block.timestamp < 12 * 3600:
            revert with 0, 17
        if block.timestamp < 24 * 3600:
            revert with 0, 17
        if not sub_e900d358[arg2].field_0:
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if 900 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               10000,
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                else:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp > sub_5ed2b032[arg2] + 900,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            else:
                if 1800 > !sub_5ed2b032[arg2]:
                    revert with 0, 17
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               10000,
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                else:
                    if block.timestamp <= sub_5ed2b032[arg2] + 900:
                        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                               50,
                               0,
                               infos[arg2].field_1024,
                               infos[arg1].field_1024,
                               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                               416,
                               sub_5ed2b032[arg2],
                               block.timestamp <= sub_5ed2b032[arg2] + 900,
                               block.timestamp < sub_5ed2b032[arg2] + 1800,
                               sub_90d55b5d[arg2],
                               0,
                               sub_e900d358[arg2].field_0,
                               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                    require ext_code.size(stor113)
                    staticcall stor113.0x6352211e with:
                            gas gas_remaining wei
                           args sub_90d55b5d[arg2]
                    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return memory
              from (2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544
               len (96 * sub_e900d358[arg2].field_0) + 480
        mem[ceil32(return_data.size) + 544] = sub_e900d358[arg2].field_0
        idx = ceil32(return_data.size) + 544
        s = 0
        while ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 512 > idx:
            mem[idx + 32] = sub_e900d358[arg2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           50,
                           0,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           10000,
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       50,
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       10000,
                       bool(ext_call.return_data[12 len 20] == msg.sender),
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       50,
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       sub_90d55b5d[arg2],
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   50,
                   0,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp > sub_5ed2b032[arg2] + 900,
                   sub_90d55b5d[arg2],
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if 1800 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       50,
                       0,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp < sub_5ed2b032[arg2] + 1800,
                       10000,
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   50,
                   0,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   10000,
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   50,
                   0,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   sub_90d55b5d[arg2],
                   0,
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        require ext_code.size(stor113)
        staticcall stor113.0x6352211e with:
                gas gas_remaining wei
               args sub_90d55b5d[arg2]
        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
               50,
               0,
               infos[arg2].field_1024,
               infos[arg1].field_1024,
               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
               416,
               sub_5ed2b032[arg2],
               block.timestamp <= sub_5ed2b032[arg2] + 900,
               block.timestamp < sub_5ed2b032[arg2] + 1800,
               sub_90d55b5d[arg2],
               bool(ext_call.return_data[12 len 20] == msg.sender),
               sub_e900d358[arg2].field_0,
               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
    if infos[arg2].field_0 * sub_5af04ce5 < infos[arg2].field_2304:
        revert with 0, 17
    if block.timestamp < 12 * 3600:
        revert with 0, 17
    if block.timestamp < 24 * 3600:
        revert with 0, 17
    if not sub_e900d358[arg2].field_0:
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if 900 > !sub_5ed2b032[arg2]:
            revert with 0, 17
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           50,
                           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           10000,
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
            else:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           50,
                           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp > sub_5ed2b032[arg2] + 900,
                           sub_90d55b5d[arg2],
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
        else:
            if 1800 > !sub_5ed2b032[arg2]:
                revert with 0, 17
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           50,
                           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp < sub_5ed2b032[arg2] + 1800,
                           10000,
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
            else:
                if block.timestamp <= sub_5ed2b032[arg2] + 900:
                    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                           50,
                           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                           infos[arg2].field_1024,
                           infos[arg1].field_1024,
                           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                           416,
                           sub_5ed2b032[arg2],
                           block.timestamp <= sub_5ed2b032[arg2] + 900,
                           block.timestamp < sub_5ed2b032[arg2] + 1800,
                           sub_90d55b5d[arg2],
                           0,
                           sub_e900d358[arg2].field_0,
                           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 548] = sub_90d55b5d[arg2]
                require ext_code.size(stor113)
                staticcall stor113.0x6352211e with:
                        gas gas_remaining wei
                       args sub_90d55b5d[arg2]
                mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
                mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
        return memory
          from (2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544
           len (96 * sub_e900d358[arg2].field_0) + 480
    mem[ceil32(return_data.size) + 544] = sub_e900d358[arg2].field_0
    idx = ceil32(return_data.size) + 544
    s = 0
    while ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 512 > idx:
        mem[idx + 32] = sub_e900d358[arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 900 > !sub_5ed2b032[arg2]:
        revert with 0, 17
    if 900 > !sub_5ed2b032[arg2]:
        revert with 0, 17
    if block.timestamp <= sub_5ed2b032[arg2] + 900:
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            if block.timestamp <= sub_5ed2b032[arg2] + 900:
                return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                       50,
                       (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                       infos[arg2].field_1024,
                       infos[arg1].field_1024,
                       infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                       sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                       416,
                       sub_5ed2b032[arg2],
                       block.timestamp <= sub_5ed2b032[arg2] + 900,
                       block.timestamp > sub_5ed2b032[arg2] + 900,
                       10000,
                       0,
                       sub_e900d358[arg2].field_0,
                       mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            require ext_code.size(stor113)
            staticcall stor113.0x6352211e with:
                    gas gas_remaining wei
                   args sub_90d55b5d[arg2]
            mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
            mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   50,
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp > sub_5ed2b032[arg2] + 900,
                   10000,
                   bool(ext_call.return_data[12 len 20] == msg.sender),
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   50,
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp > sub_5ed2b032[arg2] + 900,
                   sub_90d55b5d[arg2],
                   0,
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        require ext_code.size(stor113)
        staticcall stor113.0x6352211e with:
                gas gas_remaining wei
               args sub_90d55b5d[arg2]
        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp > sub_5ed2b032[arg2] + 900
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
               50,
               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
               infos[arg2].field_1024,
               infos[arg1].field_1024,
               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
               416,
               sub_5ed2b032[arg2],
               block.timestamp <= sub_5ed2b032[arg2] + 900,
               block.timestamp > sub_5ed2b032[arg2] + 900,
               sub_90d55b5d[arg2],
               bool(ext_call.return_data[12 len 20] == msg.sender),
               sub_e900d358[arg2].field_0,
               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
    if 1800 > !sub_5ed2b032[arg2]:
        revert with 0, 17
    if block.timestamp <= sub_5ed2b032[arg2] + 900:
        if block.timestamp <= sub_5ed2b032[arg2] + 900:
            return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
                   50,
                   (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
                   infos[arg2].field_1024,
                   infos[arg1].field_1024,
                   infos[arg1].field_1024 < block.timestamp - (12 * 3600),
                   sub_6239182b[arg1] > block.timestamp - (24 * 3600),
                   416,
                   sub_5ed2b032[arg2],
                   block.timestamp <= sub_5ed2b032[arg2] + 900,
                   block.timestamp < sub_5ed2b032[arg2] + 1800,
                   10000,
                   0,
                   sub_e900d358[arg2].field_0,
                   mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        require ext_code.size(stor113)
        staticcall stor113.0x6352211e with:
                gas gas_remaining wei
               args sub_90d55b5d[arg2]
        mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = 10000
        mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
               50,
               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
               infos[arg2].field_1024,
               infos[arg1].field_1024,
               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
               416,
               sub_5ed2b032[arg2],
               block.timestamp <= sub_5ed2b032[arg2] + 900,
               block.timestamp < sub_5ed2b032[arg2] + 1800,
               10000,
               bool(ext_call.return_data[12 len 20] == msg.sender),
               sub_e900d358[arg2].field_0,
               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
    if block.timestamp <= sub_5ed2b032[arg2] + 900:
        return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
               50,
               (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
               infos[arg2].field_1024,
               infos[arg1].field_1024,
               infos[arg1].field_1024 < block.timestamp - (12 * 3600),
               sub_6239182b[arg1] > block.timestamp - (24 * 3600),
               416,
               sub_5ed2b032[arg2],
               block.timestamp <= sub_5ed2b032[arg2] + 900,
               block.timestamp < sub_5ed2b032[arg2] + 1800,
               sub_90d55b5d[arg2],
               0,
               sub_e900d358[arg2].field_0,
               mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
    require ext_code.size(stor113)
    staticcall stor113.0x6352211e with:
            gas gas_remaining wei
           args sub_90d55b5d[arg2]
    mem[ceil32(return_data.size) + (32 * sub_e900d358[arg2].field_0) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 544] = 32
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 576] = infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600)
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 608] = 50
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 640] = (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 672] = infos[arg2].field_1024
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 704] = infos[arg1].field_1024
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 736] = infos[arg1].field_1024 < block.timestamp - (12 * 3600)
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 768] = sub_6239182b[arg1] > block.timestamp - (24 * 3600)
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 800] = 416
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 992] = sub_e900d358[arg2].field_0
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 1024 len 32 * sub_e900d358[arg2].field_0] = mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 832] = sub_5ed2b032[arg2]
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 864] = block.timestamp <= sub_5ed2b032[arg2] + 900
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 896] = block.timestamp < sub_5ed2b032[arg2] + 1800
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 928] = sub_90d55b5d[arg2]
    mem[(2 * ceil32(return_data.size)) + (32 * sub_e900d358[arg2].field_0) + 960] = bool(ext_call.return_data[12 len 20] == msg.sender)
    return 32, infos[arg2].field_1024 > block.timestamp - (240 * 24 * 3600), 
           50,
           (infos[arg2].field_0 * sub_5af04ce5) - infos[arg2].field_2304,
           infos[arg2].field_1024,
           infos[arg1].field_1024,
           infos[arg1].field_1024 < block.timestamp - (12 * 3600),
           sub_6239182b[arg1] > block.timestamp - (24 * 3600),
           416,
           sub_5ed2b032[arg2],
           block.timestamp <= sub_5ed2b032[arg2] + 900,
           block.timestamp < sub_5ed2b032[arg2] + 1800,
           sub_90d55b5d[arg2],
           bool(ext_call.return_data[12 len 20] == msg.sender),
           sub_e900d358[arg2].field_0,
           mem[ceil32(return_data.size) + 544 len 32 * sub_e900d358[arg2].field_0]
}



}
