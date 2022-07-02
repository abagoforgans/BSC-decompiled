contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 stor1;
mapping of uint256 allowance;
uint256 airdropBSupply;
uint256 currentAirdropAmount;
uint256 stor5;
mapping of uint8 stor6;
address authorityAddress;
uint8 stor8; offset 160
uint128 stor8; offset 160
address owner;
uint256 unlockTime;
mapping of uint8 stor10;
array of uint256 symbol;
uint256 decimals;
array of uint256 name;

function airdropBSupply() {
    return airdropBSupply
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isAdmin(address arg1) {
    return bool(stor10[arg1])
}

function unlockTime() {
    return unlockTime
}

function decimals() {
    return decimals
}

function currentAirdropAmount() {
    return currentAirdropAmount
}

function stopped() {
    return bool(uint8(stor8.field_160))
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function authority() {
    return authorityAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1) {
    require not uint8(stor8.field_160)
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor8.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    if currentAirdropAmount >= airdropBSupply:
        return stor1[address(arg1)]
    if stor6[address(arg1)]:
        return stor1[address(arg1)]
    require stor1[address(arg1)] + stor5 >= stor1[address(arg1)]
    return (stor1[address(arg1)] + stor5)
}

function setUnlockTime(uint256 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    unlockTime = arg1
}

function setName(string arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function addAdmin(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if not stor10[address(arg1)]:
        stor10[address(arg1)] = 1
        emit LogAddAdmin(msg.sender, arg1);
    return 1
}

function removeAdmin(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if bool(stor10[address(arg1)]) == 1:
        stor10[address(arg1)] = 0
        emit LogRemoveAdmin(msg.sender, arg1);
    return 1
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    Mask(96, 0, stor8.field_160) = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    Mask(96, 0, stor8.field_160) = 0
}

function move(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor8.field_160)
    if block.timestamp <= unlockTime:
        require stor10[address(msg.sender)]
    require stor1[address(arg1)] >= arg3
    if not stor6[address(arg1)]:
        if currentAirdropAmount < airdropBSupply:
            require stor1[address(arg1)] + stor5 >= stor1[address(arg1)]
            stor1[address(arg1)] += stor5
            stor6[address(arg1)] = 1
            require currentAirdropAmount + stor5 >= currentAirdropAmount
            currentAirdropAmount += stor5
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require stor1[address(arg1)] - arg3 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg3
    require stor1[address(arg2)] + arg3 >= stor1[address(arg2)]
    stor1[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function pull(address arg1, uint256 arg2) {
    require not uint8(stor8.field_160)
    if block.timestamp <= unlockTime:
        require stor10[address(msg.sender)]
    require stor1[address(arg1)] >= arg2
    if not stor6[address(arg1)]:
        if currentAirdropAmount < airdropBSupply:
            require stor1[address(arg1)] + stor5 >= stor1[address(arg1)]
            stor1[address(arg1)] += stor5
            stor6[address(arg1)] = 1
            require currentAirdropAmount + stor5 >= currentAirdropAmount
            currentAirdropAmount += stor5
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] >= arg2
            require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg2
    require stor1[address(arg1)] - arg2 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg2
    require stor1[address(msg.sender)] + arg2 >= stor1[address(msg.sender)]
    stor1[address(msg.sender)] += arg2
    emit Transfer(arg2, arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor8.field_160)
    if block.timestamp <= unlockTime:
        require stor10[address(msg.sender)]
    require stor1[address(arg1)] >= arg3
    if not stor6[address(arg1)]:
        if currentAirdropAmount < airdropBSupply:
            require stor1[address(arg1)] + stor5 >= stor1[address(arg1)]
            stor1[address(arg1)] += stor5
            stor6[address(arg1)] = 1
            require currentAirdropAmount + stor5 >= currentAirdropAmount
            currentAirdropAmount += stor5
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
    require stor1[address(arg1)] - arg3 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg3
    require stor1[address(arg2)] + arg3 >= stor1[address(arg2)]
    stor1[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function push(address arg1, uint256 arg2) {
    require not uint8(stor8.field_160)
    if block.timestamp <= unlockTime:
        require stor10[address(msg.sender)]
    require stor1[address(msg.sender)] >= arg2
    if not stor6[address(msg.sender)]:
        if currentAirdropAmount < airdropBSupply:
            require stor1[address(msg.sender)] + stor5 >= stor1[address(msg.sender)]
            stor1[address(msg.sender)] += stor5
            stor6[address(msg.sender)] = 1
            require currentAirdropAmount + stor5 >= currentAirdropAmount
            currentAirdropAmount += stor5
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    require stor1[address(msg.sender)] - arg2 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg2
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor8.field_160)
    if block.timestamp <= unlockTime:
        require stor10[address(msg.sender)]
    require stor1[address(msg.sender)] >= arg2
    if not stor6[address(msg.sender)]:
        if currentAirdropAmount < airdropBSupply:
            require stor1[address(msg.sender)] + stor5 >= stor1[address(msg.sender)]
            stor1[address(msg.sender)] += stor5
            stor6[address(msg.sender)] = 1
            require currentAirdropAmount + stor5 >= currentAirdropAmount
            currentAirdropAmount += stor5
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            require allowance[address(msg.sender)][address(msg.sender)] >= arg2
            require allowance[address(msg.sender)][address(msg.sender)] - arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    require stor1[address(msg.sender)] - arg2 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg2
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if bool(stor10[address(stor8.field_0)]) == 1:
        stor10[address(stor8.field_0)] = 0
        emit LogRemoveAdmin(msg.sender, owner);
    owner = arg1
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if not stor10[address(stor8.field_0)]:
        stor10[address(stor8.field_0)] = 1
        emit LogAddAdmin(msg.sender, owner);
    emit LogSetOwner(owner);
}



}
