contract main {




// =====================  Runtime code  =====================


address owner;
address airdropTokenAddress;
address adminAddress;
uint256 totalTokensWithdrawn;
mapping of uint8 stor4;
mapping of uint256 sub_5ab7e6c7;

function airdropToken() payable {
    return airdropTokenAddress
}

function sub_5ab7e6c7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5ab7e6c7[arg1]
}

function owner() payable {
    return owner
}

function sub_bd8d8c32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor4[arg1])
}

function totalTokensWithdrawn() payable {
    return totalTokensWithdrawn
}

function admin() payable {
    return adminAddress
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

function withdrawAnyToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setWhitelist(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 'Invalid params'
    idx = 0
    while idx < arg1.length:
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if idx >= arg1.length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        sub_5ab7e6c7[address(cd[((32 * idx) + arg1 + 36)])] = cd[((32 * idx) + arg2 + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function withdrawTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Require that message sender is tx-origin.'
    if sub_5ab7e6c7[address(msg.sender)] <= 0:
        revert with 0, 'Not eligible to claim tokens!'
    if stor4[address(msg.sender)]:
        revert with 0, 'Already claimed!'
    stor4[address(msg.sender)] = 1
    require ext_code.size(airdropTokenAddress)
    call airdropTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer status is false.'
    if totalTokensWithdrawn > -arg1 - 1:
        revert with 'NH{q', 17
    if totalTokensWithdrawn + arg1 < totalTokensWithdrawn:
        revert with 0, 'SafeMath: addition overflow'
    totalTokensWithdrawn += arg1
    emit 0xb82d2a7d: msg.sender, arg1
}



}
