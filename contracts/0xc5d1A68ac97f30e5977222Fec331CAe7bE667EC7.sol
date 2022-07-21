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
mapping of uint8 stor5;
address uniswapV2PairAddress;
mapping of uint256 protected;
mapping of uint256 vested;
mapping of uint256 sub_d9eeb49d;
array of address sub_c2c30560;
uint256 protectionCount;
uint8 stor12;
uint256 stor13;
uint256 stor14;
address mainAddress;
uint256 sub_c07164d5;

function protected(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return protected[arg1]
}

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function vested(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vested[arg1]
}

function owner() payable {
    return owner
}

function protectionCount() payable {
    return protectionCount
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
    return sub_c2c30560[arg1]
}

function sub_d9eeb49d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_d9eeb49d[arg1]
}

function main() payable {
    return mainAddress
}

function _fallback() payable {
    revert
}

function addPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor5[address(arg1)] = 1
}

function disableProtection() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 0
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

function sub_1ccb64a9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mainAddress = address(arg1)
    stor5[address(arg2)] = 1
}

function setGasLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    stor14 = 10^9 * arg1
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

function sub_3d424753(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require not mainAddress
    if owner != address(arg1):
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
        emit OwnershipTransferred(owner, address(arg1));
        owner = address(arg1)
    mainAddress = address(arg2)
    stor5[address(arg3)] = 1
}

function sub_7d8caab4(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    require cd[68] == bool(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[36]:
        require stor12
    idx = 0
    while idx < ('cd', 4).length:
        if not cd[36]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if protected[address(cd[((32 * idx) + cd[4] + 36)])]:
                if not protectionCount:
                    revert with 0, 17
                protectionCount--
        else:
            if protectionCount == -1:
                revert with 0, 17
            protectionCount++
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = tx.origin
            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 64] = block.number
            mem[mem[64] + 96] = 2
            emit 0x47e78c0c: tx.origin, address(cd[((32 * idx) + cd[4] + 36)]), block.number, 2
            if cd[68]:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                vested[address(cd[((32 * idx) + cd[4] + 36)])] = cd[100]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 7
        if cd[36]:
            protected[address(cd[((32 * idx) + cd[4] + 36)])] = block.number
        else:
            protected[address(cd[((32 * idx) + cd[4] + 36)])] = 0
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
    if block.timestamp <= endSnipeLimitPeriod:
        if stor5[address(arg1)]:
            if block.gasprice > stor14:
                revert with 0, 'Too much gas, hit the brakes!'
            if arg2 != tx.origin:
                revert with 0, 'No indirect buys'
            if block.timestamp <= stor1[tx.origin]:
                revert with 0, 'Too many transactions in block'
            if block.timestamp <= stor1[address(arg2)]:
                revert with 0, 'Too many transactions in block'
            stor1[address(arg2)] = block.timestamp
            stor1[tx.origin] = block.timestamp
    if protected[address(arg1)]:
        if stor13 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
            revert with 0, 17
        if arg3 > 10^9 * stor13:
            if not vested[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
            if sub_d9eeb49d[address(arg1)] > !arg3:
                revert with 0, 17
            if sub_d9eeb49d[address(arg1)] + arg3 > vested[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
        else:
            if stor2[address(arg1)]:
                if not vested[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                if sub_d9eeb49d[address(arg1)] > !arg3:
                    revert with 0, 17
                if sub_d9eeb49d[address(arg1)] + arg3 > vested[address(arg1)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
            else:
                if endSnipeLimitPeriod <= block.timestamp:
                    if not vested[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
                    if sub_d9eeb49d[address(arg1)] > !arg3:
                        revert with 0, 17
                    if sub_d9eeb49d[address(arg1)] + arg3 > vested[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wallet protected, please contact support.'
        stor2[address(arg1)] = block.number
        if vested[address(arg1)]:
            if sub_d9eeb49d[address(arg1)] > !arg3:
                revert with 0, 17
            sub_d9eeb49d[address(arg1)] += arg3
    return 1
}



}
