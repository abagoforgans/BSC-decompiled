contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address poolOwners;
mapping of uint256 approvals;
mapping of uint256 deposits;

function approvals(address arg1, address arg2) {
    return approvals[arg1][arg2]
}

function poolOwners() {
    return poolOwners
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function disapprove(address arg1, uint256 arg2) {
    if not arg2:
        revert with 0, 'Cannot disapprove zero'
    if approvals[address(msg.sender)][address(arg1)] < arg2:
        revert with 0, 'Insufficient approved'
    require arg2 <= approvals[address(msg.sender)][address(arg1)]
    approvals[address(msg.sender)][address(arg1)] -= arg2
    emit 0x94f4f5b4: arg2, msg.sender, arg1
}

function approve(address arg1, uint256 arg2) {
    if not arg2:
        revert with 0, 'Cannot approve zero'
    if deposits[address(msg.sender)] < arg2:
        revert with 0, 'Insufficient balance'
    require approvals[address(msg.sender)][address(arg1)] + arg2 >= approvals[address(msg.sender)][address(arg1)]
    approvals[address(msg.sender)][address(arg1)] += arg2
    emit Approval(arg2, msg.sender, arg1);
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) {
    if tokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only internal token transfers can execute this method'
    mem[128 len arg3.length] = arg3[all]
    if not mem[128 len 20]:
        revert with 0, 'Empty depositor address in the token transfer'
    require deposits[mem[128 len 20]] + arg2 >= deposits[mem[128 len 20]]
    deposits[address(mem[128 len 20])] = deposits[mem[128 len 20]] + arg2
    emit Deposit(arg2, mem[128 len 20]);
}

function withdraw(address arg1, uint256 arg2) {
    if not arg2:
        revert with 0, 'Cannot withdraw zero'
    if deposits[address(msg.sender)] < arg2:
        revert with 0, 'Insufficient balance'
    require arg2 <= deposits[address(msg.sender)]
    deposits[address(msg.sender)] -= arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(arg2, msg.sender, arg1);
}

function spend(address arg1, address arg2, uint256 arg3) {
    if not arg3:
        revert with 0, 'Cannot spend zero'
    if approvals[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address isn't an authorised spender'
    if deposits[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Depositor has an insufficient balance'
    require arg3 <= approvals[address(arg1)][address(msg.sender)]
    approvals[address(arg1)][address(msg.sender)] -= arg3
    require arg3 <= deposits[address(arg1)]
    deposits[address(arg1)] -= arg3
    require ext_code.size(tokenAddress)
    if arg2:
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Spend(arg3, arg1, arg2);
    else:
        call tokenAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolOwners, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Spend(arg3, arg1, poolOwners);
}



}
