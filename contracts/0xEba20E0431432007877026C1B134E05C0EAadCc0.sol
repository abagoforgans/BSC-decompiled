contract main {




// =====================  Runtime code  =====================


const sub_3156a9da(?) = 50


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 totalUsers;
mapping of struct stor102;
array of struct stor103;
mapping of uint256 stor104;
mapping of uint8 stor105;
address stakingAddress;
array of address stor68539412096397065356586712351047378110740926828376844291700787184847249528494;

function staking() payable {
    return stakingAddress
}

function usersCount() payable {
    return stor103.length
}

function owner() payable {
    return owner
}

function totalUsers() payable {
    return totalUsers
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

function getUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor102[address(arg1)].field_0:
        return stor102[address(arg1)].field_0, 
               bool(stor102[address(arg1)].field_160),
               stor102[address(arg1)].field_256,
               bool(stor102[address(arg1)].field_768),
               stor102[address(arg1)].field_768
    require ext_code.size(0xb2f0733c4ed3632158c9a58c1e0bbf1f54af8a3a)
    staticcall 0xb2f0733c4ed3632158c9a58c1e0bbf1f54af8a3a.userInfo(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(0xff0c7d27a39b8f980de5fabeab849976b45d01cf)
    staticcall 0xff0c7d27a39b8f980de5fabeab849976b45d01cf.userInfo(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if 2 * ext_call.return_data[0] >= 250000 * 10^18:
        return address(arg1), 1, 0, 1, 143000 * 10^18
    if 2 * ext_call.return_data[0] >= 100000 * 10^18:
        return address(arg1), 1, 0, 1, 15875 * 10^15 * 3600
    if 2 * ext_call.return_data[0] >= 50000 * 10^18:
        return address(arg1), 1, 0, 1, 28574 * 10^18
    if 2 * ext_call.return_data[0] >= 15000 * 10^18:
        return address(arg1), 1, 0, 1, 8570 * 10^18
    if 2 * ext_call.return_data[0] < 3000 * 10^18:
        return 0
    return address(arg1), 1, 0, 1, 2860 * 10^18
}

function getUsers(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = stor103.length
    if stor103.length:
        mem[128] = address(stor103.field_0)
        idx = 128
        s = 0
        while (32 * stor103.length) + 96 > idx:
            mem[idx + 32] = stor103[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if arg2 > test266151307():
        revert with 0, 65
    mem[(32 * stor103.length) + 128] = arg2
    mem[64] = (32 * stor103.length) + (32 * arg2) + 160
    if arg2:
        mem[(32 * stor103.length) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 and arg2 > -1 / arg1:
            revert with 0, 17
        if arg1 * arg2 > !idx:
            revert with 0, 17
        if (arg1 * arg2) + idx >= stor103.length:
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor103.length) + 160] = 0
        else:
            if arg1 and arg2 > -1 / arg1:
                revert with 0, 17
            if arg1 * arg2 > !idx:
                revert with 0, 17
            if (arg1 * arg2) + idx >= stor103.length:
                revert with 0, 50
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor103.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor103.length) + (32 * arg2) + 160] = 32
    mem[(32 * stor103.length) + (32 * arg2) + 192] = arg2
    idx = 0
    s = mem[64] + 64
    t = (32 * stor103.length) + 160
    while idx < arg2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * stor103.length) + (64 * arg2) + -mem[64] + 224
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stakingAddress = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stakingAddress = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stakingAddress = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stakingAddress = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        stakingAddress = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stakingAddress = arg1
                        uint8(stor0.field_8) = 0
}

function removeFromWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if (32 * arg1.length) + 128 < 96 or (32 * arg1.length) + 128 > test266151307():
        revert with 0, 65
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
    if arg1.length > 50:
        revert with 0, 'removeFromWhitelist: users length shouldn't exceed MAX_ARRAY_LENGTH'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx >= arg1.length:
            revert with 0, 50
        if stor102[mem[(32 * idx) + 140 len 20]].field_0:
            stor102[mem[(32 * idx) + 140 len 20]].field_0 = 0
            stor102[mem[(32 * idx) + 140 len 20]].field_256 = 0
            stor102[mem[(32 * idx) + 140 len 20]].field_512 = 0
            stor102[mem[(32 * idx) + 140 len 20]].field_768 = 0
            if idx >= arg1.length:
                revert with 0, 50
            _110 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = block.timestamp
            emit AddedOrRemoved(0, block.timestamp, address(_110));
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 105
        if 1 == bool(stor105[mem[(32 * idx) + 140 len 20]]):
            if idx >= arg1.length:
                revert with 0, 50
            stor105[mem[(32 * idx) + 140 len 20]] = 0
            if idx >= arg1.length:
                revert with 0, 50
            if stor103.length < 1:
                revert with 0, 17
            if stor103.length - 1 >= stor103.length:
                revert with 0, 50
            stor104[stor103[stor103.length].field_0] = stor104[mem[(32 * idx) + 140 len 20]]
            if idx >= arg1.length:
                revert with 0, 50
            mem[32] = 104
            stor104[mem[(32 * idx) + 140 len 20]] = 0
            if stor104[mem[(32 * idx) + 140 len 20]] >= stor103.length:
                revert with 0, 50
            stor103[stor104[mem[(32 * idx) + 140 len 20]]].field_0 = stor103[stor103.length].field_0
            if not stor103.length:
                revert with 0, 49
            mem[0] = 103
            stor103[stor103.length].field_0 = 0
            stor103.length--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    totalUsers = stor103.length
}

function sub_0c817d03(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (160 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require calldata.size - s >= 160
        _30 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + 160
        require cd[s] == address(cd[s])
        mem[_30] = cd[s]
        require cd[(s + 32)] == bool(cd[(s + 32)])
        mem[_30 + 32] = cd[(s + 32)]
        mem[_30 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == bool(cd[(s + 96)])
        mem[_30 + 96] = cd[(s + 96)]
        mem[_30 + 128] = cd[(s + 128)]
        mem[t] = _30
        s = s + 160
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[96] > 50:
        revert with 0, 'addToWhitelist: users length shouldn't exceed MAX_ARRAY_LENGTH'
    _58 = mem[96]
    idx = 0
    while idx < _58:
        if idx >= mem[96]:
            revert with 0, 50
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 102
        stor102[mem[0]].field_0 = mem[mem[(32 * idx) + 128] + 12 len 20]
        stor102[mem[0]].field_160 = Mask(96, 0, bool(mem[mem[(32 * idx) + 128] + 32]))
        stor102[mem[0]].field_256 = mem[mem[(32 * idx) + 128] + 64]
        stor102[mem[0]].field_512 = uint8(bool(mem[mem[(32 * idx) + 128] + 96]))
        stor102[mem[0]].field_768 = mem[mem[(32 * idx) + 128] + 128]
        mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
        mem[32] = 105
        if stor105[mem[0]]:
            _69 = mem[mem[(32 * idx) + 128]]
            mem[mem[64]] = 1
            mem[mem[64] + 32] = block.timestamp
            emit AddedOrRemoved(1, block.timestamp, address(_69));
        else:
            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[32] = 105
            stor105[mem[0]] = 1
            mem[0] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[32] = 104
            stor104[mem[0]] = stor103.length
            _75 = mem[mem[(32 * idx) + 128]]
            stor103.length++
            mem[0] = 103
            stor9787[stor103.length] = address(_75)
            _76 = mem[mem[(32 * idx) + 128]]
            mem[mem[64]] = 1
            mem[mem[64] + 32] = block.timestamp
            emit AddedOrRemoved(1, block.timestamp, address(_76));
        if idx == -1:
            revert with 0, 17
        _58 = mem[96]
        idx = idx + 1
        continue 
    totalUsers = stor103.length
}



}
