contract main {




// =====================  Runtime code  =====================


address owner;
uint256 balance;
mapping of uint256 rewards;
address rewardPoolAddress;
address sub_30ef1965Address;

function rewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function RewardPool() {
    return rewardPoolAddress
}

function getRewardPool() {
    return rewardPoolAddress
}

function sub_2fcd37f1(?) {
    return sub_30ef1965Address
}

function sub_30ef1965(?) {
    return sub_30ef1965Address
}

function owner() {
    return owner
}

function balance() {
    return balance
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPoolAddress = arg1
    return 1
}

function sub_e362e2f9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_30ef1965Address = address(arg1)
    return 1
}

function setReward(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewards[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_30ef1965Address)
    call sub_30ef1965Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
