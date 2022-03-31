contract main {




// =====================  Runtime code  =====================


address owner;
address sub_fd4d246cAddress;
uint32 stor2; offset 64
uint256 stor2; offset 32
uint256 sub_e682966b;
big736 stor2;
address randomNumberConsumerAddress;
uint256 lotteryId;
mapping of uint256 randomNumber;
mapping of address players;
mapping of struct lastReward;
address NTFSAddress;
uint32 stor9;
address devAddress;
mapping of uint256 nFTMaxSupply;
mapping of uint256 nFTTotalSupply;
mapping of uint256 numbers;
mapping of struct indexs;

function indexs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return indexs[arg1].field_0
}

function NFTTotalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nFTTotalSupply[arg1]
}

function randomNumberConsumer() payable {
    return randomNumberConsumerAddress
}

function NTFS() payable {
    return NTFSAddress
}

function NFTMaxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return nFTMaxSupply[arg1]
}

function owner() payable {
    return owner
}

function dev() payable {
    return address(devAddress)
}

function lastReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastReward[arg1].field_0
}

function numbers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return numbers[arg1]
}

function getPlayer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(players[arg1])
}

function lotteryId() payable {
    return lotteryId
}

function sub_e682966b(?) payable {
    return sub_e682966b
}

function players(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(players[arg1])
}

function randomNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return randomNumber[arg1]
}

function getLastReward(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastReward[address(arg1)].field_0
}

function sub_fd4d246c(?) payable {
    return sub_fd4d246cAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRandom(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    randomNumberConsumerAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function syncNFTData() payable {
    idx = 1
    while uint8(idx) < 12:
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.0x869f7594 with:
                gas gas_remaining wei
               args uint8(idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        nFTMaxSupply[idx << 248] = ext_call.return_data[0]
        mem[100] = uint8(idx)
        require ext_code.size(NTFSAddress)
        staticcall NTFSAddress.0xbd85b039 with:
                gas gas_remaining wei
               args uint8(idx)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = uint8(idx)
        mem[32] = 11
        nFTTotalSupply[idx << 248] = ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function totalNFT() payable {
    mem[64] = 96
    idx = 1
    s = 0
    while uint8(idx) < 12:
        mem[0] = uint8(idx)
        mem[32] = 10
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = 30
        mem[_17 + 32] = 'SafeMath: subtraction overflow'
        if nFTTotalSupply[idx << 248] <= nFTMaxSupply[idx << 248]:
            if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s
            continue 
        _18 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _18 + 68] = mem[idx + _17 + 32]
            idx = idx + 32
            continue 
        mem[_18 + 68] = mem[_18 + 70 len 30]
        revert with memory
          from mem[64]
           len _18 + -mem[64] + 100
    return s
}

function randomToReward(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 1
    s = 0
    while uint8(idx) < 12:
        mem[0] = uint8(idx)
        mem[32] = 10
        _15 = mem[64]
        mem[64] = mem[64] + 64
        mem[_15] = 30
        mem[_15 + 32] = 'SafeMath: subtraction overflow'
        if nFTTotalSupply[idx << 248] <= nFTMaxSupply[idx << 248]:
            if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s
            continue 
        _19 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _19 + 68] = mem[idx + _15 + 32]
            idx = idx + 32
            continue 
        mem[_19 + 68] = mem[_19 + 70 len 30]
        revert with memory
          from mem[64]
           len _19 + -mem[64] + 100
    if s <= 0:
        revert with 0, 'no card left'
    if not s:
        revert with 0, 'SafeMath: modulo by zero'
    if (arg1 % s) + 1 < arg1 % s:
        revert with 0, 'SafeMath: addition overflow'
    return ((arg1 % s) + 1)
}

function getOrder(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 1
    s = 0
    while uint8(idx) < 12:
        mem[0] = uint8(idx)
        mem[32] = 10
        _25 = mem[64]
        mem[64] = mem[64] + 64
        mem[_25] = 30
        mem[_25 + 32] = 'SafeMath: subtraction overflow'
        if nFTTotalSupply[idx << 248] <= nFTMaxSupply[idx << 248]:
            if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248]:
                if arg1 > s:
                    if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 <= nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s:
                        return uint8(idx)
            if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s
            continue 
        _26 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _26 + 68] = mem[idx + _25 + 32]
            idx = idx + 32
            continue 
        mem[_26 + 68] = mem[_26 + 70 len 30]
        revert with memory
          from mem[64]
           len _26 + -mem[64] + 100
    return 0
}

function draw() payable {
    if not ext_code.hash(sub_fd4d246cAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_fd4d246cAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(devAddress), Mask(224, 0, stor2.field_32)
    mem[352 len 4] = uint32(stor2.field_64)
    call sub_fd4d246cAddress with:
       funct uint32(stor9)
         gas gas_remaining wei
        args Mask(736, 0, stor2.field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(stor2.field_64),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
    if lotteryId + 1 < lotteryId:
        revert with 0, 'SafeMath: addition overflow'
    lotteryId++
    uint256(players[stor4 + 1]) = msg.sender or Mask(96, 160, uint256(players[stor4 + 1]))
    require ext_code.size(randomNumberConsumerAddress)
    call randomNumberConsumerAddress.requestRandom(uint256 rg1) with:
         gas gas_remaining wei
        args lotteryId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lotteryResult(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if arg1 <= 0:
        revert with 0, 'random-not-found'
    if randomNumberConsumerAddress != msg.sender:
        revert with 0, 'Called only permitted by random'
    mem[0] = arg2
    randomNumber[arg2] = arg1
    mem[32] = 6
    if not address(players[arg2]):
        revert with 0, 'player is not 0'
    idx = 1
    s = 0
    while uint8(idx) < 12:
        mem[0] = uint8(idx)
        mem[32] = 10
        _23 = mem[64]
        mem[64] = mem[64] + 64
        mem[_23] = 30
        mem[_23 + 32] = 'SafeMath: subtraction overflow'
        if nFTTotalSupply[idx << 248] <= nFTMaxSupply[idx << 248]:
            if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + s
            continue 
        _27 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _27 + 68] = mem[idx + _23 + 32]
            idx = idx + 32
            continue 
        mem[_27 + 68] = mem[_27 + 70 len 30]
        revert with memory
          from mem[64]
           len _27 + -mem[64] + 100
    if s <= 0:
        revert with 0, 'no card left'
    _26 = mem[64]
    mem[64] = mem[64] + 64
    mem[_26] = 24
    mem[_26 + 32] = 'SafeMath: modulo by zero'
    if not s:
        revert with 0, 'SafeMath: modulo by zero'
    if (arg1 % s) + 1 < arg1 % s:
        revert with 0, 'SafeMath: addition overflow'
    idx = 1
    t = 0
    while uint8(idx) < 12:
        mem[0] = uint8(idx)
        mem[32] = 10
        _65 = mem[64]
        mem[64] = mem[64] + 64
        mem[_65] = 30
        mem[_65 + 32] = 'SafeMath: subtraction overflow'
        if nFTTotalSupply[idx << 248] <= nFTMaxSupply[idx << 248]:
            if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + t
            continue 
        _75 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _75 + 68] = mem[idx + _65 + 32]
            idx = idx + 32
            continue 
        mem[_75 + 68] = mem[_75 + 70 len 30]
        revert with memory
          from mem[64]
           len _75 + -mem[64] + 100
    if (arg1 % s) + 1 > t:
        revert with 0, 'number <= totalNFT()'
    mem[0] = arg2
    mem[32] = 12
    numbers[arg2] = (arg1 % s) + 1
    idx = 1
    t = 0
    while uint8(idx) < 12:
        mem[0] = uint8(idx)
        mem[32] = 10
        _120 = mem[64]
        mem[64] = mem[64] + 64
        mem[_120] = 30
        mem[_120 + 32] = 'SafeMath: subtraction overflow'
        if nFTTotalSupply[idx << 248] > nFTMaxSupply[idx << 248]:
            _130 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _130 + 68] = mem[idx + _120 + 32]
                idx = idx + 32
                continue 
            mem[_130 + 68] = mem[_130 + 70 len 30]
            revert with memory
              from mem[64]
               len _130 + -mem[64] + 100
        if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + t < t:
            revert with 0, 'SafeMath: addition overflow'
        if not nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248]:
            idx = idx + 1
            t = nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + t
            continue 
        if (arg1 % s) + 1 <= t:
            idx = idx + 1
            t = nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + t
            continue 
        if (arg1 % s) + 1 > nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + t:
            if nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = nFTMaxSupply[idx << 248] - nFTTotalSupply[idx << 248] + t
            continue 
        indexs[arg2].field_0 = uint8(idx)
        indexs[arg2].field_8 = 0
        if uint8(idx) > 11:
            revert with 0, 'index <= 11'
        if nFTTotalSupply[idx << 248] >= nFTMaxSupply[idx << 248]:
            revert with 0, 'Max cards minted'
        require ext_code.size(NTFSAddress)
        call NTFSAddress.0x731133e9 with:
             gas gas_remaining wei
            args address(players[arg2]), idx << 248, 1, 128, 0, mem[mem[64] + 164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if nFTTotalSupply[idx << 248] + 1 < nFTTotalSupply[idx << 248]:
            revert with 0, 'SafeMath: addition overflow'
        nFTTotalSupply[idx << 248]++
        emit NFTMint(address(players[arg2]), uint8(idx));
        lastReward[address(stor6[arg2])].field_0 = uint8(idx)
        lastReward[address(stor6[arg2])].field_8 = 0
    indexs[arg2].field_0 = 0
    if nFTTotalSupply[0] >= nFTMaxSupply[0]:
        revert with 0, 'Max cards minted'
    require ext_code.size(NTFSAddress)
    call NTFSAddress.0x731133e9 with:
         gas gas_remaining wei
        args address(players[arg2]), 0, 1, 128, 0, mem[mem[64] + 164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if nFTTotalSupply[0] + 1 < nFTTotalSupply[0]:
        revert with 0, 'SafeMath: addition overflow'
    nFTTotalSupply[0]++
    emit NFTMint(address(players[arg2]), 0);
    lastReward[address(stor6[arg2])].field_0 = 0
}



}
