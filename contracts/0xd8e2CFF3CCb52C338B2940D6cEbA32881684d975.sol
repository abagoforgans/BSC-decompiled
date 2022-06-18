contract main {




// =====================  Runtime code  =====================


const decimals = 18

const getCurrentBlock = block.number


address owner;
uint256 stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
address sub_eff9b45fAddress;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 isInitialized;
uint256 sub_47a704c8;
uint256 stakingEndBlock;
uint256 unStakingBlock;
uint256 bonusEndBlock;
uint256 startBlock;
uint256 lastRewardBlock;
uint8 stor21;
array of address rewardTokens;
address stakedTokenAddress;
uint256 sub_f1283903;
uint256 sub_ad505aeb;
uint256 sub_b7be539c;
uint256 sub_53e7a8c0;
mapping of address userList;
mapping of struct userInfo;
mapping of uint8 stor31;

function sub_036bf976(?) payable {
    return sub_b7be539c
}

function stakingEndBlock() payable {
    return stakingEndBlock
}

function totalSupply() payable {
    return totalSupply
}

function unStakingBlock() payable {
    return unStakingBlock
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024,
           userInfo[arg1].field_1280,
           userInfo[arg1].field_1536,
           userInfo[arg1].field_1792,
           userInfo[arg1].field_2048,
           userInfo[arg1].field_2304,
           userInfo[arg1].field_2560,
           userInfo[arg1].field_2816,
           userInfo[arg1].field_3072,
           userInfo[arg1].field_3328,
           userInfo[arg1].field_3584,
           userInfo[arg1].field_3840,
           userInfo[arg1].field_4096,
           userInfo[arg1].field_4352,
           userInfo[arg1].field_4608,
           userInfo[arg1].field_4864
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function isInitialized() payable {
    return bool(isInitialized)
}

function stakingBlock() payable {
    return sub_47a704c8
}

function sub_47a704c8(?) payable {
    return sub_47a704c8
}

function startBlock() payable {
    return startBlock
}

function sub_53e7a8c0(?) payable {
    return sub_53e7a8c0
}

function sub_62ddf40f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userInfo[address(arg1)].field_4608
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_758ba529(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor31[address(arg1)][arg2])
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardTokens.length
    return address(rewardTokens[arg1])
}

function owner() payable {
    return owner
}

function userList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(userList[arg1])
}

function lastRewardBlock() payable {
    return lastRewardBlock
}

function sub_ad505aeb(?) payable {
    return sub_ad505aeb
}

function getStakingEndBlock() payable {
    return stakingEndBlock
}

function sub_b7be539c(?) payable {
    return sub_b7be539c
}

function stakedToken() payable {
    return stakedTokenAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e2340491(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return userInfo[address(arg1)].field_4352
}

function sub_eff9b45f(?) payable {
    return sub_eff9b45fAddress
}

function sub_f1283903(?) payable {
    return sub_f1283903
}

function _fallback() payable {
    revert
}

function sub_ab269474(?) payable {
    if 200 < sub_f1283903:
        revert with 0, 17
    return (-sub_f1283903 + 200)
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = block.number
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8c73bf35(?) payable {
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_f0f51c47(?) payable {
    if 0 >= rewardTokens.length:
        revert with 0, 50
    require ext_code.size(address(rewardTokens))
    staticcall address(rewardTokens).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_07504bed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, 1001100249
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3b5c1968(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == bool(arg1)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg2
    while idx <= arg3:
        mem[0] = idx
        mem[32] = sha3(address(arg4), 31)
        stor31[address(arg4)][idx] = uint8(bool(arg1))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_48d719b1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stakedTokenAddress)
    call stakedTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e516035b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), sub_eff9b45fAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    require ext_code.size(this.address)
    staticcall this.address.supportsInterface(bytes4 arg1) with:
            gas gas_remaining wei
           args Mask(32, 224, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_980df769(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_2304 > !userInfo[address(arg1)].field_2816:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 > !userInfo[address(arg1)].field_2560:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 > !userInfo[address(arg1)].field_2048:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 + userInfo[address(arg1)].field_2048 != 4:
        return 0
    return 1
}

function sub_5704dcdf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_2304 > !userInfo[address(arg1)].field_2816:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 > !userInfo[address(arg1)].field_2560:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 > !userInfo[address(arg1)].field_2048:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 + userInfo[address(arg1)].field_2048 != 4:
        return 1
    else:
        return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_c8796393(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_2304 > !userInfo[address(arg1)].field_2816:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 > !userInfo[address(arg1)].field_2560:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 > !userInfo[address(arg1)].field_2048:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 + userInfo[address(arg1)].field_2048 != 4:
        return userInfo[address(arg1)].field_0
    else:
        return 0
}

function sub_21eeff7b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_2304 > !userInfo[address(arg1)].field_2816:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 > !userInfo[address(arg1)].field_2560:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 > !userInfo[address(arg1)].field_2048:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 + userInfo[address(arg1)].field_2048 != 4:
        return userInfo[address(arg1)].field_256
    else:
        return 0
}

function sub_5c732143(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_2304 > !userInfo[address(arg1)].field_2816:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 > !userInfo[address(arg1)].field_2560:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 > !userInfo[address(arg1)].field_2048:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 + userInfo[address(arg1)].field_2048 != 4:
        return userInfo[address(arg1)].field_768
    else:
        return 0
}

function sub_bf1768ed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_2304 > !userInfo[address(arg1)].field_2816:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 > !userInfo[address(arg1)].field_2560:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 > !userInfo[address(arg1)].field_2048:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 + userInfo[address(arg1)].field_2048 != 4:
        return userInfo[address(arg1)].field_512
    else:
        return 0
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 23
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        require ext_code.size(address(rewardTokens[idx]))
        call address(rewardTokens[idx]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_11] == bool(mem[_11])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_0798dfa9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_2304 > !userInfo[address(arg1)].field_2816:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 > !userInfo[address(arg1)].field_2560:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 > !userInfo[address(arg1)].field_2048:
        revert with 0, 17
    if userInfo[address(arg1)].field_2304 + userInfo[address(arg1)].field_2816 + userInfo[address(arg1)].field_2560 + userInfo[address(arg1)].field_2048 != 4:
        return 0
    if block.number > userInfo[address(arg1)].field_4096:
        return 0
    if userInfo[address(arg1)].field_4096 < block.number:
        revert with 0, 17
    return (userInfo[address(arg1)].field_4096 - block.number)
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function emergencyRemoval(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor21:
        revert with 0, 'The pool is not removable'
    require ext_code.size(stakedTokenAddress)
    staticcall stakedTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Amount exceeds pool balance'
    if arg1:
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updateStartAndEndBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.number >= startBlock:
        revert with 0, 'Pool has started'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New startBlock must be lower than new endBlock'
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New startBlock must be higher than current block'
    if sub_47a704c8 > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking block exceeds start block'
    if stakingEndBlock > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End staking block exceeds bonus end block'
    startBlock = arg1
    bonusEndBlock = arg2
    lastRewardBlock = arg1
    emit NewStartAndEndBlocks(arg1, arg2);
}

function updateStakingBlocks(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > startBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking block exceeds start block'
    if arg1 > unStakingBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking block exceeds unstaking block'
    if block.number >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'New stakingBlock must be higher than current block'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking block exceeds end staking block'
    if arg2 > bonusEndBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'End staking block exceeds bonus end block'
    sub_47a704c8 = arg1
    stakingEndBlock = arg2
    emit NewStakingBlocks(arg1, arg2);
}

function sub_a6a6aff4(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ('cd', 4).length:
        revert with 0, 'HERORES_INVALID'
    if not address(cd[68]):
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(msg.sender, 31)
            stor31[msg.sender][cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[36]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = sha3(address(cd[68]), 31)
            stor31[address(cd[68])][cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[36]))
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function claimNFT(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1
    require arg1 != this.address
    if userInfo[msg.sender].field_2048 != 1:
        revert with 0, 'Need to stake LFW'
    if userInfo[msg.sender].field_2304 != 1:
        revert with 0, 'Need to stake NFT'
    if userInfo[msg.sender].field_2560 != 1:
        revert with 0, 'Need to stake Chest'
    if userInfo[msg.sender].field_2816 != 1:
        revert with 0, 'Need to stake BUSD'
    if userInfo[msg.sender].field_1280:
        revert with 0, 'You already claimed the LFW'
    if block.number < userInfo[msg.sender].field_4096:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unstaking for user not started (NFT)'
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, userInfo[msg.sender].field_4864
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if userInfo[msg.sender].field_1280 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_1280++
    userInfo[msg.sender].field_4608 = 1
    emit 0x7420d59a: userInfo[msg.sender].field_4864, msg.sender, arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_3b63df36(?) payable {
    mem[64] = 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[0] = msg.sender
    mem[32] = 30
    if userInfo[msg.sender].field_2048 != 1:
        revert with 0, 'Need to stake LFW'
    if userInfo[msg.sender].field_2304 != 1:
        revert with 0, 'Need to stake NFT'
    if userInfo[msg.sender].field_2560 != 1:
        revert with 0, 'Need to stake Chest'
    if userInfo[msg.sender].field_2816 != 1:
        revert with 0, 'Need to stake BUSD'
    if userInfo[msg.sender].field_1024:
        revert with 0, 'You already claimed the LFW'
    if block.number < userInfo[msg.sender].field_4096:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unstaking for user not started (LFW)'
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = 23
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = stor8
        require ext_code.size(address(rewardTokens[idx]))
        call address(rewardTokens[idx]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor8
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_26] == bool(mem[_26])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if userInfo[msg.sender].field_1024 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_1024++
    userInfo[msg.sender].field_4352 = 1
    emit Withdraw(msg.sender);
    stor1 = 1
}

function sub_ec49d87e(?) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if sub_f1283903 >= stor12:
        revert with 0, 'Exceed the pool limit'
    if arg1 != stor8:
        revert with 0, 'ERROR: 1000 LFW one deposit time'
    if userInfo[msg.sender].field_3840 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_3840++
    if userInfo[msg.sender].field_3840 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User exceed number of deposit LFW'
    if stakingEndBlock < sub_47a704c8:
        revert with 0, 17
    if block.number > !(stakingEndBlock - sub_47a704c8):
        revert with 0, 17
    userInfo[msg.sender].field_4096 = block.number + stakingEndBlock - sub_47a704c8
    if block.number < sub_47a704c8:
        revert with 0, 'Staking has not started'
    if arg1:
        if userInfo[msg.sender].field_512 > !arg1:
            revert with 0, 17
        userInfo[msg.sender].field_512 += arg1
        if not rewardTokens.length:
            revert with 0, 50
        require ext_code.size(address(rewardTokens))
        call address(rewardTokens).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[msg.sender].field_2048 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_2048++
    if sub_f1283903 > -2:
        revert with 0, 17
    sub_f1283903++
    emit 0x60826775: arg1, msg.sender
    stor1 = 1
}

function depositBUSD(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 != stor9:
        revert with 0, 'ERROR: 100 BUSD one deposit time'
    if sub_53e7a8c0 >= stor12:
        revert with 0, 'Exceed the pool limit'
    if userInfo[msg.sender].field_3072 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_3072++
    if userInfo[msg.sender].field_3072 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User exceed number of deposit BUSD'
    if stakingEndBlock < sub_47a704c8:
        revert with 0, 17
    if block.number > !(stakingEndBlock - sub_47a704c8):
        revert with 0, 17
    userInfo[msg.sender].field_4096 = block.number + stakingEndBlock - sub_47a704c8
    if block.number < sub_47a704c8:
        revert with 0, 'Staking has not started'
    if arg1:
        if userInfo[msg.sender].field_0 > !arg1:
            revert with 0, 17
        userInfo[msg.sender].field_0 += arg1
        require ext_code.size(stakedTokenAddress)
        call stakedTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[msg.sender].field_2816 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_2816++
    uint256(userList[stor28]) = msg.sender or Mask(96, 160, uint256(userList[stor28]))
    if sub_53e7a8c0 > -2:
        revert with 0, 17
    sub_53e7a8c0++
    emit 0xc43aa50e: arg1, msg.sender
    stor1 = 1
}

function sub_110dede8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require address(arg1)
    require address(arg1) != this.address
    if sub_b7be539c >= stor12:
        revert with 0, 'Exceed the pool limit'
    if userInfo[msg.sender].field_3584 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_3584++
    if userInfo[msg.sender].field_3584 > stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'User exceed number of deposit NFT'
    if stakingEndBlock < sub_47a704c8:
        revert with 0, 17
    if block.number > !(stakingEndBlock - sub_47a704c8):
        revert with 0, 17
    userInfo[msg.sender].field_4096 = block.number + stakingEndBlock - sub_47a704c8
    if block.number < sub_47a704c8:
        revert with 0, 'Staking has not started'
    if not msg.sender:
        revert with 0, 'Owner invalid address'
    if this.address == msg.sender:
        revert with 0, 'Owner invalid address'
    if not stor31[address(arg1)][arg2]:
        revert with 0, 'It is not Legend-based hero'
    require ext_code.size(address(arg1))
    staticcall address(arg1).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not an owner'
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    userInfo[msg.sender].field_4864 = arg2
    if userInfo[msg.sender].field_2304 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_2304++
    if userInfo[msg.sender].field_768 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_768++
    if sub_b7be539c > -2:
        revert with 0, 17
    sub_b7be539c++
    emit 0xb055aaec: arg2, msg.sender, address(arg1)
}

function sub_459e60d5(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 102] = this.address
    require ext_code.size(address(cd[4]))
    call address(cd[4]).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args address(this.address), sub_eff9b45fAddress, 160, (32 * ('cd', 36).length) + 192, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224, ('cd', 36).length, mem[128 len 32 * ('cd', 36).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * ('cd', 68).length], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6.length):
            if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6.length):
                if 31 < uint255(stor6.length) * 0.5:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor6.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 0, 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(uint255(stor6.length) * 0.5) + 192 len ceil32(uint255(stor6.length) * 0.5)] = mem[128 len ceil32(uint255(stor6.length) * 0.5)]
        if ceil32(uint255(stor6.length) * 0.5) > uint255(stor6.length) * 0.5:
            mem[ceil32(uint255(stor6.length) * 0.5) + (uint255(stor6.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length), data=mem[128 len ceil32(uint255(stor6.length) * 0.5)], mem[(2 * ceil32(uint255(stor6.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor6.length) * 0.5)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 0, 34
    if bool(stor6.length):
        if bool(stor6.length) == uint255(stor6.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6.length):
            if 31 < uint255(stor6.length) * 0.5:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while (uint255(stor6.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 0, 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function sub_696a3773(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 99 < 98 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[164] == bool(cd[164])
    require cd[196] == address(cd[196])
    if isInitialized:
        revert with 0, 'Already initialized'
    if sub_eff9b45fAddress != msg.sender:
        revert with 0, 'Not factory'
    if not address(cd[4]):
        revert with 0, 'Invalid address'
    if not address(cd[196]):
        revert with 0, 'Invalid address'
    isInitialized = 1
    stakedTokenAddress = address(cd[4])
    rewardTokens.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while rewardTokens.length > idx:
            uint256(rewardTokens[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * ('cd', 36).length) + 128 > idx:
            address(rewardTokens[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while rewardTokens.length > idx:
            uint256(rewardTokens[idx]) = 0
            idx = idx + 1
            continue 
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    startBlock = mem[ceil32(32 * ('cd', 36).length) + 129]
    if 1 >= ('cd', 68).length:
        revert with 0, 50
    bonusEndBlock = mem[ceil32(32 * ('cd', 36).length) + 161]
    if 1 >= ('cd', 100).length:
        revert with 0, 50
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    if mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130] >= mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 162]:
        revert with 0, 'Staking block exceeds end staking block'
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    sub_47a704c8 = mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 130]
    if 1 >= ('cd', 100).length:
        revert with 0, 50
    stakingEndBlock = mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 162]
    unStakingBlock = cd[132]
    stor21 = uint8(bool(cd[164]))
    lastRewardBlock = startBlock
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[196]):
        revert with 0, 'Ownable: new owner is the zero address'
    owner = address(cd[196])
    emit OwnershipTransferred(owner, address(cd[196]));
}

function sub_fa1b00bb(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require address(cd[4])
    require address(cd[4]) != this.address
    if 0 >= ('cd', 68).length:
        revert with 0, 50
    if mem[ceil32(32 * ('cd', 36).length) + 129] != stor10:
        revert with 0, 'Error: 5 box per 1 deposit time'
    if sub_ad505aeb >= stor12:
        revert with 0, 'Exceed the pool limit'
    mem[0] = msg.sender
    mem[32] = 30
    if userInfo[msg.sender].field_3328 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_3328++
    if userInfo[msg.sender].field_3328 > stor11:
        revert with 0, 'User exceed number of deposit chest'
    if stakingEndBlock < sub_47a704c8:
        revert with 0, 17
    if block.number > !(stakingEndBlock - sub_47a704c8):
        revert with 0, 17
    userInfo[msg.sender].field_4096 = block.number + stakingEndBlock - sub_47a704c8
    if block.number < sub_47a704c8:
        revert with 0, 'Staking has not started'
    if not msg.sender:
        revert with 0, 'Owner invalid address'
    if this.address == msg.sender:
        revert with 0, 'Owner invalid address'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'Marketplace: token and amount not match'
    if 0 >= ('cd', 36).length:
        revert with 0, 50
    if mem[128] != 1001100249:
        revert with 0, 'LFW1155: INVALID_CHEST'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] <= 0:
            revert with 0, 'Marketplace: item amount invalid'
        if idx >= mem[96]:
            revert with 0, 50
        _161 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _161
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).balanceOf(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, _161
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        if mem[_167] < mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            revert with 0, 'Marketplace: item balance insufficient'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x2eb2c2d600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    _182 = mem[ceil32(32 * ('cd', 36).length) + 97]
    mem[mem[64] + (32 * mem[96]) + 196] = mem[ceil32(32 * ('cd', 36).length) + 97]
    mem[mem[64] + (32 * mem[96]) + 228 len 32 * _182] = mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * _182]
    mem[mem[64] + 132] = (32 * mem[96]) + (32 * _182) + 224
    mem[mem[64] + (32 * mem[96]) + (32 * _182) + 228] = 0
    require ext_code.size(address(cd[4]))
    call address(cd[4]).safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 160, (32 * mem[96]) + 192, (32 * mem[96]) + (32 * _182) + 224, mem[96], mem[mem[64] + 196 len (32 * mem[96]) + (32 * _182) + 32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if userInfo[msg.sender].field_256 > !stor10:
        revert with 0, 17
    userInfo[msg.sender].field_256 += stor10
    if userInfo[msg.sender].field_2560 > -2:
        revert with 0, 17
    userInfo[msg.sender].field_2560++
    if sub_ad505aeb > -2:
        revert with 0, 17
    sub_ad505aeb++
    if 0 >= mem[96]:
        revert with 0, 50
    if 0 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
        revert with 0, 50
    _196 = mem[ceil32(32 * ('cd', 36).length) + 129]
    mem[mem[64]] = mem[128]
    emit 0x4173e1eb: mem[mem[64]], _196, msg.sender, address(cd[4])
}



}
