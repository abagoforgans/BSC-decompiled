contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint8 stor2;
array of struct whitelisted;
uint8 stor4;
mapping of uint8 stor5;
uint256 dropAmount;
address sub_c7945de0Address;
address sub_f85b2cbfAddress;
address nftAddress;
mapping of uint256 sub_84b47cd6;
mapping of uint256 gold;
mapping of uint256 sub_7ebe9d27;
uint256 stor13;
array of uint256 sub_888c8f74;
array of uint256 sub_a3b7086a;
array of uint256 sub_f6d81298;
uint256 sub_cde259b6;
uint256 sub_234324e2;
uint256 sub_80d6c148;
address sub_9cd726c4Address;

function dropAmount() payable {
    return dropAmount
}

function hasWhitelisting() payable {
    return bool(stor4)
}

function gold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return gold[arg1]
}

function sub_234324e2(?) payable {
    return sub_234324e2
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function nft() payable {
    return nftAddress
}

function sub_7ebe9d27(?) payable {
    require calldata.size - 4 >= 32
    return sub_7ebe9d27[arg1]
}

function sub_80d6c148(?) payable {
    return sub_80d6c148
}

function sub_84b47cd6(?) payable {
    require calldata.size - 4 >= 32
    return sub_84b47cd6[arg1]
}

function sub_888c8f74(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_888c8f74.length
    return sub_888c8f74[arg1]
}

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_9cd726c4(?) payable {
    return sub_9cd726c4Address
}

function sub_a3b7086a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_a3b7086a.length
    return sub_a3b7086a[arg1]
}

function whitelistedAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < whitelisted.length
    return whitelisted[arg1].field_0
}

function sub_c7945de0(?) payable {
    return sub_c7945de0Address
}

function sub_cde259b6(?) payable {
    return sub_cde259b6
}

function sub_f6d81298(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f6d81298.length
    return sub_f6d81298[arg1]
}

function sub_f85b2cbf(?) payable {
    return sub_f85b2cbfAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateDropAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dropAmount = arg1
}

function updateDropToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c7945de0Address = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function remove(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 >= whitelisted.length:
        revert with 0, 50
    require whitelisted[arg2].field_0 == arg1
    stor2[address(arg1)] = 0
    if arg2 >= whitelisted.length:
        revert with 0, 50
    whitelisted[arg2].field_0 = 0
    emit RemovedFromWhitelist(arg1);
}

function getWhitelistedAddresses() payable {
    mem[64] = (32 * whitelisted.length) + 128
    mem[96] = whitelisted.length
    if not whitelisted.length:
        mem[(32 * whitelisted.length) + 128] = 32
        mem[(32 * whitelisted.length) + 160] = whitelisted.length
        idx = 0
        s = (32 * whitelisted.length) + 192
        t = 128
        while idx < whitelisted.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * whitelisted.length) + 128
           len (96 * whitelisted.length) + 64
    mem[128] = address(whitelisted.field_0)
    idx = 128
    s = 0
    while (32 * whitelisted.length) + 96 > idx:
        mem[idx + 32] = whitelisted[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * whitelisted.length) + 128] = 32
    mem[(32 * whitelisted.length) + 160] = whitelisted.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < whitelisted.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * whitelisted.length) + -mem[64] + 192
}

function add(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if floor32(arg1.length) + 97 < 96 or floor32(arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        require bool(stor2[mem[(32 * idx) + 140 len 20]]) != 1
        if idx >= arg1.length:
            revert with 0, 50
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= arg1.length:
            revert with 0, 50
        whitelisted.length++
        mem[0] = 3
        whitelisted[whitelisted.length].field_0 = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 128
    t = floor32(arg1.length) + 97
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit AddedToWhitelist(sha3(mem[floor32(arg1.length) + 97 len 32 * arg1.length]));
}

function sub_c3c39f18(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid golds'
    sub_234324e2 = 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        sub_a3b7086a.length++
        sub_a3b7086a[sub_a3b7086a.length] = mem[(32 * idx) + 128]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 11
        gold[mem[(32 * idx) + 128]] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if sub_234324e2 > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 0, 17
        sub_234324e2 += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_09bde2e9(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid silvers'
    sub_cde259b6 = 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        sub_888c8f74.length++
        sub_888c8f74[sub_888c8f74.length] = mem[(32 * idx) + 128]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 10
        sub_84b47cd6[mem[(32 * idx) + 128]] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if sub_cde259b6 > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 0, 17
        sub_cde259b6 += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_db9ca2b7(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Invalid diamonds'
    sub_80d6c148 = 0
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        sub_f6d81298.length++
        sub_f6d81298[sub_f6d81298.length] = mem[(32 * idx) + 128]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 12
        sub_7ebe9d27[mem[(32 * idx) + 128]] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if sub_80d6c148 > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 0, 17
        sub_80d6c148 += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function drop() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor4:
        if ext_code.size(msg.sender):
            revert with 0, 'No contracts permitted'
        mem[100] = msg.sender
        require ext_code.size(sub_c7945de0Address)
        staticcall sub_c7945de0Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < dropAmount:
            revert with 0, 'not owning the enough token'
        if sub_cde259b6 > !sub_234324e2:
            revert with 0, 17
        if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
            revert with 0, 17
        if sub_cde259b6 + sub_234324e2 + sub_80d6c148 <= 0:
            revert with 0, 'no items left to sell'
        if stor5[msg.sender]:
            revert with 0, 'You have already purchased once!'
        mem[0] = msg.sender
        mem[32] = 5
        stor5[msg.sender] = 1
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = sub_9cd726c4Address
        mem[ceil32(return_data.size) + 196] = dropAmount
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[64] = ceil32(return_data.size) + 292
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_c7945de0Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, sub_9cd726c4Address, dropAmount, 0
        mem[ceil32(return_data.size) + 392] = 0
        call sub_c7945de0Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, sub_9cd726c4Address, dropAmount, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, sub_9cd726c4Address, dropAmount, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                idx = 0
                while idx < stor13:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = block.difficulty
                    _1660 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1662 = sha3(mem[_1660 + 32 len mem[_1660]])
                    if not msg.sender:
                        revert with 0, 'no request'
                    if sub_cde259b6 > !sub_234324e2:
                        revert with 0, 17
                    if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
                        revert with 0, 17
                    if not sub_cde259b6 + sub_234324e2 + sub_80d6c148:
                        revert with 0, 18
                    if sha3(mem[_1660 + 32 len mem[_1660]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6:
                        if sub_cde259b6 < 1:
                            revert with 0, 17
                        sub_cde259b6--
                        s = 0
                        while s < sub_888c8f74.length:
                            if s > !(_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                revert with 0, 17
                            if not sub_888c8f74.length:
                                revert with 0, 18
                            if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[0] = sub_888c8f74[s + (_1662 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[32] = 10
                            if sub_84b47cd6[stor14[s + (_1662 % stor17 + stor18 + stor19) % stor14.length]] <= 0:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[mem[64] + 4] = sub_f85b2cbfAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = sub_888c8f74[s + (_1662 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(nftAddress)
                            call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args sub_f85b2cbfAddress, msg.sender, sub_888c8f74[s + (_1662 % stor17 + stor18 + stor19) % sub_888c8f74.length], 1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            if sub_84b47cd6[stor14[s + (_1662 % stor17 + stor18 + stor19) % stor14.length]] < 1:
                                revert with 0, 17
                            if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[32] = 10
                            sub_84b47cd6[stor14[s + (_1662 % stor17 + stor18 + stor19) % stor14.length]]--
                            mem[0] = 14
                            mem[mem[64]] = 1
                            emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_888c8f74[s + (_1662 % stor17 + stor18 + stor19) % sub_888c8f74.length]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if sub_cde259b6 > !sub_234324e2:
                            revert with 0, 17
                        if sha3(mem[_1660 + 32 len mem[_1660]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6 + sub_234324e2:
                            if sub_234324e2 < 1:
                                revert with 0, 17
                            sub_234324e2--
                            s = 0
                            while s < sub_a3b7086a.length:
                                if s > !(_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                    revert with 0, 17
                                if not sub_a3b7086a.length:
                                    revert with 0, 18
                                if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[0] = sub_a3b7086a[s + (_1662 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[32] = 11
                                if gold[stor15[s + (_1662 % stor17 + stor18 + stor19) % stor15.length]] <= 0:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = sub_f85b2cbfAddress
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = sub_a3b7086a[s + (_1662 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(nftAddress)
                                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args sub_f85b2cbfAddress, msg.sender, sub_a3b7086a[s + (_1662 % stor17 + stor18 + stor19) % sub_a3b7086a.length], 1, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                if gold[stor15[s + (_1662 % stor17 + stor18 + stor19) % stor15.length]] < 1:
                                    revert with 0, 17
                                if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[32] = 11
                                gold[stor15[s + (_1662 % stor17 + stor18 + stor19) % stor15.length]]--
                                mem[0] = 15
                                mem[mem[64]] = 1
                                emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_a3b7086a[s + (_1662 % stor17 + stor18 + stor19) % sub_a3b7086a.length]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if sub_80d6c148:
                                if sub_80d6c148 < 1:
                                    revert with 0, 17
                                sub_80d6c148--
                                s = 0
                                while s < sub_f6d81298.length:
                                    if s > !(_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                        revert with 0, 17
                                    if not sub_f6d81298.length:
                                        revert with 0, 18
                                    if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[0] = sub_f6d81298[s + (_1662 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[32] = 12
                                    if sub_7ebe9d27[stor16[s + (_1662 % stor17 + stor18 + stor19) % stor16.length]] <= 0:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = sub_f85b2cbfAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = sub_f6d81298[s + (_1662 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(nftAddress)
                                    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args sub_f85b2cbfAddress, msg.sender, sub_f6d81298[s + (_1662 % stor17 + stor18 + stor19) % sub_f6d81298.length], 1, 160, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    if sub_7ebe9d27[stor16[s + (_1662 % stor17 + stor18 + stor19) % stor16.length]] < 1:
                                        revert with 0, 17
                                    if s + (_1662 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[32] = 12
                                    sub_7ebe9d27[stor16[s + (_1662 % stor17 + stor18 + stor19) % stor16.length]]--
                                    mem[0] = 16
                                    mem[mem[64]] = 1
                                    emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_f6d81298[s + (_1662 % stor17 + stor18 + stor19) % sub_f6d81298.length]);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < stor13:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = block.difficulty
                    _1663 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1665 = sha3(mem[_1663 + 32 len mem[_1663]])
                    if not msg.sender:
                        revert with 0, 'no request'
                    if sub_cde259b6 > !sub_234324e2:
                        revert with 0, 17
                    if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
                        revert with 0, 17
                    if not sub_cde259b6 + sub_234324e2 + sub_80d6c148:
                        revert with 0, 18
                    if sha3(mem[_1663 + 32 len mem[_1663]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6:
                        if sub_cde259b6 < 1:
                            revert with 0, 17
                        sub_cde259b6--
                        s = 0
                        while s < sub_888c8f74.length:
                            if s > !(_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                revert with 0, 17
                            if not sub_888c8f74.length:
                                revert with 0, 18
                            if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[0] = sub_888c8f74[s + (_1665 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[32] = 10
                            if sub_84b47cd6[stor14[s + (_1665 % stor17 + stor18 + stor19) % stor14.length]] <= 0:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[mem[64] + 4] = sub_f85b2cbfAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = sub_888c8f74[s + (_1665 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(nftAddress)
                            call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args sub_f85b2cbfAddress, msg.sender, sub_888c8f74[s + (_1665 % stor17 + stor18 + stor19) % sub_888c8f74.length], 1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            if sub_84b47cd6[stor14[s + (_1665 % stor17 + stor18 + stor19) % stor14.length]] < 1:
                                revert with 0, 17
                            if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[32] = 10
                            sub_84b47cd6[stor14[s + (_1665 % stor17 + stor18 + stor19) % stor14.length]]--
                            mem[0] = 14
                            mem[mem[64]] = 1
                            emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_888c8f74[s + (_1665 % stor17 + stor18 + stor19) % sub_888c8f74.length]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if sub_cde259b6 > !sub_234324e2:
                            revert with 0, 17
                        if sha3(mem[_1663 + 32 len mem[_1663]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6 + sub_234324e2:
                            if sub_234324e2 < 1:
                                revert with 0, 17
                            sub_234324e2--
                            s = 0
                            while s < sub_a3b7086a.length:
                                if s > !(_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                    revert with 0, 17
                                if not sub_a3b7086a.length:
                                    revert with 0, 18
                                if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[0] = sub_a3b7086a[s + (_1665 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[32] = 11
                                if gold[stor15[s + (_1665 % stor17 + stor18 + stor19) % stor15.length]] <= 0:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = sub_f85b2cbfAddress
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = sub_a3b7086a[s + (_1665 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(nftAddress)
                                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args sub_f85b2cbfAddress, msg.sender, sub_a3b7086a[s + (_1665 % stor17 + stor18 + stor19) % sub_a3b7086a.length], 1, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                if gold[stor15[s + (_1665 % stor17 + stor18 + stor19) % stor15.length]] < 1:
                                    revert with 0, 17
                                if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[32] = 11
                                gold[stor15[s + (_1665 % stor17 + stor18 + stor19) % stor15.length]]--
                                mem[0] = 15
                                mem[mem[64]] = 1
                                emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_a3b7086a[s + (_1665 % stor17 + stor18 + stor19) % sub_a3b7086a.length]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if sub_80d6c148:
                                if sub_80d6c148 < 1:
                                    revert with 0, 17
                                sub_80d6c148--
                                s = 0
                                while s < sub_f6d81298.length:
                                    if s > !(_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                        revert with 0, 17
                                    if not sub_f6d81298.length:
                                        revert with 0, 18
                                    if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[0] = sub_f6d81298[s + (_1665 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[32] = 12
                                    if sub_7ebe9d27[stor16[s + (_1665 % stor17 + stor18 + stor19) % stor16.length]] <= 0:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = sub_f85b2cbfAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = sub_f6d81298[s + (_1665 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(nftAddress)
                                    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args sub_f85b2cbfAddress, msg.sender, sub_f6d81298[s + (_1665 % stor17 + stor18 + stor19) % sub_f6d81298.length], 1, 160, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    if sub_7ebe9d27[stor16[s + (_1665 % stor17 + stor18 + stor19) % stor16.length]] < 1:
                                        revert with 0, 17
                                    if s + (_1665 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[32] = 12
                                    sub_7ebe9d27[stor16[s + (_1665 % stor17 + stor18 + stor19) % stor16.length]]--
                                    mem[0] = 16
                                    mem[mem[64]] = 1
                                    emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_f6d81298[s + (_1665 % stor17 + stor18 + stor19) % sub_f6d81298.length]);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
            mem[ceil32(return_data.size) + 292] = return_data.size
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while idx < stor13:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = block.difficulty
                    _1666 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1668 = sha3(mem[_1666 + 32 len mem[_1666]])
                    if not msg.sender:
                        revert with 0, 'no request'
                    if sub_cde259b6 > !sub_234324e2:
                        revert with 0, 17
                    if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
                        revert with 0, 17
                    if not sub_cde259b6 + sub_234324e2 + sub_80d6c148:
                        revert with 0, 18
                    if sha3(mem[_1666 + 32 len mem[_1666]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6:
                        if sub_cde259b6 < 1:
                            revert with 0, 17
                        sub_cde259b6--
                        s = 0
                        while s < sub_888c8f74.length:
                            if s > !(_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                revert with 0, 17
                            if not sub_888c8f74.length:
                                revert with 0, 18
                            if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[0] = sub_888c8f74[s + (_1668 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[32] = 10
                            if sub_84b47cd6[stor14[s + (_1668 % stor17 + stor18 + stor19) % stor14.length]] <= 0:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[mem[64] + 4] = sub_f85b2cbfAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = sub_888c8f74[s + (_1668 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(nftAddress)
                            call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args sub_f85b2cbfAddress, msg.sender, sub_888c8f74[s + (_1668 % stor17 + stor18 + stor19) % sub_888c8f74.length], 1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            if sub_84b47cd6[stor14[s + (_1668 % stor17 + stor18 + stor19) % stor14.length]] < 1:
                                revert with 0, 17
                            if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[32] = 10
                            sub_84b47cd6[stor14[s + (_1668 % stor17 + stor18 + stor19) % stor14.length]]--
                            mem[0] = 14
                            mem[mem[64]] = 1
                            emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_888c8f74[s + (_1668 % stor17 + stor18 + stor19) % sub_888c8f74.length]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if sub_cde259b6 > !sub_234324e2:
                            revert with 0, 17
                        if sha3(mem[_1666 + 32 len mem[_1666]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6 + sub_234324e2:
                            if sub_234324e2 < 1:
                                revert with 0, 17
                            sub_234324e2--
                            s = 0
                            while s < sub_a3b7086a.length:
                                if s > !(_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                    revert with 0, 17
                                if not sub_a3b7086a.length:
                                    revert with 0, 18
                                if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[0] = sub_a3b7086a[s + (_1668 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[32] = 11
                                if gold[stor15[s + (_1668 % stor17 + stor18 + stor19) % stor15.length]] <= 0:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = sub_f85b2cbfAddress
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = sub_a3b7086a[s + (_1668 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(nftAddress)
                                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args sub_f85b2cbfAddress, msg.sender, sub_a3b7086a[s + (_1668 % stor17 + stor18 + stor19) % sub_a3b7086a.length], 1, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                if gold[stor15[s + (_1668 % stor17 + stor18 + stor19) % stor15.length]] < 1:
                                    revert with 0, 17
                                if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[32] = 11
                                gold[stor15[s + (_1668 % stor17 + stor18 + stor19) % stor15.length]]--
                                mem[0] = 15
                                mem[mem[64]] = 1
                                emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_a3b7086a[s + (_1668 % stor17 + stor18 + stor19) % sub_a3b7086a.length]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if sub_80d6c148:
                                if sub_80d6c148 < 1:
                                    revert with 0, 17
                                sub_80d6c148--
                                s = 0
                                while s < sub_f6d81298.length:
                                    if s > !(_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                        revert with 0, 17
                                    if not sub_f6d81298.length:
                                        revert with 0, 18
                                    if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[0] = sub_f6d81298[s + (_1668 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[32] = 12
                                    if sub_7ebe9d27[stor16[s + (_1668 % stor17 + stor18 + stor19) % stor16.length]] <= 0:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = sub_f85b2cbfAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = sub_f6d81298[s + (_1668 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(nftAddress)
                                    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args sub_f85b2cbfAddress, msg.sender, sub_f6d81298[s + (_1668 % stor17 + stor18 + stor19) % sub_f6d81298.length], 1, 160, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    if sub_7ebe9d27[stor16[s + (_1668 % stor17 + stor18 + stor19) % stor16.length]] < 1:
                                        revert with 0, 17
                                    if s + (_1668 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[32] = 12
                                    sub_7ebe9d27[stor16[s + (_1668 % stor17 + stor18 + stor19) % stor16.length]]--
                                    mem[0] = 16
                                    mem[mem[64]] = 1
                                    emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_f6d81298[s + (_1668 % stor17 + stor18 + stor19) % sub_f6d81298.length]);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < stor13:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = block.difficulty
                    _1669 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1671 = sha3(mem[_1669 + 32 len mem[_1669]])
                    if not msg.sender:
                        revert with 0, 'no request'
                    if sub_cde259b6 > !sub_234324e2:
                        revert with 0, 17
                    if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
                        revert with 0, 17
                    if not sub_cde259b6 + sub_234324e2 + sub_80d6c148:
                        revert with 0, 18
                    if sha3(mem[_1669 + 32 len mem[_1669]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6:
                        if sub_cde259b6 < 1:
                            revert with 0, 17
                        sub_cde259b6--
                        s = 0
                        while s < sub_888c8f74.length:
                            if s > !(_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                revert with 0, 17
                            if not sub_888c8f74.length:
                                revert with 0, 18
                            if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[0] = sub_888c8f74[s + (_1671 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[32] = 10
                            if sub_84b47cd6[stor14[s + (_1671 % stor17 + stor18 + stor19) % stor14.length]] <= 0:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[mem[64] + 4] = sub_f85b2cbfAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = sub_888c8f74[s + (_1671 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(nftAddress)
                            call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args sub_f85b2cbfAddress, msg.sender, sub_888c8f74[s + (_1671 % stor17 + stor18 + stor19) % sub_888c8f74.length], 1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            if sub_84b47cd6[stor14[s + (_1671 % stor17 + stor18 + stor19) % stor14.length]] < 1:
                                revert with 0, 17
                            if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[32] = 10
                            sub_84b47cd6[stor14[s + (_1671 % stor17 + stor18 + stor19) % stor14.length]]--
                            mem[0] = 14
                            mem[mem[64]] = 1
                            emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_888c8f74[s + (_1671 % stor17 + stor18 + stor19) % sub_888c8f74.length]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if sub_cde259b6 > !sub_234324e2:
                            revert with 0, 17
                        if sha3(mem[_1669 + 32 len mem[_1669]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6 + sub_234324e2:
                            if sub_234324e2 < 1:
                                revert with 0, 17
                            sub_234324e2--
                            s = 0
                            while s < sub_a3b7086a.length:
                                if s > !(_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                    revert with 0, 17
                                if not sub_a3b7086a.length:
                                    revert with 0, 18
                                if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[0] = sub_a3b7086a[s + (_1671 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[32] = 11
                                if gold[stor15[s + (_1671 % stor17 + stor18 + stor19) % stor15.length]] <= 0:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = sub_f85b2cbfAddress
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = sub_a3b7086a[s + (_1671 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(nftAddress)
                                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args sub_f85b2cbfAddress, msg.sender, sub_a3b7086a[s + (_1671 % stor17 + stor18 + stor19) % sub_a3b7086a.length], 1, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                if gold[stor15[s + (_1671 % stor17 + stor18 + stor19) % stor15.length]] < 1:
                                    revert with 0, 17
                                if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[32] = 11
                                gold[stor15[s + (_1671 % stor17 + stor18 + stor19) % stor15.length]]--
                                mem[0] = 15
                                mem[mem[64]] = 1
                                emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_a3b7086a[s + (_1671 % stor17 + stor18 + stor19) % sub_a3b7086a.length]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if sub_80d6c148:
                                if sub_80d6c148 < 1:
                                    revert with 0, 17
                                sub_80d6c148--
                                s = 0
                                while s < sub_f6d81298.length:
                                    if s > !(_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                        revert with 0, 17
                                    if not sub_f6d81298.length:
                                        revert with 0, 18
                                    if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[0] = sub_f6d81298[s + (_1671 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[32] = 12
                                    if sub_7ebe9d27[stor16[s + (_1671 % stor17 + stor18 + stor19) % stor16.length]] <= 0:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = sub_f85b2cbfAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = sub_f6d81298[s + (_1671 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(nftAddress)
                                    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args sub_f85b2cbfAddress, msg.sender, sub_f6d81298[s + (_1671 % stor17 + stor18 + stor19) % sub_f6d81298.length], 1, 160, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    if sub_7ebe9d27[stor16[s + (_1671 % stor17 + stor18 + stor19) % stor16.length]] < 1:
                                        revert with 0, 17
                                    if s + (_1671 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[32] = 12
                                    sub_7ebe9d27[stor16[s + (_1671 % stor17 + stor18 + stor19) % stor16.length]]--
                                    mem[0] = 16
                                    mem[mem[64]] = 1
                                    emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_f6d81298[s + (_1671 % stor17 + stor18 + stor19) % sub_f6d81298.length]);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        require stor2[address(msg.sender)]
        if ext_code.size(msg.sender):
            revert with 0, 'No contracts permitted'
        mem[100] = msg.sender
        require ext_code.size(sub_c7945de0Address)
        staticcall sub_c7945de0Address.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < dropAmount:
            revert with 0, 'not owning the enough token'
        if sub_cde259b6 > !sub_234324e2:
            revert with 0, 17
        if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
            revert with 0, 17
        if sub_cde259b6 + sub_234324e2 + sub_80d6c148 <= 0:
            revert with 0, 'no items left to sell'
        if stor5[msg.sender]:
            revert with 0, 'You have already purchased once!'
        mem[0] = msg.sender
        mem[32] = 5
        stor5[msg.sender] = 1
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = sub_9cd726c4Address
        mem[ceil32(return_data.size) + 196] = dropAmount
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[64] = ceil32(return_data.size) + 292
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_c7945de0Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, sub_9cd726c4Address, dropAmount, 0
        mem[ceil32(return_data.size) + 392] = 0
        call sub_c7945de0Address with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, sub_9cd726c4Address, dropAmount, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, sub_9cd726c4Address, dropAmount, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                idx = 0
                while idx < stor13:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = block.difficulty
                    _1684 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1686 = sha3(mem[_1684 + 32 len mem[_1684]])
                    if not msg.sender:
                        revert with 0, 'no request'
                    if sub_cde259b6 > !sub_234324e2:
                        revert with 0, 17
                    if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
                        revert with 0, 17
                    if not sub_cde259b6 + sub_234324e2 + sub_80d6c148:
                        revert with 0, 18
                    if sha3(mem[_1684 + 32 len mem[_1684]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6:
                        if sub_cde259b6 < 1:
                            revert with 0, 17
                        sub_cde259b6--
                        s = 0
                        while s < sub_888c8f74.length:
                            if s > !(_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                revert with 0, 17
                            if not sub_888c8f74.length:
                                revert with 0, 18
                            if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[0] = sub_888c8f74[s + (_1686 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[32] = 10
                            if sub_84b47cd6[stor14[s + (_1686 % stor17 + stor18 + stor19) % stor14.length]] <= 0:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[mem[64] + 4] = sub_f85b2cbfAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = sub_888c8f74[s + (_1686 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(nftAddress)
                            call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args sub_f85b2cbfAddress, msg.sender, sub_888c8f74[s + (_1686 % stor17 + stor18 + stor19) % sub_888c8f74.length], 1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            if sub_84b47cd6[stor14[s + (_1686 % stor17 + stor18 + stor19) % stor14.length]] < 1:
                                revert with 0, 17
                            if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[32] = 10
                            sub_84b47cd6[stor14[s + (_1686 % stor17 + stor18 + stor19) % stor14.length]]--
                            mem[0] = 14
                            mem[mem[64]] = 1
                            emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_888c8f74[s + (_1686 % stor17 + stor18 + stor19) % sub_888c8f74.length]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if sub_cde259b6 > !sub_234324e2:
                            revert with 0, 17
                        if sha3(mem[_1684 + 32 len mem[_1684]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6 + sub_234324e2:
                            if sub_234324e2 < 1:
                                revert with 0, 17
                            sub_234324e2--
                            s = 0
                            while s < sub_a3b7086a.length:
                                if s > !(_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                    revert with 0, 17
                                if not sub_a3b7086a.length:
                                    revert with 0, 18
                                if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[0] = sub_a3b7086a[s + (_1686 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[32] = 11
                                if gold[stor15[s + (_1686 % stor17 + stor18 + stor19) % stor15.length]] <= 0:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = sub_f85b2cbfAddress
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = sub_a3b7086a[s + (_1686 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(nftAddress)
                                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args sub_f85b2cbfAddress, msg.sender, sub_a3b7086a[s + (_1686 % stor17 + stor18 + stor19) % sub_a3b7086a.length], 1, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                if gold[stor15[s + (_1686 % stor17 + stor18 + stor19) % stor15.length]] < 1:
                                    revert with 0, 17
                                if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[32] = 11
                                gold[stor15[s + (_1686 % stor17 + stor18 + stor19) % stor15.length]]--
                                mem[0] = 15
                                mem[mem[64]] = 1
                                emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_a3b7086a[s + (_1686 % stor17 + stor18 + stor19) % sub_a3b7086a.length]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if sub_80d6c148:
                                if sub_80d6c148 < 1:
                                    revert with 0, 17
                                sub_80d6c148--
                                s = 0
                                while s < sub_f6d81298.length:
                                    if s > !(_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                        revert with 0, 17
                                    if not sub_f6d81298.length:
                                        revert with 0, 18
                                    if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[0] = sub_f6d81298[s + (_1686 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[32] = 12
                                    if sub_7ebe9d27[stor16[s + (_1686 % stor17 + stor18 + stor19) % stor16.length]] <= 0:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = sub_f85b2cbfAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = sub_f6d81298[s + (_1686 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(nftAddress)
                                    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args sub_f85b2cbfAddress, msg.sender, sub_f6d81298[s + (_1686 % stor17 + stor18 + stor19) % sub_f6d81298.length], 1, 160, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    if sub_7ebe9d27[stor16[s + (_1686 % stor17 + stor18 + stor19) % stor16.length]] < 1:
                                        revert with 0, 17
                                    if s + (_1686 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[32] = 12
                                    sub_7ebe9d27[stor16[s + (_1686 % stor17 + stor18 + stor19) % stor16.length]]--
                                    mem[0] = 16
                                    mem[mem[64]] = 1
                                    emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_f6d81298[s + (_1686 % stor17 + stor18 + stor19) % sub_f6d81298.length]);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require ext_call.return_data[0] >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < stor13:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = block.difficulty
                    _1687 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1689 = sha3(mem[_1687 + 32 len mem[_1687]])
                    if not msg.sender:
                        revert with 0, 'no request'
                    if sub_cde259b6 > !sub_234324e2:
                        revert with 0, 17
                    if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
                        revert with 0, 17
                    if not sub_cde259b6 + sub_234324e2 + sub_80d6c148:
                        revert with 0, 18
                    if sha3(mem[_1687 + 32 len mem[_1687]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6:
                        if sub_cde259b6 < 1:
                            revert with 0, 17
                        sub_cde259b6--
                        s = 0
                        while s < sub_888c8f74.length:
                            if s > !(_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                revert with 0, 17
                            if not sub_888c8f74.length:
                                revert with 0, 18
                            if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[0] = sub_888c8f74[s + (_1689 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[32] = 10
                            if sub_84b47cd6[stor14[s + (_1689 % stor17 + stor18 + stor19) % stor14.length]] <= 0:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[mem[64] + 4] = sub_f85b2cbfAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = sub_888c8f74[s + (_1689 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(nftAddress)
                            call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args sub_f85b2cbfAddress, msg.sender, sub_888c8f74[s + (_1689 % stor17 + stor18 + stor19) % sub_888c8f74.length], 1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            if sub_84b47cd6[stor14[s + (_1689 % stor17 + stor18 + stor19) % stor14.length]] < 1:
                                revert with 0, 17
                            if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[32] = 10
                            sub_84b47cd6[stor14[s + (_1689 % stor17 + stor18 + stor19) % stor14.length]]--
                            mem[0] = 14
                            mem[mem[64]] = 1
                            emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_888c8f74[s + (_1689 % stor17 + stor18 + stor19) % sub_888c8f74.length]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if sub_cde259b6 > !sub_234324e2:
                            revert with 0, 17
                        if sha3(mem[_1687 + 32 len mem[_1687]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6 + sub_234324e2:
                            if sub_234324e2 < 1:
                                revert with 0, 17
                            sub_234324e2--
                            s = 0
                            while s < sub_a3b7086a.length:
                                if s > !(_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                    revert with 0, 17
                                if not sub_a3b7086a.length:
                                    revert with 0, 18
                                if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[0] = sub_a3b7086a[s + (_1689 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[32] = 11
                                if gold[stor15[s + (_1689 % stor17 + stor18 + stor19) % stor15.length]] <= 0:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = sub_f85b2cbfAddress
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = sub_a3b7086a[s + (_1689 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(nftAddress)
                                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args sub_f85b2cbfAddress, msg.sender, sub_a3b7086a[s + (_1689 % stor17 + stor18 + stor19) % sub_a3b7086a.length], 1, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                if gold[stor15[s + (_1689 % stor17 + stor18 + stor19) % stor15.length]] < 1:
                                    revert with 0, 17
                                if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[32] = 11
                                gold[stor15[s + (_1689 % stor17 + stor18 + stor19) % stor15.length]]--
                                mem[0] = 15
                                mem[mem[64]] = 1
                                emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_a3b7086a[s + (_1689 % stor17 + stor18 + stor19) % sub_a3b7086a.length]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if sub_80d6c148:
                                if sub_80d6c148 < 1:
                                    revert with 0, 17
                                sub_80d6c148--
                                s = 0
                                while s < sub_f6d81298.length:
                                    if s > !(_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                        revert with 0, 17
                                    if not sub_f6d81298.length:
                                        revert with 0, 18
                                    if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[0] = sub_f6d81298[s + (_1689 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[32] = 12
                                    if sub_7ebe9d27[stor16[s + (_1689 % stor17 + stor18 + stor19) % stor16.length]] <= 0:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = sub_f85b2cbfAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = sub_f6d81298[s + (_1689 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(nftAddress)
                                    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args sub_f85b2cbfAddress, msg.sender, sub_f6d81298[s + (_1689 % stor17 + stor18 + stor19) % sub_f6d81298.length], 1, 160, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    if sub_7ebe9d27[stor16[s + (_1689 % stor17 + stor18 + stor19) % stor16.length]] < 1:
                                        revert with 0, 17
                                    if s + (_1689 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[32] = 12
                                    sub_7ebe9d27[stor16[s + (_1689 % stor17 + stor18 + stor19) % stor16.length]]--
                                    mem[0] = 16
                                    mem[mem[64]] = 1
                                    emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_f6d81298[s + (_1689 % stor17 + stor18 + stor19) % sub_f6d81298.length]);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 293
            mem[ceil32(return_data.size) + 292] = return_data.size
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                idx = 0
                while idx < stor13:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = block.difficulty
                    _1690 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1692 = sha3(mem[_1690 + 32 len mem[_1690]])
                    if not msg.sender:
                        revert with 0, 'no request'
                    if sub_cde259b6 > !sub_234324e2:
                        revert with 0, 17
                    if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
                        revert with 0, 17
                    if not sub_cde259b6 + sub_234324e2 + sub_80d6c148:
                        revert with 0, 18
                    if sha3(mem[_1690 + 32 len mem[_1690]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6:
                        if sub_cde259b6 < 1:
                            revert with 0, 17
                        sub_cde259b6--
                        s = 0
                        while s < sub_888c8f74.length:
                            if s > !(_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                revert with 0, 17
                            if not sub_888c8f74.length:
                                revert with 0, 18
                            if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[0] = sub_888c8f74[s + (_1692 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[32] = 10
                            if sub_84b47cd6[stor14[s + (_1692 % stor17 + stor18 + stor19) % stor14.length]] <= 0:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[mem[64] + 4] = sub_f85b2cbfAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = sub_888c8f74[s + (_1692 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(nftAddress)
                            call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args sub_f85b2cbfAddress, msg.sender, sub_888c8f74[s + (_1692 % stor17 + stor18 + stor19) % sub_888c8f74.length], 1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            if sub_84b47cd6[stor14[s + (_1692 % stor17 + stor18 + stor19) % stor14.length]] < 1:
                                revert with 0, 17
                            if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[32] = 10
                            sub_84b47cd6[stor14[s + (_1692 % stor17 + stor18 + stor19) % stor14.length]]--
                            mem[0] = 14
                            mem[mem[64]] = 1
                            emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_888c8f74[s + (_1692 % stor17 + stor18 + stor19) % sub_888c8f74.length]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if sub_cde259b6 > !sub_234324e2:
                            revert with 0, 17
                        if sha3(mem[_1690 + 32 len mem[_1690]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6 + sub_234324e2:
                            if sub_234324e2 < 1:
                                revert with 0, 17
                            sub_234324e2--
                            s = 0
                            while s < sub_a3b7086a.length:
                                if s > !(_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                    revert with 0, 17
                                if not sub_a3b7086a.length:
                                    revert with 0, 18
                                if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[0] = sub_a3b7086a[s + (_1692 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[32] = 11
                                if gold[stor15[s + (_1692 % stor17 + stor18 + stor19) % stor15.length]] <= 0:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = sub_f85b2cbfAddress
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = sub_a3b7086a[s + (_1692 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(nftAddress)
                                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args sub_f85b2cbfAddress, msg.sender, sub_a3b7086a[s + (_1692 % stor17 + stor18 + stor19) % sub_a3b7086a.length], 1, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                if gold[stor15[s + (_1692 % stor17 + stor18 + stor19) % stor15.length]] < 1:
                                    revert with 0, 17
                                if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[32] = 11
                                gold[stor15[s + (_1692 % stor17 + stor18 + stor19) % stor15.length]]--
                                mem[0] = 15
                                mem[mem[64]] = 1
                                emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_a3b7086a[s + (_1692 % stor17 + stor18 + stor19) % sub_a3b7086a.length]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if sub_80d6c148:
                                if sub_80d6c148 < 1:
                                    revert with 0, 17
                                sub_80d6c148--
                                s = 0
                                while s < sub_f6d81298.length:
                                    if s > !(_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                        revert with 0, 17
                                    if not sub_f6d81298.length:
                                        revert with 0, 18
                                    if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[0] = sub_f6d81298[s + (_1692 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[32] = 12
                                    if sub_7ebe9d27[stor16[s + (_1692 % stor17 + stor18 + stor19) % stor16.length]] <= 0:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = sub_f85b2cbfAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = sub_f6d81298[s + (_1692 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(nftAddress)
                                    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args sub_f85b2cbfAddress, msg.sender, sub_f6d81298[s + (_1692 % stor17 + stor18 + stor19) % sub_f6d81298.length], 1, 160, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    if sub_7ebe9d27[stor16[s + (_1692 % stor17 + stor18 + stor19) % stor16.length]] < 1:
                                        revert with 0, 17
                                    if s + (_1692 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[32] = 12
                                    sub_7ebe9d27[stor16[s + (_1692 % stor17 + stor18 + stor19) % stor16.length]]--
                                    mem[0] = 16
                                    mem[mem[64]] = 1
                                    emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_f6d81298[s + (_1692 % stor17 + stor18 + stor19) % sub_f6d81298.length]);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                idx = 0
                while idx < stor13:
                    if block.number < 1:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.hash(block.number - 1)
                    mem[mem[64] + 64] = block.timestamp
                    mem[mem[64] + 96] = block.difficulty
                    _1693 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1695 = sha3(mem[_1693 + 32 len mem[_1693]])
                    if not msg.sender:
                        revert with 0, 'no request'
                    if sub_cde259b6 > !sub_234324e2:
                        revert with 0, 17
                    if sub_cde259b6 + sub_234324e2 > !sub_80d6c148:
                        revert with 0, 17
                    if not sub_cde259b6 + sub_234324e2 + sub_80d6c148:
                        revert with 0, 18
                    if sha3(mem[_1693 + 32 len mem[_1693]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6:
                        if sub_cde259b6 < 1:
                            revert with 0, 17
                        sub_cde259b6--
                        s = 0
                        while s < sub_888c8f74.length:
                            if s > !(_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                revert with 0, 17
                            if not sub_888c8f74.length:
                                revert with 0, 18
                            if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[0] = sub_888c8f74[s + (_1695 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[32] = 10
                            if sub_84b47cd6[stor14[s + (_1695 % stor17 + stor18 + stor19) % stor14.length]] <= 0:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[mem[64] + 4] = sub_f85b2cbfAddress
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = sub_888c8f74[s + (_1695 % stor17 + stor18 + stor19) % sub_888c8f74.length]
                            mem[mem[64] + 100] = 1
                            mem[mem[64] + 132] = 160
                            mem[mem[64] + 164] = 0
                            require ext_code.size(nftAddress)
                            call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args sub_f85b2cbfAddress, msg.sender, sub_888c8f74[s + (_1695 % stor17 + stor18 + stor19) % sub_888c8f74.length], 1, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            if sub_84b47cd6[stor14[s + (_1695 % stor17 + stor18 + stor19) % stor14.length]] < 1:
                                revert with 0, 17
                            if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_888c8f74.length >= sub_888c8f74.length:
                                revert with 0, 50
                            mem[32] = 10
                            sub_84b47cd6[stor14[s + (_1695 % stor17 + stor18 + stor19) % stor14.length]]--
                            mem[0] = 14
                            mem[mem[64]] = 1
                            emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_888c8f74[s + (_1695 % stor17 + stor18 + stor19) % sub_888c8f74.length]);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                    else:
                        if sub_cde259b6 > !sub_234324e2:
                            revert with 0, 17
                        if sha3(mem[_1693 + 32 len mem[_1693]]) % sub_cde259b6 + sub_234324e2 + sub_80d6c148 < sub_cde259b6 + sub_234324e2:
                            if sub_234324e2 < 1:
                                revert with 0, 17
                            sub_234324e2--
                            s = 0
                            while s < sub_a3b7086a.length:
                                if s > !(_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                    revert with 0, 17
                                if not sub_a3b7086a.length:
                                    revert with 0, 18
                                if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[0] = sub_a3b7086a[s + (_1695 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[32] = 11
                                if gold[stor15[s + (_1695 % stor17 + stor18 + stor19) % stor15.length]] <= 0:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                                if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[mem[64] + 4] = sub_f85b2cbfAddress
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = sub_a3b7086a[s + (_1695 % stor17 + stor18 + stor19) % sub_a3b7086a.length]
                                mem[mem[64] + 100] = 1
                                mem[mem[64] + 132] = 160
                                mem[mem[64] + 164] = 0
                                require ext_code.size(nftAddress)
                                call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                     gas gas_remaining wei
                                    args sub_f85b2cbfAddress, msg.sender, sub_a3b7086a[s + (_1695 % stor17 + stor18 + stor19) % sub_a3b7086a.length], 1, 160, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                if gold[stor15[s + (_1695 % stor17 + stor18 + stor19) % stor15.length]] < 1:
                                    revert with 0, 17
                                if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_a3b7086a.length >= sub_a3b7086a.length:
                                    revert with 0, 50
                                mem[32] = 11
                                gold[stor15[s + (_1695 % stor17 + stor18 + stor19) % stor15.length]]--
                                mem[0] = 15
                                mem[mem[64]] = 1
                                emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_a3b7086a[s + (_1695 % stor17 + stor18 + stor19) % sub_a3b7086a.length]);
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                        else:
                            if sub_80d6c148:
                                if sub_80d6c148 < 1:
                                    revert with 0, 17
                                sub_80d6c148--
                                s = 0
                                while s < sub_f6d81298.length:
                                    if s > !(_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148):
                                        revert with 0, 17
                                    if not sub_f6d81298.length:
                                        revert with 0, 18
                                    if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[0] = sub_f6d81298[s + (_1695 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[32] = 12
                                    if sub_7ebe9d27[stor16[s + (_1695 % stor17 + stor18 + stor19) % stor16.length]] <= 0:
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[mem[64] + 4] = sub_f85b2cbfAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = sub_f6d81298[s + (_1695 % stor17 + stor18 + stor19) % sub_f6d81298.length]
                                    mem[mem[64] + 100] = 1
                                    mem[mem[64] + 132] = 160
                                    mem[mem[64] + 164] = 0
                                    require ext_code.size(nftAddress)
                                    call nftAddress.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                         gas gas_remaining wei
                                        args sub_f85b2cbfAddress, msg.sender, sub_f6d81298[s + (_1695 % stor17 + stor18 + stor19) % sub_f6d81298.length], 1, 160, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    if sub_7ebe9d27[stor16[s + (_1695 % stor17 + stor18 + stor19) % stor16.length]] < 1:
                                        revert with 0, 17
                                    if s + (_1695 % sub_cde259b6 + sub_234324e2 + sub_80d6c148) % sub_f6d81298.length >= sub_f6d81298.length:
                                        revert with 0, 50
                                    mem[32] = 12
                                    sub_7ebe9d27[stor16[s + (_1695 % stor17 + stor18 + stor19) % stor16.length]]--
                                    mem[0] = 16
                                    mem[mem[64]] = 1
                                    emit DropSoldOut(1, nftAddress, sub_f85b2cbfAddress, sub_f6d81298[s + (_1695 % stor17 + stor18 + stor19) % sub_f6d81298.length]);
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    stor1 = 1
}



}
