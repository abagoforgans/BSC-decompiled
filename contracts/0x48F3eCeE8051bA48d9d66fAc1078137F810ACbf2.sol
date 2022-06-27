contract main {




// =====================  Runtime code  =====================


#
#  - enterStaking(uint256 arg1)
#
uint256 stor0;
uint8 stor1;
address stor1;
address owner; offset 8
address stakingTokenAddress;
uint256 totalStaked;
mapping of struct stakedBalance;

function getStakedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakedBalance[0][address(arg1)].field_0
}

function sub_3b91049b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return stakedBalance[0][address(arg1)].field_256
}

function paused() payable {
    return bool(uint8(stor1.field_0))
}

function stakingToken() payable {
    return stakingTokenAddress
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return stakedBalance[arg1][arg2].field_0, 
           stakedBalance[arg1][arg2].field_256,
           stakedBalance[arg1][arg2].field_512,
           stakedBalance[arg1][arg2].field_768
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

function withdrawInterest() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    stakedBalance[0][address(msg.sender)].field_512 = block.number
    stor0 = 1
}

function pausePool() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor1.field_0) = 1
    emit Paused(msg.sender);
    stor0 = 1
}

function sub_068cc514(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not uint8(stor1.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor1.field_0) = 0
    emit Unpaused(msg.sender);
    stor0 = 1
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

function sub_4f324610(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    if not stakedBalance[0][address(arg1)].field_256:
        stakedBalance[0][address(arg1)].field_256 = arg2
    stor0 = 1
}

function sub_d8646d33(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.number < stakedBalance[0][address(arg1)].field_512:
        revert with 'NH{q', 17
    if stakedBalance[0][address(arg1)].field_256 and block.number - stakedBalance[0][address(arg1)].field_512 > -1 / stakedBalance[0][address(arg1)].field_256:
        revert with 'NH{q', 17
    return ((block.number * stakedBalance[0][address(arg1)].field_256) - (stakedBalance[0][address(arg1)].field_512 * stakedBalance[0][address(arg1)].field_256))
}

function sub_377c58bf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = this.address
    mem[132] = 520 * 10^18
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 520 * 10^18
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = owner
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = address(this.address) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stakingTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor1.field_0), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call stakingTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor1.field_0), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, address(stor1.field_0), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, 121071934700 == bool(0, 121071934700)
            if not 0, 121071934700:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor0 = 1
}

function withdrawPrincipal() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if uint8(stor1.field_0):
        revert with 0, 'Pausable: paused'
    if stakedBalance[0][address(msg.sender)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staked balance must be greater than 0'
    mem[100] = this.address
    mem[132] = stakedBalance[0][address(msg.sender)].field_0
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), stakedBalance[0][address(msg.sender)].field_0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalStaked < stakedBalance[0][address(msg.sender)].field_0:
        revert with 'NH{q', 17
    totalStaked -= stakedBalance[0][address(msg.sender)].field_0
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = msg.sender
    mem[ceil32(return_data.size) + 196] = stakedBalance[0][address(msg.sender)].field_0
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = address(this.address) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(stakingTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, stakedBalance[0][address(msg.sender)].field_0, 0
    mem[ceil32(return_data.size) + 392] = 0
    call stakingTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, stakedBalance[0][address(msg.sender)].field_0, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), address(this.address) << 64, 0, msg.sender, stakedBalance[0][address(msg.sender)].field_0, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, stakedBalance[0][address(msg.sender)].field_32 == bool(0, stakedBalance[0][address(msg.sender)].field_32)
            if not 0, stakedBalance[0][address(msg.sender)].field_32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stakedBalance[0][address(msg.sender)].field_768 = block.number
    stakedBalance[0][address(msg.sender)].field_0 = 0
    stakedBalance[0][address(msg.sender)].field_256 = 0
    stakedBalance[0][address(msg.sender)].field_512 = block.number
    emit Staked(stakedBalance[0][address(msg.sender)].field_0, msg.sender);
    stor0 = 1
}



}
