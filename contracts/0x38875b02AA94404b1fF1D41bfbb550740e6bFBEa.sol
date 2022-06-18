contract main {




// =====================  Runtime code  =====================


address owner;
uint256 rewardTokensPerShare;
mapping of uint256 rewardDebt;

function rewardDebt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardDebt[arg1]
}

function owner() payable {
    return owner
}

function rewardTokensPerShare() payable {
    return rewardTokensPerShare
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function increaseRewardTokensPerShare(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardTokensPerShare > !arg1:
        revert with 0, 17
    rewardTokensPerShare += arg1
}

function setRewardDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardTokensPerShare and arg2 > -1 / rewardTokensPerShare:
        revert with 0, 17
    rewardDebt[address(arg1)] = rewardTokensPerShare * arg2 / 10^18
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

function decreaseRewardDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardTokensPerShare and arg2 > -1 / rewardTokensPerShare:
        revert with 0, 17
    if rewardDebt[address(arg1)] < rewardTokensPerShare * arg2 / 10^18:
        revert with 0, 17
    rewardDebt[address(arg1)] -= rewardTokensPerShare * arg2 / 10^18
}

function increaseRewardDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardTokensPerShare and arg2 > -1 / rewardTokensPerShare:
        revert with 0, 17
    if rewardDebt[address(arg1)] > !(rewardTokensPerShare * arg2 / 10^18):
        revert with 0, 17
    rewardDebt[address(arg1)] += rewardTokensPerShare * arg2 / 10^18
}



}
