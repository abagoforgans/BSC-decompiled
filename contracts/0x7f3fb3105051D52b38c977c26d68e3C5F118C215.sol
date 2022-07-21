contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 184
uint32 stor1; offset 160
uint32 viewRandomResult; offset 160
address pancakeSwapLotteryAddress;
uint256 viewLatestLotteryId;

function randomResult() payable {
    return viewRandomResult
}

function pancakeSwapLottery() payable {
    return pancakeSwapLotteryAddress
}

function owner() payable {
    return owner
}

function viewRandomResult() payable {
    return viewRandomResult
}

function latestLotteryId() payable {
    return viewLatestLotteryId
}

function viewLatestLotteryId() payable {
    return viewLatestLotteryId
}

function _fallback() payable {
    revert
}

function sub_9a85cafa(?) payable {
    require calldata.size - 4 >= 32
    viewLatestLotteryId = arg1
}

function getRandomNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor1.field_160 % 16777216 = 1111111
    uint8(stor1.field_184) = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLotteryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pancakeSwapLotteryAddress = arg1
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



}
