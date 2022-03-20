contract main {




// =====================  Runtime code  =====================


const chain = 1


address owner;
address tokenAddress;
address token_bAddress;
address sub_f01d17c3Address;
address gatewayVaultAddress;
address sub_8d7c7daaAddress;
array of uint256 name;
address validatorAddress;
uint256 fee;
uint256 claimFee;
address systemAddress;
mapping of uint256 balanceOf;
mapping of uint256 sub_78033380;
mapping of uint256 orders;

function name() {
    return name[0 len name.length]
}

function validator() {
    return validatorAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function sub_78033380(?) {
    require calldata.size - 4 >= 32
    return sub_78033380[arg1]
}

function sub_8d7c7daa(?) {
    return sub_8d7c7daaAddress
}

function owner() {
    return owner
}

function system() {
    return systemAddress
}

function claimFee() {
    return claimFee
}

function orders(uint256 arg1) {
    require calldata.size - 4 >= 32
    return orders[arg1]
}

function gatewayVault() {
    return gatewayVaultAddress
}

function fee() {
    return fee
}

function token_b() {
    return token_bAddress
}

function sub_f01d17c3(?) {
    return sub_f01d17c3Address
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ed5285bd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_8d7c7daaAddress = arg1
    return 1
}

function setSystem(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    systemAddress = arg1
    return 1
}

function setValidator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    validatorAddress = arg1
    return 1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if systemAddress != msg.sender:
        revert with 0, 'Caller is not the system'
    fee = arg1
    return 1
}

function setClaimFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if systemAddress != msg.sender:
        revert with 0, 'Caller is not the system'
    claimFee = arg1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address not allowed'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_dd8e5c22(?) {
    require calldata.size - 4 >= 32
    if systemAddress != msg.sender:
        revert with 0, 'Caller is not the system'
    require ext_code.size(validatorAddress)
    call validatorAddress.0x448bf7b4 with:
         gas gas_remaining wei
        args 1, sub_8d7c7daaAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    orders[ext_call.return_data[0]] = 2
    return 1
}

function sub_ecc1816f(?) {
    require calldata.size - 4 >= 32
    if systemAddress != msg.sender:
        revert with 0, 'Caller is not the system'
    require ext_code.size(validatorAddress)
    call validatorAddress.0x448bf7b4 with:
         gas gas_remaining wei
        args 1, sub_8d7c7daaAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    orders[ext_call.return_data[0]] = 1
    return 1
}

function claimToken() payable {
    if msg.value < claimFee:
        revert with 0, 'Insufficient fee'
    call validatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(validatorAddress)
    call validatorAddress.0x448bf7b4 with:
         gas gas_remaining wei
        args 1, sub_8d7c7daaAddress, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    orders[ext_call.return_data[0]] = 1
    return 1
}

function sub_af3ff127(?) payable {
    if msg.value < claimFee:
        revert with 0, 'Insufficient fee'
    call validatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(validatorAddress)
    call validatorAddress.0x448bf7b4 with:
         gas gas_remaining wei
        args 1, sub_8d7c7daaAddress, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    orders[ext_call.return_data[0]] = 2
    return 1
}

function swapToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.value < fee:
        revert with 0, 'Insufficient fee'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, gatewayVaultAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[msg.sender] += arg1
    call validatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Swap(arg1, msg.sender);
    return 0
}

function sub_a012b3cf(?) payable {
    require calldata.size - 4 >= 32
    if msg.value < fee:
        revert with 0, 'Insufficient fee'
    require ext_code.size(token_bAddress)
    call token_bAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(token_bAddress)
    call token_bAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_f01d17c3Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f01d17c3Address)
    call sub_f01d17c3Address.0x9c9d505a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args gatewayVaultAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[msg.sender] += arg1
    call validatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3b03d54e: arg1, msg.sender
    return 0
}

function sub_4d2ea84d(?) {
    require calldata.size - 4 >= 128
    if validatorAddress != msg.sender:
        revert with 0, 'Not validator'
    if not orders[arg1]:
        revert with 0, 'Wrong requestId'
    if sub_8d7c7daaAddress != arg2:
        revert with 0, 'Wrong foreign token'
    if arg4 <= sub_78033380[address(arg3)]:
        revert with 0, 'No BEP20 tokens deposit'
    sub_78033380[address(arg3)] = arg4
    require ext_code.size(gatewayVaultAddress)
    if orders[arg1] == 1:
        call gatewayVaultAddress.0xcd8065ad with:
             gas gas_remaining wei
            args address(arg3), arg4 - sub_78033380[address(arg3)]
    else:
        call gatewayVaultAddress.0xcd8065ad with:
             gas gas_remaining wei
            args this.address, arg4 - sub_78033380[address(arg3)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_f01d17c3Address, arg4 - sub_78033380[address(arg3)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f01d17c3Address)
        call sub_f01d17c3Address.0x67259fe with:
             gas gas_remaining wei
            args (arg4 - sub_78033380[address(arg3)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(token_bAddress)
        call token_bAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg4 - sub_78033380[address(arg3)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Claim((arg4 - sub_78033380[address(arg3)]), arg3, orders[arg1]);
    return 1
}



}
