contract main {




// =====================  Runtime code  =====================


#
#  - stake(uint256 arg1)
#  - refreshAutoStake()
#  - exit()
#
address owner;
address rewardPoolAddress;
address lpTokenAddress;
uint256 unit;
uint256 valuePerShare;
uint256 totalShares;
uint256 totalValue;
mapping of uint256 share;
address greylistEscrowAddress;

function share(address arg1) payable {
    require calldata.size - 4 >= 32
    return share[arg1]
}

function totalShares() payable {
    return totalShares
}

function greylistEscrow() payable {
    return greylistEscrowAddress
}

function lpToken() payable {
    return lpTokenAddress
}

function rewardPool() payable {
    return rewardPoolAddress
}

function owner() payable {
    return owner
}

function unit() payable {
    return unit
}

function valuePerShare() payable {
    return valuePerShare
}

function totalValue() payable {
    return totalValue
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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not valuePerShare:
        if unit <= 0:
            revert with 0, 'SafeMath: division by zero'
        if unit:
            return (0 / unit)
    else:
        if valuePerShare:
            if valuePerShare * share[address(arg1)] / valuePerShare != share[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if unit <= 0:
                revert with 0, 'SafeMath: division by zero'
            if unit:
                return (valuePerShare * share[address(arg1)] / unit)
    revert
}



}
