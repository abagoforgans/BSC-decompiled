contract main {




// =====================  Runtime code  =====================


const lockDuration = (240 * 24 * 3600)

const unlockRate = 7000

const tokenAddress = 0xbb5a9898804319f8f78f9720183da9c81a41b1c8

const tokensLocked = 7000 * 10^18


address owner;
uint256 lastClaimedTime;
uint256 deployTime;

function lastClaimedTime() payable {
    return lastClaimedTime
}

function deployTime() payable {
    return deployTime
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getPendingUnlocked() payable {
    require lastClaimedTime <= block.timestamp
    require (49000000 * 10^18 * block.timestamp) - (49000000 * 10^18 * lastClaimedTime) / 49000000 * 10^18 == block.timestamp - lastClaimedTime
    return ((49000000 * 10^18 * block.timestamp) - (49000000 * 10^18 * lastClaimedTime) / 240 * 24 * 3600 / 10000)
}

function transferAnyERC20Tokens(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    if arg1 == 0xbb5a9898804319f8f78f9720183da9c81a41b1c8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe43616e6e6f74207472616e73666572206f75742072657761726420746f6b656e,
                    mem[197 len 31]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function claim() payable {
    require msg.sender == owner
    require lastClaimedTime <= block.timestamp
    require (49000000 * 10^18 * block.timestamp) - (49000000 * 10^18 * lastClaimedTime) / 49000000 * 10^18 == block.timestamp - lastClaimedTime
    require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
    call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xbb5a9898804319f8f78f9720183da9c81a41b1c8)
    if ext_call.return_data[0] >= (49000000 * 10^18 * block.timestamp) - (49000000 * 10^18 * lastClaimedTime) / 240 * 24 * 3600 / 10000:
        call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args owner, (49000000 * 10^18 * block.timestamp) - (49000000 * 10^18 * lastClaimedTime) / 240 * 24 * 3600 / 10000
    else:
        call 0xbb5a9898804319f8f78f9720183da9c81a41b1c8.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Could not transfer Tokens.'
    lastClaimedTime = block.timestamp
}



}
