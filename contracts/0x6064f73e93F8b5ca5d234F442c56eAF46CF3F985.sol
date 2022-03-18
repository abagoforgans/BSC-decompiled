contract main {




// =====================  Runtime code  =====================


#
#  - sub_1c1eeb5c(?)
#
address owner;
address contractsRegistryAddress;
address sub_e54845b6Address;
uint256 stor2;
address sub_8228c589Address;
uint256 stor3;
address sub_a26da02aAddress;
uint256 stor4;
address tokenContractAddress;
address governanceContractAddress;
address companyWalletAddress;
address sub_eb0cde1dAddress;
array of struct order;
mapping of uint256 inGroup;
mapping of uint256 sub_576401ba;
mapping of uint256 sub_0f9cb829;
mapping of uint256 sub_1a02859f;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor17;

function sub_0f9cb829(?) {
    require calldata.size - 4 >= 64
    return sub_0f9cb829[arg1][arg2]
}

function sub_14b8b9e5(?) {
    return sub_9de5e76a.length
}

function totalSupply() {
    return totalSupply
}

function sub_1a02859f(?) {
    require calldata.size - 4 >= 32
    return sub_1a02859f[arg1]
}

function companyWallet() {
    return companyWalletAddress
}

function inGroup(address arg1) {
    require calldata.size - 4 >= 32
    return inGroup[arg1]
}

function tokenContract() {
    return tokenContractAddress
}

function sub_576401ba(?) {
    require calldata.size - 4 >= 32
    return sub_576401ba[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_8228c589(?) {
    return address(sub_8228c589Address)
}

function owner() {
    return owner
}

function sub_9de5e76a(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_9de5e76a.length
    return sub_9de5e76a[arg1].field_0, sub_9de5e76a[arg1].field_256, sub_9de5e76a[arg1].field_768
}

function sub_a26da02a(?) {
    return address(sub_a26da02aAddress)
}

function governanceContract() {
    return governanceContractAddress
}

function getOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < order.length
    return order[arg1].field_0, 
           order[arg1].field_256,
           order[arg1].field_512,
           order[arg1].field_768,
           order[arg1].field_1024,
           order[arg1].field_1280,
           order[arg1].field_1536
}

function contractsRegistry() {
    return contractsRegistryAddress
}

function sub_e54845b6(?) {
    return address(sub_e54845b6Address)
}

function sub_e9519225(?) {
    return order.length
}

function sub_eb0cde1d(?) {
    return sub_eb0cde1dAddress
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

function sub_6d65828d(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require arg1 < sub_9de5e76a.length
    sub_9de5e76a[arg1].field_768 = arg2
}

function sub_50932cb5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address'
    sub_eb0cde1dAddress = arg1
}

function sub_421f0955(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require arg1 < sub_9de5e76a.length
    sub_9de5e76a[arg1].field_0 = arg2
    emit 0xe862582a: arg2, arg1
}

function setGovernanceContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address'
    governanceContractAddress = arg1
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

function withdraw() {
    if not stor17[msg.sender]:
        revert with 0, 'No ETH'
    stor17[msg.sender] = 0
    call msg.sender with:
       value stor17[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addGroup(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    sub_9de5e76a.length++
    require sub_9de5e76a.length < sub_9de5e76a.length + 1
    sub_9de5e76a[sub_9de5e76a.length].field_0 = arg1
    emit 0xe862582a: arg1, sub_9de5e76a.length
}

function setTokenContract(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Change address not allowed'
    if tokenContractAddress:
        revert with 0, 'Change address not allowed'
    tokenContractAddress = arg1
}

function sub_f24130dc(?) {
    require calldata.size - 4 >= 64
    if sub_eb0cde1dAddress != msg.sender:
        revert with 0, 'Not Gateway'
    if arg1 + sub_576401ba[arg2] < sub_576401ba[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    sub_576401ba[arg2] += arg1
    emit 0xa83b0bbd: arg1, this.address, arg2
}

function sub_65bdffee(?) {
    idx = order.length
    while idx:
        require idx - 1 < order.length
        mem[0] = 9
        if order[idx].field_0 != 4:
            idx = idx - 1
            continue 
        if order[idx].field_0 != msg.sender:
            idx = idx - 1
            continue 
        return (idx - 1)
    return 0
}

function sub_28ddd352(?) {
    idx = order.length
    while idx:
        require idx - 1 < order.length
        mem[0] = 9
        if order[idx].field_0 != 1:
            idx = idx - 1
            continue 
        if order[idx].field_0 != msg.sender:
            if order[idx].field_0 != msg.sender:
                idx = idx - 1
                continue 
        return (idx - 1)
    return 0
}

function sub_8ac7d79c(?) {
    require calldata.size - 4 >= 32
    require arg1 < order.length
    if order[arg1].field_1536 != msg.sender:
        revert with 0, 'Not a confirmatory'
    if order[arg1].field_1024:
        order[arg1].field_1280 = 1
    else:
        if order[arg1].field_512 + balanceOf[stor9[arg1].field_256] < balanceOf[stor9[arg1].field_256]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor9[arg1].field_256] += order[arg1].field_512
        order[arg1].field_1280 = 2
}

function cancelOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < order.length
    if order[arg1].field_0 != msg.sender:
        if order[arg1].field_256 != msg.sender:
            revert with 0, 'You can't cancel'
    if order[arg1].field_1280 != 1:
        if order[arg1].field_1280 != 4:
            revert with 0, 'Wrong order'
    if order[arg1].field_512 + balanceOf[stor9[arg1].field_0] < balanceOf[stor9[arg1].field_0]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor9[arg1].field_0] += order[arg1].field_512
    order[arg1].field_1280 = 3
}

function depositFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
    if arg1 + balanceOf[stor7] < balanceOf[stor7]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[stor7] += arg1
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    return 1
}

function sub_c93baaec(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Cancel P2P failed'
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    return 1
}

function sub_58aebfe0(?) {
    require calldata.size - 4 >= 32
    require sub_9de5e76a.length <= test266151307()
    if sub_9de5e76a.length:
        mem[128 len 32 * sub_9de5e76a.length] = call.data[calldata.size len 32 * sub_9de5e76a.length]
    idx = 0
    while idx < sub_9de5e76a.length:
        mem[0] = arg1
        mem[32] = (8 * idx) + sha3(10) + 5
        require idx < sub_9de5e76a.length
        mem[(32 * idx) + 128] = stor[(8 * idx) + ('name', 'sub_9de5e76a', 10) + 5][arg1].field_0
        idx = idx + 1
        continue 
    mem[(32 * sub_9de5e76a.length) + 192 len floor32(sub_9de5e76a.length)] = mem[128 len floor32(sub_9de5e76a.length)]
    return Array(len=sub_9de5e76a.length, data=mem[128 len floor32(sub_9de5e76a.length)], mem[(32 * sub_9de5e76a.length) + floor32(sub_9de5e76a.length) + 192 len (32 * sub_9de5e76a.length) - floor32(sub_9de5e76a.length)]), 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not inGroup[address(arg1)]:
        revert with 0, 'Wallet not added'
    if not inGroup[address(msg.sender)]:
        revert with 0, 'Wallet not added'
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    if 0 == sub_9de5e76a[stor11[address(msg.sender)] - 1].field_768:
        revert with 0, 'Group is restricted'
    if not arg1:
        revert with 0, 'Zero address'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'Not enough balance'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_424da8d6(?) {
    require calldata.size - 4 >= 96
    if not arg3:
        revert with 0, 'Zero address'
    if not inGroup[address(arg1)]:
        revert with 0, 'Wallet not added'
    if arg3 == msg.sender:
        revert with 0, 'Wrong confirmatory address'
    if arg1 == arg3:
        revert with 0, 'Wrong confirmatory address'
    if arg2 <= 0:
        revert with 0, 'Zero sell value'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
    order.length++
    order[order.length].field_0 = msg.sender
    order[order.length].field_256 = arg1
    order[order.length].field_512 = arg2
    order[order.length].field_768 = 0
    order[order.length].field_1024 = 0
    order[order.length].field_1024 = 0
    order[order.length].field_1280 = 4
    order[order.length].field_1536 = arg3
    emit 0xbcbe2065: arg2, 0, 0, arg3, msg.sender, arg1, order.length
}

function sub_9251ee25(?) {
    require calldata.size - 4 >= 160
    if not arg5:
        revert with 0, 'Zero address'
    if not inGroup[address(arg4)]:
        revert with 0, 'Wallet not added'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Not enough balance'
    if arg5 == msg.sender:
        revert with 0, 'Wrong confirmatory address'
    if arg4 == arg5:
        revert with 0, 'Wrong confirmatory address'
    if arg1 <= 0:
        revert with 0, 'Zero sell value'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    order.length++
    order[order.length].field_0 = msg.sender
    order[order.length].field_256 = arg4
    order[order.length].field_512 = arg1
    order[order.length].field_768 = arg2
    order[order.length].field_1024 = arg3
    order[order.length].field_1280 = 4
    order[order.length].field_1536 = arg5
    emit 0xbcbe2065: arg1, address(arg2), arg3, arg5, msg.sender, arg4, order.length
}

function sub_f2ec6bf0(?) {
    require calldata.size - 4 >= 128
    if arg1 <= 0:
        revert with 0, 'Zero sell value'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Not enough balance'
    if not inGroup[address(arg4)]:
        revert with 0, 'Wallet not added'
    if not inGroup[address(msg.sender)]:
        revert with 0, 'Wallet not added'
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    if 0 == sub_9de5e76a[stor11[address(msg.sender)] - 1].field_768:
        revert with 0, 'Group is restricted'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg1
    order.length++
    order[order.length].field_0 = msg.sender
    order[order.length].field_256 = arg4
    order[order.length].field_512 = arg1
    order[order.length].field_768 = arg2
    order[order.length].field_1024 = arg3
    order[order.length].field_1280 = 1
    order[order.length].field_1536 = 0
    order[order.length].field_1792 = 0
    emit 0x2d17c900: arg1, address(arg2), arg3, msg.sender, arg4, order.length
}

function updateAddresses() {
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('LIQUIDITY' << 184)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x534d4152545f535741505f503250000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    return 1
}

function sub_69995fab(?) {
    require calldata.size - 4 >= 32
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Not enough balance'
    if not inGroup[address(msg.sender)]:
        revert with 0, 'Wallet not added'
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    if Mask(1, 252, sub_9de5e76a[stor11[address(msg.sender)] - 1].field_768) <= 0:
        revert with 0, 'SmartSwap P2P disallowed'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(sub_8228c589Address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_8228c589Address))
    call address(sub_8228c589Address).0x1cf3ca96 with:
         gas gas_remaining wei
        args tokenContractAddress, arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_ae10441a(?) {
    require calldata.size - 4 >= 64
    if sub_eb0cde1dAddress != msg.sender:
        revert with 0, 'Not Gateway'
    if arg1 <= sub_576401ba[arg2]:
        if arg1 > sub_576401ba[arg2]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_576401ba[arg2] -= arg1
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args sub_eb0cde1dAddress, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0xa83b0bbd: arg1, sub_eb0cde1dAddress, arg2
        return arg1
    if sub_576401ba[arg2] > sub_576401ba[arg2]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_576401ba[arg2] = 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_eb0cde1dAddress, sub_576401ba[arg2]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xa83b0bbd: sub_576401ba[arg2], sub_eb0cde1dAddress, arg2
    return sub_576401ba[arg2]
}

function sub_36cc8130(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_9de5e76a.length
    if not sub_9de5e76a[arg1].field_256:
        mem[(32 * sub_9de5e76a[arg1].field_256) + 128] = 32
        mem[(32 * sub_9de5e76a[arg1].field_256) + 160] = sub_9de5e76a[arg1].field_256
        mem[(32 * sub_9de5e76a[arg1].field_256) + 192 len floor32(sub_9de5e76a[arg1].field_256)] = mem[128 len floor32(sub_9de5e76a[arg1].field_256)]
        return memory
          from (32 * sub_9de5e76a[arg1].field_256) + 128
           len (96 * sub_9de5e76a[arg1].field_256) + 64
    mem[128] = stor[sha3((8 * arg1) + ('name', 'sub_9de5e76a', 10) + 1)].field_0
    idx = 128
    s = 0
    while (32 * sub_9de5e76a[arg1].field_256) + 96 > idx:
        mem[idx + 32] = stor[s + sha3((8 * arg1) + ('name', 'sub_9de5e76a', 10) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_9de5e76a[arg1].field_256) + 192 len floor32(sub_9de5e76a[arg1].field_256)] = mem[128 len floor32(sub_9de5e76a[arg1].field_256)]
    return Array(len=sub_9de5e76a[arg1].field_256, data=mem[128 len floor32(sub_9de5e76a[arg1].field_256)], mem[(32 * sub_9de5e76a[arg1].field_256) + floor32(sub_9de5e76a[arg1].field_256) + 192 len (32 * sub_9de5e76a[arg1].field_256) - floor32(sub_9de5e76a[arg1].field_256)]), 
}

function buyOrder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not inGroup[msg.sender]:
        revert with 0, 'Wallet not added'
    require arg1 < order.length
    if order[arg1].field_256 != msg.sender:
        revert with 0, 'Wrong buyer'
    if order[arg1].field_1280 != 1:
        revert with 0, 'Wrong order status'
    if order[arg1].field_1024:
        if not order[arg1].field_768:
            if order[arg1].field_1024 != msg.value:
                revert with 0, 'Wrong value'
            call order[arg1].field_0 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(order[arg1].field_768)
            call order[arg1].field_768.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, order[arg1].field_0, order[arg1].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Not enough value'
    if order[arg1].field_512 + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[msg.sender] += order[arg1].field_512
    order[arg1].field_1280 = 2
}

function sub_4a1dc092(?) {
    require calldata.size - 4 >= 32
    if 532488 * 24 * 3600 > block.timestamp:
        revert with 0, 'Buyback locked'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Not enough balance'
    if not inGroup[address(msg.sender)]:
        revert with 0, 'Wallet not added'
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    if Mask(1, 251, sub_9de5e76a[stor11[address(msg.sender)] - 1].field_768) <= 0:
        revert with 0, 'BuyBack disallowed'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg1
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(sub_e54845b6Address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    require ext_code.size(address(sub_e54845b6Address))
    call address(sub_e54845b6Address).0xc456d8e with:
         gas gas_remaining wei
        args arg1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Redemption failed'
    return 1
}

function updateRegistery(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if not arg1:
        revert with 0, 'Zero address'
    contractsRegistryAddress = arg1
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('LIQUIDITY' << 184)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args 0x534d4152545f535741505f503250000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(contractsRegistryAddress)
    staticcall contractsRegistryAddress.0xfa86cf56 with:
            gas gas_remaining wei
           args ('CURRENCY' << 192)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
    return 1
}

function init() {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if inGroup[stor7]:
        revert with 0, 'Already init'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'No pre-minted tokens'
    balanceOf[stor7] = ext_call.return_data[0]
    if 0 >= sub_9de5e76a.length:
        revert with 0, 'Wrong group'
    require ext_code.size(governanceContractAddress)
    call governanceContractAddress.addPremintedWallet(address rg1) with:
         gas gas_remaining wei
        args companyWalletAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    inGroup[stor7] = 1
    require 0 < sub_9de5e76a.length
    if not sub_9de5e76a[2][stor7].field_0:
        uint256(sub_9de5e76a.field_256)++
        stor[uint256(sub_9de5e76a.field_256) + ('array', 1, ('name', 'sub_9de5e76a', 10))].field_0 = companyWalletAddress
        sub_9de5e76a[2][stor7].field_0 = uint256(sub_9de5e76a.field_256)
    if ext_call.return_data[0] + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += ext_call.return_data[0]
    emit Transfer(ext_call.return_data[0], 0, companyWalletAddress);
}

function sub_7eba3bd6(?) {
    require calldata.size - 4 >= 128
    if companyWalletAddress != msg.sender:
        revert with 0, 'Not Company'
    if inGroup[address(arg1)]:
        revert with 0, 'Wallet already added'
    if arg4:
        if arg2 != 1:
            revert with 0, 'Wallet with goal disallowed'
        sub_1a02859f[address(arg1)] = arg4
    if arg2 >= sub_9de5e76a.length:
        revert with 0, 'Wrong group'
    require ext_code.size(governanceContractAddress)
    call governanceContractAddress.addPremintedWallet(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    inGroup[address(arg1)] = arg2 + 1
    require arg2 < sub_9de5e76a.length
    if not stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0:
        sub_9de5e76a[arg2].field_256++
        stor[sub_9de5e76a[arg2].field_256 + sha3((8 * arg2) + ('name', 'sub_9de5e76a', 10) + 1)].field_0 = arg1
        stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0 = sub_9de5e76a[arg2].field_256
    if not arg1:
        revert with 0, 'Zero address'
    if arg3 > balanceOf[msg.sender]:
        revert with 0, 'Not enough balance'
    if arg3 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg3
    if arg3 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg3 + balanceOf[arg1]
    emit Transfer(arg3, msg.sender, arg1);
    return 1
}

function sub_59222005(?) {
    require calldata.size - 4 >= 64
    require arg1 < sub_9de5e76a.length
    if not stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0:
        mem[(32 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + 128] = 32
        mem[(32 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + 160] = stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
        mem[(32 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + 192 len floor32(stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0)] = mem[128 len floor32(stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0)]
        return memory
          from (32 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + 128
           len (96 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + 64
    mem[128] = stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
    idx = 128
    s = 0
    while (32 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + 96 > idx:
        mem[idx + 32] = stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + 192 len floor32(stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0)] = mem[128 len floor32(stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0)]
    return Array(len=stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0, data=mem[128 len floor32(stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0)], mem[(32 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + floor32(stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) + 192 len (32 * stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0) - floor32(stor[(8 * arg1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0)]), 
}

function sub_4edfb6b1(?) payable {
    require calldata.size - 4 >= 128
    if sub_eb0cde1dAddress != msg.sender:
        revert with 0, 'Not Gateway'
    require sub_9de5e76a.length <= test266151307()
    require sub_9de5e76a.length <= test266151307()
    mem[(32 * sub_9de5e76a.length) + 128] = sub_9de5e76a.length
    if sub_9de5e76a.length:
        mem[(32 * sub_9de5e76a.length) + 160 len 32 * sub_9de5e76a.length] = call.data[calldata.size len 32 * sub_9de5e76a.length]
    require sub_9de5e76a.length <= test266151307()
    mem[(64 * sub_9de5e76a.length) + 160] = sub_9de5e76a.length
    require sub_9de5e76a.length <= test266151307()
    mem[(98 * sub_9de5e76a.length) + 192] = sub_9de5e76a.length
    idx = 0
    s = 0
    while idx < sub_9de5e76a.length:
        mem[0] = arg1
        mem[32] = (8 * idx) + sha3(10) + 5
        if stor[(8 * idx) + ('name', 'sub_9de5e76a', 10) + 5][arg1].field_0 > stor[(8 * idx) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require idx < mem[(32 * sub_9de5e76a.length) + 128]
        mem[(32 * idx) + (32 * sub_9de5e76a.length) + 160] = stor[(8 * idx) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 - stor[(8 * idx) + ('name', 'sub_9de5e76a', 10) + 5][arg1].field_0
        require idx < mem[(32 * sub_9de5e76a.length) + 128]
        if stor[(8 * idx) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 - stor[(8 * idx) + ('name', 'sub_9de5e76a', 10) + 5][arg1].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[(64 * sub_9de5e76a.length) + 160]
        mem[(32 * idx) + (64 * sub_9de5e76a.length) + 192] = 1
        require idx < sub_9de5e76a.length
        mem[0] = 10
        require idx < mem[(98 * sub_9de5e76a.length) + 192]
        mem[(32 * idx) + (98 * sub_9de5e76a.length) + 224] = sub_9de5e76a[idx].field_0
        require idx < mem[(98 * sub_9de5e76a.length) + 192]
        idx = idx + 1
        s = s + sub_9de5e76a[idx].field_0
        continue 
    # nil
}

function putOnSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Not enough balance'
    if not inGroup[address(msg.sender)]:
        revert with 0, 'Wallet not added'
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    if sub_9de5e76a[stor11[address(msg.sender)] - 1].field_768 and 1 << arg2 <= 0:
        revert with 0, 'Liquidity channel disallowed'
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    if stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 5][arg2].field_0 != 0:
        revert with 0, 'There is unpaid giveaways'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    if not stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0:
        stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0++
        stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0].field_0 = msg.sender
        stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0 = stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
    if arg1 + sub_0f9cb829[msg.sender][arg2] < sub_0f9cb829[msg.sender][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    sub_0f9cb829[msg.sender][arg2] += arg1
    if arg1 + sub_576401ba[arg2] < sub_576401ba[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    sub_576401ba[arg2] += arg1
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    if arg1 + stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][arg2].field_0 < stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][arg2].field_0:
        revert with 0, 'SafeMath: addition overflow'
    require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
    stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][arg2].field_0 += arg1
    emit PutOnSale(arg1, msg.sender);
}

function sub_227e327d(?) {
    require calldata.size - 4 >= 32
    if companyWalletAddress != msg.sender:
        revert with 0, 'Not Company'
    if inGroup[address(arg1)]:
        revert with 0, 'Wallet already added'
    if not arg1:
        revert with 0, 'Zero address'
    balanceOf[arg1] = balanceOf[stor7]
    require sub_9de5e76a.length
    if sub_9de5e76a[2][stor7].field_0:
        require uint256(sub_9de5e76a.field_256) - 1 < uint256(sub_9de5e76a.field_256)
        require sub_9de5e76a[2][stor7].field_0 - 1 < uint256(sub_9de5e76a.field_256)
        stor[('array', 1, ('name', 'sub_9de5e76a', 10)) + sub_9de5e76a[2][stor7].field_0].field_0 = stor[('array', 1, ('name', 'sub_9de5e76a', 10)) + uint256(sub_9de5e76a.field_256)].field_0
        sub_9de5e76a[2][stor[('array', 1, ('name', 'sub_9de5e76a', 10)) + uint256(sub_9de5e76a.field_256)].field_0].field_0 = sub_9de5e76a[2][stor7].field_0
        require uint256(sub_9de5e76a.field_256)
        stor[uint256(sub_9de5e76a.field_256) + ('array', 1, ('name', 'sub_9de5e76a', 10))].field_0 = 0
        uint256(sub_9de5e76a.field_256)--
        sub_9de5e76a[2][stor7].field_0 = 0
    inGroup[stor7] = 0
    balanceOf[stor7] = 0
    require ext_code.size(sub_eb0cde1dAddress)
    staticcall sub_eb0cde1dAddress.0x136ea246 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[0] = idx
        mem[32] = sha3(companyWalletAddress, 13)
        if sub_0f9cb829[stor7][idx]:
            sub_0f9cb829[address(arg1)][idx] = sub_0f9cb829[stor7][idx]
            sub_0f9cb829[stor7][idx] = 0
            require sub_9de5e76a.length
            if not sub_9de5e76a[6][idx][1][address(arg1)].field_0:
                sub_9de5e76a[6][idx].field_0++
                sub_9de5e76a[6][idx][sub_9de5e76a[6][idx].field_0].field_0 = arg1
                sub_9de5e76a[6][idx][1][address(arg1)].field_0 = sub_9de5e76a[6][idx].field_0
            require sub_9de5e76a.length
            mem[0] = companyWalletAddress
            mem[32] = sha3(idx, sha3(10) + 6) + 1
            if sub_9de5e76a[6][idx][1][stor7].field_0:
                require sub_9de5e76a[6][idx].field_0 - 1 < sub_9de5e76a[6][idx].field_0
                require sub_9de5e76a[6][idx][1][stor7].field_0 - 1 < sub_9de5e76a[6][idx].field_0
                sub_9de5e76a[6][idx][sub_9de5e76a[6][idx][1][stor7].field_0].field_0 = sub_9de5e76a[6][idx][sub_9de5e76a[6][idx].field_0].field_0
                sub_9de5e76a[6][idx][1][sub_9de5e76a[6][idx][sub_9de5e76a[6][idx].field_0].field_0].field_0 = sub_9de5e76a[6][idx][1][stor7].field_0
                require sub_9de5e76a[6][idx].field_0
                sub_9de5e76a[6][idx][sub_9de5e76a[6][idx].field_0].field_0 = 0
                sub_9de5e76a[6][idx].field_0--
                mem[0] = companyWalletAddress
                mem[32] = sha3(idx, sha3(10) + 6) + 1
                sub_9de5e76a[6][idx][1][stor7].field_0 = 0
        idx = idx + 1
        continue 
    if 0 >= sub_9de5e76a.length:
        revert with 0, 'Wrong group'
    require ext_code.size(governanceContractAddress)
    call governanceContractAddress.addPremintedWallet(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    inGroup[address(arg1)] = 1
    require 0 < sub_9de5e76a.length
    if not sub_9de5e76a[2][address(arg1)].field_0:
        uint256(sub_9de5e76a.field_256)++
        stor[uint256(sub_9de5e76a.field_256) + ('array', 1, ('name', 'sub_9de5e76a', 10))].field_0 = arg1
        sub_9de5e76a[2][address(arg1)].field_0 = uint256(sub_9de5e76a.field_256)
    companyWalletAddress = arg1
}

function sub_4e2ebc34(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    if sub_1a02859f[address(arg1)]:
        revert with 0, 'Wallet with goal can't be moved'
    if not inGroup[address(arg1)]:
        revert with 0, 'Wallet not added'
    if inGroup[address(arg1)] - 1 == arg2:
        revert with 0, 'Already in this group'
    inGroup[address(arg1)] = arg2 + 1
    require arg2 < sub_9de5e76a.length
    if not stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0:
        sub_9de5e76a[arg2].field_256++
        stor[sub_9de5e76a[arg2].field_256 + sha3((8 * arg2) + ('name', 'sub_9de5e76a', 10) + 1)].field_0 = arg1
        stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0 = sub_9de5e76a[arg2].field_256
    require inGroup[address(arg1)] - 1 < sub_9de5e76a.length
    if stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0:
        require sub_9de5e76a[stor11[address(arg1)] - 1].field_256 - 1 < sub_9de5e76a[stor11[address(arg1)] - 1].field_256
        require stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0 - 1 < sub_9de5e76a[stor11[address(arg1)] - 1].field_256
        stor[sha3((8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0].field_0 = stor[sha3((8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[address(arg1)] - 1].field_256].field_0
        stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[sha3((8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[address(arg1)] - 1].field_256].field_0].field_0 = stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0
        require sub_9de5e76a[stor11[address(arg1)] - 1].field_256
        stor[sub_9de5e76a[stor11[address(arg1)] - 1].field_256 + sha3((8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 1)].field_0 = 0
        sub_9de5e76a[stor11[address(arg1)] - 1].field_256--
        stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 2][address(arg1)].field_0 = 0
    require ext_code.size(sub_eb0cde1dAddress)
    staticcall sub_eb0cde1dAddress.0x136ea246 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    while idx < ext_call.return_data[0]:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 13)
        if sub_0f9cb829[address(arg1)][idx]:
            require inGroup[address(arg1)] - 1 < sub_9de5e76a.length
            if stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 5][idx].field_0 != 0:
                revert with 0, 'There is unpaid giveaways'
            require inGroup[address(arg1)] - 1 < sub_9de5e76a.length
            if sub_0f9cb829[address(arg1)][idx] > stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][idx].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            require inGroup[address(arg1)] - 1 < sub_9de5e76a.length
            stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][idx].field_0 -= sub_0f9cb829[address(arg1)][idx]
            require arg2 < sub_9de5e76a.length
            if sub_0f9cb829[address(arg1)][idx] + stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 4][idx].field_0 < stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 4][idx].field_0:
                revert with 0, 'SafeMath: addition overflow'
            require arg2 < sub_9de5e76a.length
            stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 4][idx].field_0 += sub_0f9cb829[address(arg1)][idx]
            require inGroup[address(arg1)] - 1 < sub_9de5e76a.length
            if stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][1][address(arg1)].field_0:
                require stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0 - 1 < stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0
                require stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][1][address(arg1)].field_0 - 1 < stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0
                stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][1][address(arg1)].field_0].field_0 = stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0].field_0
                stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][1][stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0].field_0].field_0 = stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][1][address(arg1)].field_0
                require stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0
                stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0].field_0 = 0
                stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0--
                stor[(8 * stor11[address(arg1)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][idx][1][address(arg1)].field_0 = 0
            require arg2 < sub_9de5e76a.length
            mem[0] = arg1
            mem[32] = sha3(idx, (8 * arg2) + sha3(10) + 6) + 1
            if not stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 6][idx][1][address(arg1)].field_0:
                stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0++
                stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 6][idx][stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0].field_0 = arg1
                mem[0] = arg1
                mem[32] = sha3(idx, (8 * arg2) + sha3(10) + 6) + 1
                stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 6][idx][1][address(arg1)].field_0 = stor[(8 * arg2) + ('name', 'sub_9de5e76a', 10) + 6][idx].field_0
        idx = idx + 1
        continue 
}

function removeFromSale(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg1 <= sub_0f9cb829[msg.sender][arg2]:
        if arg1 > sub_576401ba[arg2]:
            revert with 0, 'Not enough on sale'
        if not inGroup[address(msg.sender)]:
            revert with 0, 'Wallet not added'
        require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
        if stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 5][arg2].field_0 != 0:
            revert with 0, 'There is unpaid giveaways'
        if arg1 > sub_0f9cb829[msg.sender][arg2]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_0f9cb829[msg.sender][arg2] -= arg1
        if arg1 > sub_576401ba[arg2]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_576401ba[arg2] -= arg1
        if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[msg.sender] += arg1
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
        if arg1 > stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][arg2].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
        stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][arg2].field_0 -= arg1
        if not sub_0f9cb829[msg.sender][arg2]:
            require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
            if stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0:
                require stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0 - 1 < stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
                require stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0 - 1 < stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0].field_0 = stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0].field_0
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0].field_0].field_0 = stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0
                require stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0].field_0 = 0
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0--
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0 = 0
        emit 0xbfbf7e76: arg1, msg.sender
    else:
        if sub_0f9cb829[msg.sender][arg2] > sub_576401ba[arg2]:
            revert with 0, 'Not enough on sale'
        if not inGroup[address(msg.sender)]:
            revert with 0, 'Wallet not added'
        require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
        if stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 5][arg2].field_0 != 0:
            revert with 0, 'There is unpaid giveaways'
        if sub_0f9cb829[msg.sender][arg2] > sub_0f9cb829[msg.sender][arg2]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_0f9cb829[msg.sender][arg2] = 0
        if sub_0f9cb829[msg.sender][arg2] > sub_576401ba[arg2]:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_576401ba[arg2] -= sub_0f9cb829[msg.sender][arg2]
        if sub_0f9cb829[msg.sender][arg2] + balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[msg.sender] += sub_0f9cb829[msg.sender][arg2]
        if sub_0f9cb829[msg.sender][arg2] + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += sub_0f9cb829[msg.sender][arg2]
        require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
        if sub_0f9cb829[msg.sender][arg2] > stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][arg2].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
        stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 4][arg2].field_0 -= sub_0f9cb829[msg.sender][arg2]
        if not sub_0f9cb829[msg.sender][arg2]:
            require inGroup[address(msg.sender)] - 1 < sub_9de5e76a.length
            if stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0:
                require stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0 - 1 < stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
                require stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0 - 1 < stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0].field_0 = stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0].field_0
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0].field_0].field_0 = stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0
                require stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0].field_0 = 0
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2].field_0--
                stor[(8 * stor11[address(msg.sender)] - 1) + ('name', 'sub_9de5e76a', 10) + 6][arg2][1][address(msg.sender)].field_0 = 0
        emit 0xbfbf7e76: sub_0f9cb829[msg.sender][arg2], msg.sender
}

function sub_739a5f9c(?) {
    require calldata.size - 4 >= 96
    require arg3 < sub_9de5e76a.length
    if arg3 != 1:
        if not stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0:
        if not stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0:
        if stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 > stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 -= stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
        if stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 > stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 5][arg1].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 5][arg1].field_0 -= stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
        stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 = 0
        stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 = 0
        # nil
    else:
        mem[256] = 0
        if stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0:
            if stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0:
                require ext_code.size(address(sub_a26da02aAddress))
                staticcall address(sub_a26da02aAddress).getCurrencyPrice(address rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[192] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                idx = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1].field_0
                while idx:
                    if idx - 1 >= stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1].field_0:
                        revert with 0, 32, 34, 0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64, mem[422 len 30]
                    if not idx - 1:
                        mem[256] = mem[192]
                        if mem[192] < sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]:
                            if mem[192] > mem[192]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[192] = 0
                            if mem[256] > sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] -= mem[256]
                            require stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            mem[288] = mem[256] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            if ext_call.return_data[0] * mem[256] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / 10^18 < sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0]:
                                mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[32] = 14
                                sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] -= ext_call.return_data[0] * mem[256] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / 10^18
                            else:
                                sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] = 0
                                if not inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0]:
                                    revert with 0, 'Wallet not added'
                                if inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 == 2:
                                    revert with 0, 'Already in this group'
                                inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] = 3
                                require 2 < sub_9de5e76a.length
                                if not sub_9de5e76a[18][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                    uint256(sub_9de5e76a.field_4352)++
                                    stor[uint256(sub_9de5e76a.field_4352) + ('array', 17, ('name', 'sub_9de5e76a', 10))].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    sub_9de5e76a[18][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = uint256(sub_9de5e76a.field_4352)
                                require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[32] = (8 * inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1) + sha3(10) + 2
                                if stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                    require sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256 - 1 < sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 - 1 < sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0].field_0 = stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256].field_0
                                    stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0
                                    require sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    stor[sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256 + sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1)].field_0 = 0
                                    sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256--
                                    mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    mem[32] = (8 * inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1) + sha3(10) + 2
                                    stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = 0
                                require ext_code.size(sub_eb0cde1dAddress)
                                staticcall sub_eb0cde1dAddress.0x136ea246 with:
                                        gas gas_remaining wei
                                mem[320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                s = 1
                                while s < ext_call.return_data[0]:
                                    mem[0] = s
                                    mem[32] = sha3(stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0, 13)
                                    if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]:
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s] > stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 4][s].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 4][s].field_0 -= sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]
                                        require 2 < sub_9de5e76a.length
                                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s] + sub_9de5e76a[20][s].field_0 < sub_9de5e76a[20][s].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 2 < sub_9de5e76a.length
                                        sub_9de5e76a[20][s].field_0 += sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        if stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0 - 1 < stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 - 1 < stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0 = 0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0--
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = 0
                                        require 2 < sub_9de5e76a.length
                                        mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                        mem[32] = sha3(s, sha3(10) + 22) + 1
                                        if not sub_9de5e76a[22][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                            sub_9de5e76a[22][s].field_0++
                                            sub_9de5e76a[22][s][sub_9de5e76a[22][s].field_0].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                            mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                            mem[32] = sha3(s, sha3(10) + 22) + 1
                                            sub_9de5e76a[22][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = sub_9de5e76a[22][s].field_0
                                    s = s + 1
                                    continue 
                            if not arg2:
                                call stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0 with:
                                   value mem[256] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    mem[32] = 17
                                    stor17[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] += mem[256] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            else:
                                mem[324] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[356] = mem[256] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                                require ext_code.size(arg2)
                                call arg2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0, mem[256] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                                mem[320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            mem[256] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]
                            if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] > mem[192]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[192] = mem[192] - sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]
                            if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] > sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] = 0
                            require stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            mem[288] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            if ext_call.return_data[0] * sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / 10^18 < sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0]:
                                mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[32] = 14
                                sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] -= ext_call.return_data[0] * sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / 10^18
                            else:
                                sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] = 0
                                if not inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0]:
                                    revert with 0, 'Wallet not added'
                                if inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 == 2:
                                    revert with 0, 'Already in this group'
                                inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] = 3
                                require 2 < sub_9de5e76a.length
                                if not sub_9de5e76a[18][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                    uint256(sub_9de5e76a.field_4352)++
                                    stor[uint256(sub_9de5e76a.field_4352) + ('array', 17, ('name', 'sub_9de5e76a', 10))].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    sub_9de5e76a[18][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = uint256(sub_9de5e76a.field_4352)
                                require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[32] = (8 * inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1) + sha3(10) + 2
                                if stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                    require sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256 - 1 < sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 - 1 < sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0].field_0 = stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256].field_0
                                    stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0
                                    require sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    stor[sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256 + sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1)].field_0 = 0
                                    sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256--
                                    mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    mem[32] = (8 * inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1) + sha3(10) + 2
                                    stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = 0
                                require ext_code.size(sub_eb0cde1dAddress)
                                staticcall sub_eb0cde1dAddress.0x136ea246 with:
                                        gas gas_remaining wei
                                mem[320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                s = 1
                                while s < ext_call.return_data[0]:
                                    mem[0] = s
                                    mem[32] = sha3(stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0, 13)
                                    if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]:
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s] > stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 4][s].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 4][s].field_0 -= sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]
                                        require 2 < sub_9de5e76a.length
                                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s] + sub_9de5e76a[20][s].field_0 < sub_9de5e76a[20][s].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 2 < sub_9de5e76a.length
                                        sub_9de5e76a[20][s].field_0 += sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        if stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0 - 1 < stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 - 1 < stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0 = 0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0--
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = 0
                                        require 2 < sub_9de5e76a.length
                                        mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                        mem[32] = sha3(s, sha3(10) + 22) + 1
                                        if not sub_9de5e76a[22][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                            sub_9de5e76a[22][s].field_0++
                                            sub_9de5e76a[22][s][sub_9de5e76a[22][s].field_0].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                            mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                            mem[32] = sha3(s, sha3(10) + 22) + 1
                                            sub_9de5e76a[22][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = sub_9de5e76a[22][s].field_0
                                    s = s + 1
                                    continue 
                            if not arg2:
                                call stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0 with:
                                   value sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    mem[32] = 17
                                    stor17[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] += sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            else:
                                mem[324] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[356] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                                require ext_code.size(arg2)
                                call arg2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0, sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                                mem[320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0
                        mem[256] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0
                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 < sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]:
                            if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 > mem[192]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[192] = mem[192] - (sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0)
                            if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 > sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] -= sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0
                            require stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            mem[288] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            if ext_call.return_data[0] * sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / 10^18 < sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0]:
                                mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[32] = 14
                                sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] -= ext_call.return_data[0] * sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / 10^18
                            else:
                                sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] = 0
                                if not inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0]:
                                    revert with 0, 'Wallet not added'
                                if inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 == 2:
                                    revert with 0, 'Already in this group'
                                inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] = 3
                                require 2 < sub_9de5e76a.length
                                if not sub_9de5e76a[18][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                    uint256(sub_9de5e76a.field_4352)++
                                    stor[uint256(sub_9de5e76a.field_4352) + ('array', 17, ('name', 'sub_9de5e76a', 10))].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    sub_9de5e76a[18][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = uint256(sub_9de5e76a.field_4352)
                                require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[32] = (8 * inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1) + sha3(10) + 2
                                if stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                    require sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256 - 1 < sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 - 1 < sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0].field_0 = stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256].field_0
                                    stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0
                                    require sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    stor[sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256 + sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1)].field_0 = 0
                                    sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256--
                                    mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    mem[32] = (8 * inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1) + sha3(10) + 2
                                    stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = 0
                                require ext_code.size(sub_eb0cde1dAddress)
                                staticcall sub_eb0cde1dAddress.0x136ea246 with:
                                        gas gas_remaining wei
                                mem[320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                s = 1
                                while s < ext_call.return_data[0]:
                                    mem[0] = s
                                    mem[32] = sha3(stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0, 13)
                                    if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]:
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s] > stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 4][s].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 4][s].field_0 -= sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]
                                        require 2 < sub_9de5e76a.length
                                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s] + sub_9de5e76a[20][s].field_0 < sub_9de5e76a[20][s].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 2 < sub_9de5e76a.length
                                        sub_9de5e76a[20][s].field_0 += sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        if stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0 - 1 < stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 - 1 < stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0 = 0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0--
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = 0
                                        require 2 < sub_9de5e76a.length
                                        mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                        mem[32] = sha3(s, sha3(10) + 22) + 1
                                        if not sub_9de5e76a[22][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                            sub_9de5e76a[22][s].field_0++
                                            sub_9de5e76a[22][s][sub_9de5e76a[22][s].field_0].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                            mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                            mem[32] = sha3(s, sha3(10) + 22) + 1
                                            sub_9de5e76a[22][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = sub_9de5e76a[22][s].field_0
                                    s = s + 1
                                    continue 
                            if not arg2:
                                call stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0 with:
                                   value sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    mem[32] = 17
                                    stor17[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] += sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            else:
                                mem[324] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[356] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                                require ext_code.size(arg2)
                                call arg2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0, sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                                mem[320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        else:
                            mem[256] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]
                            if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] > mem[192]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[192] = mem[192] - sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]
                            if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] > sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] = 0
                            require stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            mem[288] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            if ext_call.return_data[0] * sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / 10^18 < sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0]:
                                mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[32] = 14
                                sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] -= ext_call.return_data[0] * sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 / 10^18
                            else:
                                sub_1a02859f[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] = 0
                                if not inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0]:
                                    revert with 0, 'Wallet not added'
                                if inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 == 2:
                                    revert with 0, 'Already in this group'
                                inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] = 3
                                require 2 < sub_9de5e76a.length
                                if not sub_9de5e76a[18][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                    uint256(sub_9de5e76a.field_4352)++
                                    stor[uint256(sub_9de5e76a.field_4352) + ('array', 17, ('name', 'sub_9de5e76a', 10))].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    sub_9de5e76a[18][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = uint256(sub_9de5e76a.field_4352)
                                require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[32] = (8 * inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1) + sha3(10) + 2
                                if stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                    require sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256 - 1 < sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 - 1 < sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0].field_0 = stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256].field_0
                                    stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1) + sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0
                                    require sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256
                                    stor[sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256 + sha3((8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 1)].field_0 = 0
                                    sub_9de5e76a[stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1].field_256--
                                    mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    mem[32] = (8 * inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1) + sha3(10) + 2
                                    stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 2][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = 0
                                require ext_code.size(sub_eb0cde1dAddress)
                                staticcall sub_eb0cde1dAddress.0x136ea246 with:
                                        gas gas_remaining wei
                                mem[320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                s = 1
                                while s < ext_call.return_data[0]:
                                    mem[0] = s
                                    mem[32] = sha3(stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0, 13)
                                    if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]:
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s] > stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 4][s].field_0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 4][s].field_0 -= sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]
                                        require 2 < sub_9de5e76a.length
                                        if sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s] + sub_9de5e76a[20][s].field_0 < sub_9de5e76a[20][s].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        require 2 < sub_9de5e76a.length
                                        sub_9de5e76a[20][s].field_0 += sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][s]
                                        require inGroup[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] - 1 < sub_9de5e76a.length
                                        if stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0 - 1 < stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 - 1 < stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0].field_0 = stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0
                                            require stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0].field_0 = 0
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s].field_0--
                                            stor[(8 * stor11[stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0] - 1) + ('name', 'sub_9de5e76a', 10) + 6][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = 0
                                        require 2 < sub_9de5e76a.length
                                        mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                        mem[32] = sha3(s, sha3(10) + 22) + 1
                                        if not sub_9de5e76a[22][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0:
                                            sub_9de5e76a[22][s].field_0++
                                            sub_9de5e76a[22][s][sub_9de5e76a[22][s].field_0].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                            mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                            mem[32] = sha3(s, sha3(10) + 22) + 1
                                            sub_9de5e76a[22][s][1][stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0].field_0 = sub_9de5e76a[22][s].field_0
                                    s = s + 1
                                    continue 
                            if not arg2:
                                call stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0 with:
                                   value sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    mem[0] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                    mem[32] = 17
                                    stor17[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0] += sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                            else:
                                mem[324] = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0
                                mem[356] = sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                                require ext_code.size(arg2)
                                call arg2.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 6][arg1][idx].field_0, sub_0f9cb829[stor[(8 * arg3) + ('name', 'stor10', 10) + 6][arg1][idx].field_0][arg1] * stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 / stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                                mem[320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    idx = idx - 1
                    continue 
                if stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 > stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 + mem[192]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 = stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 4][arg1].field_0 + mem[192] - stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                if stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 > stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 5][arg1].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 5][arg1].field_0 -= stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0
                stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_256 = 0
                stor[(8 * arg3) + ('name', 'sub_9de5e76a', 10) + 7][arg1][address(arg2)].field_0 = 0
}



}
