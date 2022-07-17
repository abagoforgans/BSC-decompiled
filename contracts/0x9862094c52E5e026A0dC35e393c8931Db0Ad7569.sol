contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address rewardTokenAddress;
mapping of struct stor102;
mapping of uint256 stor103;
uint256 stor104;
array of struct stor105;

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
}

function unstake() payable {
    # nil
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

function sub_ebdc17fd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor103[address(arg1)] < 1:
        revert with 0, 17
    if stor102[stor103[address(arg1)] - 1].field_256 > 0x883148f5cb1270b85273b667ae1cfdf5d70ac5a1ecccd54fe15c297df3:
        revert with 0, 17
    return (Mask(128, 128, 8760 * 24 * 3600 * stor102[stor103[address(arg1)] - 1].field_256) >> 128)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    rewardTokenAddress = arg1
}

function stakedTokensOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 105
    mem[64] = (32 * stor105[address(arg1)].field_0) + 128
    mem[96] = stor105[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor105[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 105)
        _12 = mem[64]
        mem[64] = mem[64] + 64
        mem[_12] = stor105[address(arg1)][idx].field_0
        mem[_12 + 32] = stor105[address(arg1)][idx].field_256
        mem[s] = _12
        s = s + 32
        idx = idx + 1
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    _14 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _14:
        _19 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_19 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _13 + (64 * _14) + -mem[64] + 64
}

function sub_871eeda8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor103[address(arg1)]:
        if stor104 == -1:
            revert with 0, 17
        stor104++
        stor103[address(arg1)] = stor104
        if stor104 < 1:
            revert with 0, 17
        stor102[stor104 - 1].field_0 = address(arg1)
        if arg2 and 0x100000000000000000000000000000000 > -1 / arg2:
            revert with 0, 17
        if stor104 < 1:
            revert with 0, 17
        stor102[stor104 - 1].field_256 = arg2 << 128 / 8760 * 24 * 3600
        stor102[stor104 - 1].field_768 = block.timestamp
    else:
        if stor103[address(arg1)] < 1:
            revert with 0, 17
        if block.timestamp > stor102[stor103[address(arg1)] - 1].field_768:
            if block.timestamp < stor102[stor103[address(arg1)] - 1].field_768:
                revert with 0, 17
            if stor102[stor103[address(arg1)] - 1].field_256 and block.timestamp - stor102[stor103[address(arg1)] - 1].field_768 > -1 / stor102[stor103[address(arg1)] - 1].field_256:
                revert with 0, 17
            if stor102[stor103[address(arg1)] - 1].field_512 > !((block.timestamp * stor102[stor103[address(arg1)] - 1].field_256) - (stor102[stor103[address(arg1)] - 1].field_768 * stor102[stor103[address(arg1)] - 1].field_256)):
                revert with 0, 17
            stor102[stor103[address(arg1)] - 1].field_512 = stor102[stor103[address(arg1)] - 1].field_512 + (block.timestamp * stor102[stor103[address(arg1)] - 1].field_256) - (stor102[stor103[address(arg1)] - 1].field_768 * stor102[stor103[address(arg1)] - 1].field_256)
            stor102[stor103[address(arg1)] - 1].field_768 = block.timestamp
        if arg2 and 0x100000000000000000000000000000000 > -1 / arg2:
            revert with 0, 17
        stor102[stor103[address(arg1)] - 1].field_256 = arg2 << 128 / 8760 * 24 * 3600
}

function stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor103[address(arg1)] < 1:
        revert with 0, 17
    if 0 == stor102[stor103[address(arg1)] - 1].field_256:
        revert with 0, 'No staking for this type'
    if block.timestamp > stor102[stor103[address(arg1)] - 1].field_768:
        if block.timestamp < stor102[stor103[address(arg1)] - 1].field_768:
            revert with 0, 17
        if stor102[stor103[address(arg1)] - 1].field_256 and block.timestamp - stor102[stor103[address(arg1)] - 1].field_768 > -1 / stor102[stor103[address(arg1)] - 1].field_256:
            revert with 0, 17
        if stor102[stor103[address(arg1)] - 1].field_512 > !((block.timestamp * stor102[stor103[address(arg1)] - 1].field_256) - (stor102[stor103[address(arg1)] - 1].field_768 * stor102[stor103[address(arg1)] - 1].field_256)):
            revert with 0, 17
        stor102[stor103[address(arg1)] - 1].field_512 = stor102[stor103[address(arg1)] - 1].field_512 + (block.timestamp * stor102[stor103[address(arg1)] - 1].field_256) - (stor102[stor103[address(arg1)] - 1].field_768 * stor102[stor103[address(arg1)] - 1].field_256)
        stor102[stor103[address(arg1)] - 1].field_768 = block.timestamp
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor102[stor103[address(arg1)] - 1].field_1024 == -1:
        revert with 0, 17
    stor102[stor103[address(arg1)] - 1].field_1024++
    if stor102[stor103[address(arg1)] - 1][5][msg.sender].field_0 == -1:
        revert with 0, 17
    stor102[stor103[address(arg1)] - 1][5][msg.sender].field_0++
    if stor102[stor103[address(arg1)] - 1].field_512 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in an int256'
    if stor102[stor103[address(arg1)] - 1][6][msg.sender].field_0 < stor102[stor103[address(arg1)] - 1].field_512 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor102[stor103[address(arg1)] - 1].field_512 >= 0:
        revert with 0, 17
    if stor102[stor103[address(arg1)] - 1].field_512 < 0 and stor102[stor103[address(arg1)] - 1][6][msg.sender].field_0 > stor102[stor103[address(arg1)] - 1].field_512 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    stor102[stor103[address(arg1)] - 1][6][msg.sender].field_0 -= stor102[stor103[address(arg1)] - 1].field_512
    stor105[msg.sender].field_0++
    stor105[msg.sender][stor105[msg.sender].field_0].field_0 = arg1
    stor105[msg.sender][stor105[msg.sender].field_0].field_256 = arg2
}

function claimReward() payable {
    idx = 0
    s = 0
    while idx < stor104:
        if block.timestamp > stor102[idx].field_768:
            if block.timestamp < stor102[idx].field_768:
                revert with 0, 17
            if stor102[idx].field_256 and block.timestamp - stor102[idx].field_768 > -1 / stor102[idx].field_256:
                revert with 0, 17
            if stor102[idx].field_512 > !((block.timestamp * stor102[idx].field_256) - (stor102[idx].field_768 * stor102[idx].field_256)):
                revert with 0, 17
            stor102[idx].field_512 = stor102[idx].field_512 + (block.timestamp * stor102[idx].field_256) - (stor102[idx].field_768 * stor102[idx].field_256)
            stor102[idx].field_768 = block.timestamp
        if stor102[idx].field_512 and stor102[idx][5][address(msg.sender)].field_0 > -1 / stor102[idx].field_512:
            revert with 0, 17
        if stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in an int256'
        if stor102[idx][6][address(msg.sender)].field_0 > (-1 * stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0 >= 0:
            revert with 0, 17
        if stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0 < 0 and stor102[idx][6][address(msg.sender)].field_0 < (-1 * stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if (stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0) + stor102[idx][6][address(msg.sender)].field_0 < 0:
            revert with 0, 'SafeCast: value must be positive'
        if Mask(128, 128, (stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0) + stor102[idx][6][address(msg.sender)].field_0) >> 128 < stor102[idx][7][address(msg.sender)].field_0:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = sha3(idx, 102) + 7
        if stor102[idx][7][msg.sender].field_0 > !((Mask(128, 128, (stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0) + stor102[idx][6][address(msg.sender)].field_0) >> 128) - stor102[idx][7][address(msg.sender)].field_0):
            revert with 0, 17
        stor102[idx][7][msg.sender].field_0 = stor102[idx][7][msg.sender].field_0 + (Mask(128, 128, (stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0) + stor102[idx][6][address(msg.sender)].field_0) >> 128) - stor102[idx][7][address(msg.sender)].field_0
        if s > !((Mask(128, 128, (stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0) + stor102[idx][6][address(msg.sender)].field_0) >> 128) - stor102[idx][7][address(msg.sender)].field_0):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (Mask(128, 128, (stor102[idx].field_512 * stor102[idx][5][address(msg.sender)].field_0) + stor102[idx][6][address(msg.sender)].field_0) >> 128) - stor102[idx][7][address(msg.sender)].field_0
        continue 
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rewardOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < stor104:
        if block.timestamp < stor102[idx].field_768:
            revert with 0, 17
        if stor102[idx].field_256 and block.timestamp - stor102[idx].field_768 > -1 / stor102[idx].field_256:
            revert with 0, 17
        if stor102[idx].field_512 > !((block.timestamp * stor102[idx].field_256) - (stor102[idx].field_768 * stor102[idx].field_256)):
            revert with 0, 17
        if stor102[idx].field_512 + (block.timestamp * stor102[idx].field_256) - (stor102[idx].field_768 * stor102[idx].field_256) and stor102[idx][5][address(arg1)].field_0 > -1 / stor102[idx].field_512 + (block.timestamp * stor102[idx].field_256) - (stor102[idx].field_768 * stor102[idx].field_256):
            revert with 0, 17
        if (stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) - (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeCast: value doesn't fit in an int256'
        if stor102[idx][6][address(arg1)].field_0 > (-1 * stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (-1 * block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) + (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and (stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) - (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) >= 0:
            revert with 0, 17
        if (stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) - (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) < 0 and stor102[idx][6][address(arg1)].field_0 < (-1 * stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (-1 * block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) + (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if (stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) - (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) + stor102[idx][6][address(arg1)].field_0 < 0:
            revert with 0, 'SafeCast: value must be positive'
        mem[0] = arg1
        mem[32] = sha3(idx, 102) + 7
        if Mask(128, 128, (stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) - (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) + stor102[idx][6][address(arg1)].field_0) >> 128 < stor102[idx][7][address(arg1)].field_0:
            revert with 0, 17
        if s > !((Mask(128, 128, (stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) - (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) + stor102[idx][6][address(arg1)].field_0) >> 128) - stor102[idx][7][address(arg1)].field_0):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (Mask(128, 128, (stor102[idx].field_512 * stor102[idx][5][address(arg1)].field_0) + (block.timestamp * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) - (stor102[idx].field_768 * stor102[idx].field_256 * stor102[idx][5][address(arg1)].field_0) + stor102[idx][6][address(arg1)].field_0) >> 128) - stor102[idx][7][address(arg1)].field_0
        continue 
    return (s * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104 * stor104)
}

function sub_443ca8ef(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor103[address(cd[4])] < 1:
        revert with 0, 17
    mem[0] = stor103[address(cd[4])] - 1
    mem[32] = 102
    if 0 == stor102[stor103[address(cd[4])] - 1].field_256:
        revert with 0, 'No staking for this type'
    if block.timestamp <= stor102[stor103[address(cd[4])] - 1].field_768:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _92 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _92
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _92
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = msg.sender
            mem[32] = 105
            _101 = mem[64]
            mem[64] = mem[64] + 64
            mem[_101] = address(cd[4])
            if idx >= mem[96]:
                revert with 0, 50
            mem[_101 + 32] = mem[(32 * idx) + 128]
            stor105[address(msg.sender)].field_0++
            mem[0] = sha3(address(msg.sender), 105)
            stor105[address(msg.sender)][stor105[address(msg.sender)].field_0].field_0 = address(cd[4])
            stor105[address(msg.sender)][stor105[address(msg.sender)].field_0].field_256 = mem[_101 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if block.timestamp < stor102[stor103[address(cd[4])] - 1].field_768:
            revert with 0, 17
        if stor102[stor103[address(cd[4])] - 1].field_256 and block.timestamp - stor102[stor103[address(cd[4])] - 1].field_768 > -1 / stor102[stor103[address(cd[4])] - 1].field_256:
            revert with 0, 17
        if stor102[stor103[address(cd[4])] - 1].field_512 > !((block.timestamp * stor102[stor103[address(cd[4])] - 1].field_256) - (stor102[stor103[address(cd[4])] - 1].field_768 * stor102[stor103[address(cd[4])] - 1].field_256)):
            revert with 0, 17
        stor102[stor103[address(cd[4])] - 1].field_512 = stor102[stor103[address(cd[4])] - 1].field_512 + (block.timestamp * stor102[stor103[address(cd[4])] - 1].field_256) - (stor102[stor103[address(cd[4])] - 1].field_768 * stor102[stor103[address(cd[4])] - 1].field_256)
        stor102[stor103[address(cd[4])] - 1].field_768 = block.timestamp
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _95 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _95
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _95
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = msg.sender
            mem[32] = 105
            _106 = mem[64]
            mem[64] = mem[64] + 64
            mem[_106] = address(cd[4])
            if idx >= mem[96]:
                revert with 0, 50
            mem[_106 + 32] = mem[(32 * idx) + 128]
            stor105[address(msg.sender)].field_0++
            mem[0] = sha3(address(msg.sender), 105)
            stor105[address(msg.sender)][stor105[address(msg.sender)].field_0].field_0 = address(cd[4])
            stor105[address(msg.sender)][stor105[address(msg.sender)].field_0].field_256 = mem[_106 + 32]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if stor102[stor103[address(cd[4])] - 1].field_1024 > !mem[96]:
        revert with 0, 17
    stor102[stor103[address(cd[4])] - 1].field_1024 += mem[96]
    if stor102[stor103[address(cd[4])] - 1][5][msg.sender].field_0 > !mem[96]:
        revert with 0, 17
    stor102[stor103[address(cd[4])] - 1][5][msg.sender].field_0 += mem[96]
    if stor102[stor103[address(cd[4])] - 1].field_512 and mem[96] > -1 / stor102[stor103[address(cd[4])] - 1].field_512:
        revert with 0, 17
    if stor102[stor103[address(cd[4])] - 1].field_512 * mem[96] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 'SafeCast: value doesn't fit in an int256'
    if stor102[stor103[address(cd[4])] - 1][6][msg.sender].field_0 < (stor102[stor103[address(cd[4])] - 1].field_512 * mem[96]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor102[stor103[address(cd[4])] - 1].field_512 * mem[96] >= 0:
        revert with 0, 17
    if stor102[stor103[address(cd[4])] - 1].field_512 * mem[96] < 0 and stor102[stor103[address(cd[4])] - 1][6][msg.sender].field_0 > (stor102[stor103[address(cd[4])] - 1].field_512 * mem[96]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    stor102[stor103[address(cd[4])] - 1][6][msg.sender].field_0 += -1 * stor102[stor103[address(cd[4])] - 1].field_512 * mem[96]
}



}
