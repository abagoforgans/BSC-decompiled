contract main {




// =====================  Runtime code  =====================


address owner;
address zoonTokenAddress;
mapping of struct userInfo;
array of struct poolInfo;
uint8 stor4;
uint256 startTime;
uint256 sub_826abe61;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, bool(poolInfo[arg1].field_512), poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, bool(userInfo[arg1].field_512), userInfo[arg1].field_768
}

function zoonToken() payable {
    return zoonTokenAddress
}

function paused() payable {
    return bool(stor4)
}

function startTime() payable {
    return startTime
}

function sub_826abe61(?) payable {
    return sub_826abe61
}

function owner() payable {
    return owner
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

function pause(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = uint8(arg1)
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTime:
        revert with 0, 'started'
    stor4 = 0
    startTime = block.timestamp
}

function updatePool(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_512 = uint8(arg3)
    poolInfo[arg1].field_256 = arg2
}

function addPool(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    storC257[stor3.length] = arg2
    storC257[stor3.length] = 1
    storC257[stor3.length] = 0
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

function sub_8c34f534(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(msg.sender)].field_256:
        revert with 0, 'deposited'
    if sub_826abe61 + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    if sub_826abe61 + startTime < block.timestamp:
        revert with 0, 'ended'
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_512:
        revert with 0, 'paused'
    if stor4:
        revert with 0, 'paused'
    require ext_code.size(zoonTokenAddress)
    call zoonTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), poolInfo[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not poolInfo[arg1].field_0:
        userInfo[address(msg.sender)].field_512 = 1
    else:
        userInfo[address(msg.sender)].field_256 = poolInfo[arg1].field_0
        userInfo[address(msg.sender)].field_768 = block.timestamp
        userInfo[address(msg.sender)].field_0 = arg1
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_0 + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_768 += poolInfo[arg1].field_0
    emit Stake(msg.sender, poolInfo[arg1].field_0, arg1);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(msg.sender)].field_256 <= 0:
        revert with 0, 'not staker'
    if userInfo[address(msg.sender)].field_512:
        revert with 0, 'claimed'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 + startTime < startTime:
        revert with 0, 'SafeMath: addition overflow'
    if poolInfo[arg1].field_256 + startTime >= block.timestamp:
        revert with 0, 'staking time'
    if poolInfo[arg1].field_256 + userInfo[address(msg.sender)].field_768 < userInfo[address(msg.sender)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if poolInfo[arg1].field_256 + userInfo[address(msg.sender)].field_768 >= block.timestamp:
        revert with 0, 'staking time'
    require ext_code.size(zoonTokenAddress)
    call zoonTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[address(msg.sender)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    userInfo[address(msg.sender)].field_512 = 1
    require arg1 < poolInfo.length
    if userInfo[address(msg.sender)].field_256 > poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_768 -= userInfo[address(msg.sender)].field_256
    emit Withdraw(msg.sender, arg1, userInfo[address(msg.sender)].field_256);
}



}
