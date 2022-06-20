contract main {




// =====================  Runtime code  =====================


const sub_c0afce0a(?) = 0x277819bf69667b48af57abc52dddcb92ab6a2c45


address owner;
address stor1;
uint256 stor3;
uint256 sub_801f89fc;
uint256 sub_c2dd14af;
mapping of uint256 stor7;

function sub_801f89fc(?) payable {
    return sub_801f89fc
}

function owner() payable {
    return owner
}

function sub_c2dd14af(?) payable {
    return sub_c2dd14af
}

function _fallback() payable {
    revert
}

function setNFTContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function getApy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 7 == arg1:
        return sub_801f89fc
    if arg1 != 30:
        revert with 0, 'Variable _days must be 7 or 30'
    if 7 == arg1:
        return sub_801f89fc
    if arg1 != 30:
        return 0
    return sub_c2dd14af
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

function setApy(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 7 == arg1:
        sub_801f89fc = arg2
    else:
        if arg1 != 30:
            revert with 0, 'Variable _days must be 7 or 30'
        if arg1 != 7:
            sub_c2dd14af = arg2
        else:
            sub_801f89fc = arg2
}

function sub_c72704b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 50:
        if ext_call.return_data[0] and stor3 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * stor3)
    if stor3 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
        revert with 0, 17
    return (50 * stor3)
}

function hasStake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[32] = 7
    if stor7[address(arg1)] >= stor6.length:
        revert with 0, 50
    mem[0] = 6
    mem[64] = (32 * stor6[stor7[address(arg1)]].field_256) + 256
    mem[224] = stor6[stor7[address(arg1)]].field_256
    s = 256
    idx = 0
    while idx < stor6[stor7[address(arg1)]].field_256:
        mem[0] = (2 * stor7[address(arg1)]) + sha3(6) + 1
        _39 = mem[64]
        mem[64] = mem[64] + 288
        mem[_39] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_0
        mem[_39 + 32] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_256
        mem[_39 + 64] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_512
        mem[_39 + 96] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_768
        mem[_39 + 128] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_1024
        mem[_39 + 160] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_1280
        mem[_39 + 192] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_1536
        mem[_39 + 224] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_1792
        mem[_39 + 256] = stor[sha3((2 * stor7[address(arg1)]) + ('name', 'stor6', 6) + 1) + (9 * idx)].field_2048
        mem[s] = _39
        s = s + 32
        idx = idx + 1
        continue 
    mem[192] = 224
    _71 = mem[224]
    idx = 0
    s = 0
    while idx < _71:
        if idx >= mem[mem[192]]:
            revert with 0, 50
        if block.timestamp < mem[mem[(32 * idx) + mem[192] + 32] + 96]:
            revert with 0, 17
        if block.timestamp - mem[mem[(32 * idx) + mem[192] + 32] + 96] and mem[mem[(32 * idx) + mem[192] + 32] + 32] > -1 / block.timestamp - mem[mem[(32 * idx) + mem[192] + 32] + 96]:
            revert with 0, 17
        if (block.timestamp * mem[mem[(32 * idx) + mem[192] + 32] + 32]) - (mem[mem[(32 * idx) + mem[192] + 32] + 96] * mem[mem[(32 * idx) + mem[192] + 32] + 32]) and mem[mem[(32 * idx) + mem[192] + 32] + 160] > -1 / (block.timestamp * mem[mem[(32 * idx) + mem[192] + 32] + 32]) - (mem[mem[(32 * idx) + mem[192] + 32] + 96] * mem[mem[(32 * idx) + mem[192] + 32] + 32]):
            revert with 0, 17
        if idx >= mem[mem[192]]:
            revert with 0, 50
        mem[mem[(32 * idx) + mem[192] + 32] + 192] = (block.timestamp * mem[mem[(32 * idx) + mem[192] + 32] + 32] * mem[mem[(32 * idx) + mem[192] + 32] + 160]) - (mem[mem[(32 * idx) + mem[192] + 32] + 96] * mem[mem[(32 * idx) + mem[192] + 32] + 32] * mem[mem[(32 * idx) + mem[192] + 32] + 160]) / 2190000
        if idx >= mem[mem[192]]:
            revert with 0, 50
        if s > !mem[mem[(32 * idx) + mem[192] + 32] + 32]:
            revert with 0, 17
        if idx > -2:
            revert with 0, 17
        _71 = mem[mem[192]]
        idx = idx + 1
        s = s + mem[mem[(32 * idx) + mem[192] + 32] + 32]
        continue 
    mem[160] = s * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71
    _74 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = s * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71 * _71
    _77 = mem[192]
    mem[mem[64] + 64] = 64
    _78 = mem[_77]
    mem[mem[64] + 96] = mem[_77]
    idx = 0
    s = mem[64] + 128
    t = _77 + 32
    while idx < _78:
        _100 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_100 + 32]
        mem[s + 64] = mem[_100 + 64]
        mem[s + 96] = mem[_100 + 96]
        mem[s + 128] = mem[_100 + 128]
        mem[s + 160] = mem[_100 + 160]
        mem[s + 192] = mem[_100 + 192]
        mem[s + 224] = mem[_100 + 224]
        mem[s + 256] = mem[_100 + 256]
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _74 + (288 * _78) + -mem[64] + 128
}

function withdrawStake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor7[msg.sender] >= stor6.length:
        revert with 0, 50
    if arg2 >= stor6[stor7[msg.sender]].field_256:
        revert with 0, 50
    if block.timestamp <= stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1024:
        revert with 0, 'Stake can not be claimed yet'
    if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 < arg1:
        revert with 0, 'Cannot withdraw more than you have staked'
    if block.timestamp < stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768:
        revert with 0, 17
    if block.timestamp - stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 and stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 > -1 / block.timestamp - stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768:
        revert with 0, 17
    if (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256) and stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280 > -1 / (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256):
        revert with 0, 17
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_2048 <= ext_call.return_data[0]:
        if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 < arg1:
            revert with 0, 17
        if stor7[msg.sender] >= stor6.length:
            revert with 0, 50
        if arg2 >= stor6[stor7[msg.sender]].field_256:
            revert with 0, 50
        if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 - arg1:
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 - arg1
            if stor7[msg.sender] >= stor6.length:
                revert with 0, 50
            if arg2 >= stor6[stor7[msg.sender]].field_256:
                revert with 0, 50
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
        else:
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = 0
        if arg1 > !((block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000):
            revert with 0, 17
        call 0x277819bf69667b48af57abc52dddcb92ab6a2c45.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 + ((block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000)
    else:
        if ext_call.return_data[0] > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 0, 17
        if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_2048 > 0x5555555555555555555555555555555555555555555555555555555555555555:
            revert with 0, 17
        if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280 < 3 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_2048:
            revert with 0, 17
        if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280 - (3 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_2048) > !(3 * ext_call.return_data[0]):
            revert with 0, 17
        if not stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280:
            revert with 0, 18
        if (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000 / stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280 and stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280 - (3 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_2048) + (3 * ext_call.return_data[0]) > -1 / (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000 / stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280:
            revert with 0, 17
        if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 < arg1:
            revert with 0, 17
        if stor7[msg.sender] >= stor6.length:
            revert with 0, 50
        if arg2 >= stor6[stor7[msg.sender]].field_256:
            revert with 0, 50
        if stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 - arg1:
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 - arg1
            if stor7[msg.sender] >= stor6.length:
                revert with 0, 50
            if arg2 >= stor6[stor7[msg.sender]].field_256:
                revert with 0, 50
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
        else:
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = 0
            stor[(9 * arg2) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = 0
        if arg1 > !((stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280 * (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000 / stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (3 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_2048 * (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000 / stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) + (3 * ext_call.return_data[0] * (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000 / stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280)):
            revert with 0, 17
        call 0x277819bf69667b48af57abc52dddcb92ab6a2c45.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 + (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280 * (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000 / stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (3 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_2048 * (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000 / stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) + (3 * ext_call.return_data[0] * (block.timestamp * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) - (stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_768 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_256 * stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280) / 2190000 / stor[sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1) + (9 * arg2)].field_1280)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    staticcall 0x277819bf69667b48af57abc52dddcb92ab6a2c45.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Cannot stake more than you own'
    if arg2 != 7:
        if arg2 != 30:
            revert with 0, 'Variable _days must be 7 or 30'
    if arg1 <= 0:
        revert with 0, 'Cannot stake nothing'
    if 7 == arg2:
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > !sub_801f89fc:
                revert with 0, 17
            if arg2 > -1:
                revert with 0, 17
            if block.timestamp > !arg2:
                revert with 0, 17
            if stor7[msg.sender]:
                if stor7[msg.sender] >= stor6.length:
                    revert with 0, 50
                if stor7[msg.sender] >= stor6.length:
                    revert with 0, 50
                stor6[stor7[msg.sender]].field_256++
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = sub_801f89fc
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = 0
                emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
            else:
                stor6.length++
                if stor6.length + 1 < 1:
                    revert with 0, 17
                if stor6.length >= stor6.length:
                    revert with 0, 50
                stor6[stor6.length].field_0 = msg.sender
                stor7[address(msg.sender)] = stor6.length
                stor6[stor6.length].field_256++
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = sub_801f89fc
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = 0
                emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
        else:
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 50:
                if ext_call.return_data[0] and stor3 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * stor3 > !sub_801f89fc:
                    revert with 0, 17
                if arg2 > -1:
                    revert with 0, 17
                if block.timestamp > !arg2:
                    revert with 0, 17
                if stor7[msg.sender]:
                    if stor7[msg.sender] >= stor6.length:
                        revert with 0, 50
                    if stor7[msg.sender] >= stor6.length:
                        revert with 0, 50
                    stor6[stor7[msg.sender]].field_256++
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = (ext_call.return_data[0] * stor3) + sub_801f89fc
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = ext_call.return_data[0] * stor3 / 3
                    emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
                else:
                    stor6.length++
                    if stor6.length + 1 < 1:
                        revert with 0, 17
                    if stor6.length >= stor6.length:
                        revert with 0, 50
                    stor6[stor6.length].field_0 = msg.sender
                    stor7[address(msg.sender)] = stor6.length
                    stor6[stor6.length].field_256++
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = (ext_call.return_data[0] * stor3) + sub_801f89fc
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = ext_call.return_data[0] * stor3 / 3
                    emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
            else:
                if stor3 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                    revert with 0, 17
                if 50 * stor3 > !sub_801f89fc:
                    revert with 0, 17
                if arg2 > -1:
                    revert with 0, 17
                if block.timestamp > !arg2:
                    revert with 0, 17
                if stor7[msg.sender]:
                    if stor7[msg.sender] >= stor6.length:
                        revert with 0, 50
                    if stor7[msg.sender] >= stor6.length:
                        revert with 0, 50
                    stor6[stor7[msg.sender]].field_256++
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = (50 * stor3) + sub_801f89fc
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = 50 * stor3 / 3
                    emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
                else:
                    stor6.length++
                    if stor6.length + 1 < 1:
                        revert with 0, 17
                    if stor6.length >= stor6.length:
                        revert with 0, 50
                    stor6[stor6.length].field_0 = msg.sender
                    stor7[address(msg.sender)] = stor6.length
                    stor6[stor6.length].field_256++
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = (50 * stor3) + sub_801f89fc
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = 50 * stor3 / 3
                    emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
    else:
        if arg2 != 30:
            revert with 0, 'Variable _days must be 7 or 30'
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 != 7:
            if not ext_call.return_data[0]:
                if 0 > !sub_c2dd14af:
                    revert with 0, 17
                if arg2 > -1:
                    revert with 0, 17
                if block.timestamp > !arg2:
                    revert with 0, 17
                if stor7[msg.sender]:
                    if stor7[msg.sender] >= stor6.length:
                        revert with 0, 50
                    if stor7[msg.sender] >= stor6.length:
                        revert with 0, 50
                    stor6[stor7[msg.sender]].field_256++
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = sub_c2dd14af
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = 0
                    emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_c2dd14af, msg.sender);
                else:
                    stor6.length++
                    if stor6.length + 1 < 1:
                        revert with 0, 17
                    if stor6.length >= stor6.length:
                        revert with 0, 50
                    stor6[stor6.length].field_0 = msg.sender
                    stor7[address(msg.sender)] = stor6.length
                    stor6[stor6.length].field_256++
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = sub_c2dd14af
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = 0
                    emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_c2dd14af, msg.sender);
            else:
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 50:
                    if ext_call.return_data[0] and stor3 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * stor3 > !sub_c2dd14af:
                        revert with 0, 17
                    if arg2 > -1:
                        revert with 0, 17
                    if block.timestamp > !arg2:
                        revert with 0, 17
                    if stor7[msg.sender]:
                        if stor7[msg.sender] >= stor6.length:
                            revert with 0, 50
                        if stor7[msg.sender] >= stor6.length:
                            revert with 0, 50
                        stor6[stor7[msg.sender]].field_256++
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = (ext_call.return_data[0] * stor3) + sub_c2dd14af
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = ext_call.return_data[0] * stor3 / 3
                        emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_c2dd14af, msg.sender);
                    else:
                        stor6.length++
                        if stor6.length + 1 < 1:
                            revert with 0, 17
                        if stor6.length >= stor6.length:
                            revert with 0, 50
                        stor6[stor6.length].field_0 = msg.sender
                        stor7[address(msg.sender)] = stor6.length
                        stor6[stor6.length].field_256++
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = (ext_call.return_data[0] * stor3) + sub_c2dd14af
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = ext_call.return_data[0] * stor3 / 3
                        emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_c2dd14af, msg.sender);
                else:
                    if stor3 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                        revert with 0, 17
                    if 50 * stor3 > !sub_c2dd14af:
                        revert with 0, 17
                    if arg2 > -1:
                        revert with 0, 17
                    if block.timestamp > !arg2:
                        revert with 0, 17
                    if stor7[msg.sender]:
                        if stor7[msg.sender] >= stor6.length:
                            revert with 0, 50
                        if stor7[msg.sender] >= stor6.length:
                            revert with 0, 50
                        stor6[stor7[msg.sender]].field_256++
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = (50 * stor3) + sub_c2dd14af
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = 50 * stor3 / 3
                        emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_c2dd14af, msg.sender);
                    else:
                        stor6.length++
                        if stor6.length + 1 < 1:
                            revert with 0, 17
                        if stor6.length >= stor6.length:
                            revert with 0, 50
                        stor6[stor6.length].field_0 = msg.sender
                        stor7[address(msg.sender)] = stor6.length
                        stor6[stor6.length].field_256++
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = (50 * stor3) + sub_c2dd14af
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = 50 * stor3 / 3
                        emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_c2dd14af, msg.sender);
        else:
            if not ext_call.return_data[0]:
                if 0 > !sub_801f89fc:
                    revert with 0, 17
                if arg2 > -1:
                    revert with 0, 17
                if block.timestamp > !arg2:
                    revert with 0, 17
                if stor7[msg.sender]:
                    if stor7[msg.sender] >= stor6.length:
                        revert with 0, 50
                    if stor7[msg.sender] >= stor6.length:
                        revert with 0, 50
                    stor6[stor7[msg.sender]].field_256++
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = sub_801f89fc
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                    stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = 0
                    emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
                else:
                    stor6.length++
                    if stor6.length + 1 < 1:
                        revert with 0, 17
                    if stor6.length >= stor6.length:
                        revert with 0, 50
                    stor6[stor6.length].field_0 = msg.sender
                    stor7[address(msg.sender)] = stor6.length
                    stor6[stor6.length].field_256++
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = sub_801f89fc
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                    stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = 0
                    emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
            else:
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 50:
                    if ext_call.return_data[0] and stor3 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if ext_call.return_data[0] * stor3 > !sub_801f89fc:
                        revert with 0, 17
                    if arg2 > -1:
                        revert with 0, 17
                    if block.timestamp > !arg2:
                        revert with 0, 17
                    if stor7[msg.sender]:
                        if stor7[msg.sender] >= stor6.length:
                            revert with 0, 50
                        if stor7[msg.sender] >= stor6.length:
                            revert with 0, 50
                        stor6[stor7[msg.sender]].field_256++
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = (ext_call.return_data[0] * stor3) + sub_801f89fc
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = ext_call.return_data[0] * stor3 / 3
                        emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
                    else:
                        stor6.length++
                        if stor6.length + 1 < 1:
                            revert with 0, 17
                        if stor6.length >= stor6.length:
                            revert with 0, 50
                        stor6[stor6.length].field_0 = msg.sender
                        stor7[address(msg.sender)] = stor6.length
                        stor6[stor6.length].field_256++
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = (ext_call.return_data[0] * stor3) + sub_801f89fc
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = ext_call.return_data[0] * stor3 / 3
                        emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
                else:
                    if stor3 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                        revert with 0, 17
                    if 50 * stor3 > !sub_801f89fc:
                        revert with 0, 17
                    if arg2 > -1:
                        revert with 0, 17
                    if block.timestamp > !arg2:
                        revert with 0, 17
                    if stor7[msg.sender]:
                        if stor7[msg.sender] >= stor6.length:
                            revert with 0, 50
                        if stor7[msg.sender] >= stor6.length:
                            revert with 0, 50
                        stor6[stor7[msg.sender]].field_256++
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1280 = (50 * stor3) + sub_801f89fc
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_1792 = stor6[stor7[msg.sender]].field_256
                        stor[(9 * stor6[stor7[msg.sender]].field_256) + sha3((2 * stor7[msg.sender]) + ('name', 'stor6', 6) + 1)].field_2048 = 50 * stor3 / 3
                        emit Staked(arg1, arg2, stor7[msg.sender], block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
                    else:
                        stor6.length++
                        if stor6.length + 1 < 1:
                            revert with 0, 17
                        if stor6.length >= stor6.length:
                            revert with 0, 50
                        stor6[stor6.length].field_0 = msg.sender
                        stor7[address(msg.sender)] = stor6.length
                        stor6[stor6.length].field_256++
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_0 = msg.sender
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_256 = arg1
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_512 = arg2
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_768 = block.timestamp
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1024 = block.timestamp + arg2
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1280 = (50 * stor3) + sub_801f89fc
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1536 = 0
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_1792 = 0
                        stor[(9 * stor6[stor6.length].field_256) + sha3((2 * stor6.length) + ('name', 'stor6', 6) + 1)].field_2048 = 50 * stor3 / 3
                        emit Staked(arg1, arg2, stor6.length, block.timestamp, block.timestamp + arg2, sub_801f89fc, msg.sender);
    call 0x277819bf69667b48af57abc52dddcb92ab6a2c45.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
