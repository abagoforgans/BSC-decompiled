contract main {




// =====================  Runtime code  =====================


#
#  - sub_16cb3055(?)
#
address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
uint256 endSnipeLimitPeriod;
uint256 launchedAt;
address uniswapV2PairAddress;
mapping of uint256 protected;
array of address sub_c2c30560;
uint256 protectionCount;
uint8 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
address mainAddress;
uint8 initialized; offset 160
address pairAddress;
uint256 sub_c07164d5;

function initialized() payable {
    return bool(initialized)
}

function protected(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return protected[arg1]
}

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function owner() payable {
    return owner
}

function protectionCount() payable {
    return protectionCount
}

function pair() payable {
    return pairAddress
}

function endSnipeLimitPeriod() payable {
    return endSnipeLimitPeriod
}

function launchedAt() payable {
    return launchedAt
}

function sub_c07164d5(?) payable {
    return sub_c07164d5
}

function sub_c2c30560(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c2c30560.length
    return address(sub_c2c30560[arg1])
}

function main() payable {
    return mainAddress
}

function _fallback() payable {
    revert
}

function reset() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    initialized = 0
}

function disableProtection() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9 = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_cea6604d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c07164d5 = arg1
}

function updateMaxTxn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = arg1
}

function setTokenOwner(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not initialized
    mainAddress = arg1
    pairAddress = arg2
    initialized = 1
}

function sub_1ccb64a9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mainAddress = address(arg1)
    pairAddress = address(arg2)
}

function setGasLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    stor11 = 10^9 * arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function protectWallet(address[] arg1, bool arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        require stor9
    idx = 0
    while idx < arg1.length:
        if not arg2:
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if protected[address(cd[((32 * idx) + arg1 + 36)])]:
                if not protectionCount:
                    revert with 0, 17
                protectionCount--
        else:
            if protectionCount == -1:
                revert with 0, 17
            protectionCount++
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = tx.origin
            mem[mem[64] + 32] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = 2
            emit 0x47e78c0c: tx.origin, address(cd[((32 * idx) + arg1 + 36)]), block.number, 2
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        if arg2:
            protected[address(cd[((32 * idx) + arg1 + 36)])] = block.number
        else:
            protected[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function onPreTransferCheck(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == mainAddress
    if not endSnipeLimitPeriod:
        if block.timestamp > !sub_c07164d5:
            revert with 0, 17
        endSnipeLimitPeriod = block.timestamp + sub_c07164d5
        launchedAt = block.timestamp
    if block.timestamp > endSnipeLimitPeriod:
        if protected[address(arg1)]:
            if initialized:
                if stor10 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if arg3 > 10^9 * stor10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if stor2[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if endSnipeLimitPeriod <= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
            stor2[address(arg1)] = block.number
            return 0
        else:
            return 0
    if pairAddress != arg1:
        if protected[address(arg1)]:
            if initialized:
                if stor10 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if arg3 > 10^9 * stor10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if stor2[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if endSnipeLimitPeriod <= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
            stor2[address(arg1)] = block.number
            return 0
        else:
            return 0
    if 30 > !launchedAt:
        revert with 0, 17
    if stor1[address(arg2)] <= launchedAt + 30:
        if 60 > !stor1[address(arg2)]:
            revert with 0, 17
        if stor1[address(arg2)] + 60 >= block.timestamp:
            revert with 0, 'Cooldown between txs'
    if 30 > !launchedAt:
        revert with 0, 17
    if stor1[tx.origin] <= launchedAt + 30:
        if 60 > !stor1[address(arg2)]:
            revert with 0, 17
        if stor1[address(arg2)] + 60 >= block.timestamp:
            revert with 0, 'Cooldown between txs'
    if block.gasprice > stor11:
        revert with 0, 'Too much gas, hit the brakes!'
    if arg2 == tx.origin:
        if block.timestamp <= stor1[tx.origin]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too many transactions in one block'
        if block.timestamp <= stor1[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too many transactions in one block'
        stor1[address(arg2)] = block.timestamp
        stor1[tx.origin] = block.timestamp
        if protected[address(arg1)]:
            if initialized:
                if stor10 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if arg3 > 10^9 * stor10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if stor2[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if endSnipeLimitPeriod <= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
            stor2[address(arg1)] = block.number
            return 0
        else:
            return 0
    if protected[address(arg2)]:
        if block.timestamp <= stor1[tx.origin]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too many transactions in one block'
        if block.timestamp <= stor1[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too many transactions in one block'
        stor1[address(arg2)] = block.timestamp
        stor1[tx.origin] = block.timestamp
        if protected[address(arg1)]:
            if initialized:
                if stor10 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if arg3 > 10^9 * stor10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if stor2[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if endSnipeLimitPeriod <= block.timestamp:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
            stor2[address(arg1)] = block.number
            return 0
        else:
            return 0
    protected[address(arg2)] = block.number
    sub_c2c30560.length++
    address(sub_c2c30560[sub_c2c30560.length]) = arg2
    if protectionCount == -1:
        revert with 0, 17
    protectionCount++
    emit 0x47e78c0c: tx.origin, address(arg2), block.number, 0
    if not protected[tx.origin]:
        protected[tx.origin] = block.number
        sub_c2c30560.length++
        uint256(sub_c2c30560[sub_c2c30560.length]) = tx.origin or Mask(96, 160, uint256(sub_c2c30560[sub_c2c30560.length]))
        if protectionCount == -1:
            revert with 0, 17
        protectionCount++
    if block.timestamp <= stor1[tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too many transactions in one block'
    if block.timestamp <= stor1[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Too many transactions in one block'
    stor1[address(arg2)] = block.timestamp
    stor1[tx.origin] = block.timestamp
    if protected[address(arg1)]:
        if initialized:
            if stor10 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                revert with 0, 17
            if arg3 > 10^9 * stor10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
            if stor2[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
            if endSnipeLimitPeriod <= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
        stor2[address(arg1)] = block.number
    return 1
}



}
