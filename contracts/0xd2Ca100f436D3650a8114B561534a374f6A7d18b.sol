contract main {




// =====================  Runtime code  =====================


const WHITELISTER_ROLE = 0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
address owner; offset 8
mapping of struct roleAdmin;
mapping of uint8 stor2;
array of struct whitelisted;
uint8 stor4;
uint256 stor5;
array of struct stor6;
array of struct stor7;
uint8 isSaleFunded;
uint8 sub_94838414; offset 8
uint8 sub_4beb2ebf; offset 16
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 decimals;
uint256 price;
uint256 startDate;
uint256 endDate;
uint256 individualMinimumAmount;
uint256 individualMaximumAmount;
uint256 tokensAllocated;
uint256 tokensForSale;
uint256 sub_579acacc;
uint256 sub_9d5552b3;
uint16 vestingDuration;
uint16 sub_f97ee69d; offset 16
array of struct buyers;
address sub_0a1a8d3cAddress;
address tokenAddress;

function hasWhitelisting() {
    return bool(stor4)
}

function sub_0a1a8d3c(?) {
    return sub_0a1a8d3cAddress
}

function startDate() {
    return startDate
}

function tokensForSale() {
    return tokensForSale
}

function vestingDuration() {
    return vestingDuration
}

function isSaleFunded() {
    return bool(isSaleFunded)
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function individualMinimumAmount() {
    return individualMinimumAmount
}

function decimals() {
    return decimals
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function sub_4beb2ebf(?) {
    return bool(sub_4beb2ebf)
}

function sub_579acacc(?) {
    return sub_579acacc
}

function paused() {
    return bool(stor0)
}

function tokensAllocated() {
    return tokensAllocated
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_94838414(?) {
    return bool(sub_94838414)
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function sub_9d5552b3(?) {
    return sub_9d5552b3
}

function price() {
    return price
}

function whitelistedAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < whitelisted.length
    return whitelisted[arg1].field_0
}

function endDate() {
    return endDate
}

function individualMaximumAmount() {
    return individualMaximumAmount
}

function buyers(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < buyers.length
    return buyers[arg1].field_0
}

function sub_f97ee69d(?) {
    return sub_f97ee69d
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isPreStart() {
    return (block.timestamp < startDate)
}

function hasMinimumAmount() {
    return not not individualMinimumAmount
}

function hasFinalized() {
    if not endDate:
        return not not endDate
    return (block.timestamp > endDate)
}

function hasStarted() {
    if not startDate:
        return not not startDate
    return block.timestamp >= startDate
}

function tokensLeft() {
    if tokensForSale < tokensAllocated:
        revert with 'NH{q', 17
    return (tokensForSale - tokensAllocated)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_f3e97efa(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startDate:
        if block.timestamp >= startDate:
            revert with 0, 'Must not have started'
    sub_579acacc = arg1
}

function sub_d0d652f1(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startDate:
        if block.timestamp >= startDate:
            revert with 0, 'Must not have started'
    sub_f97ee69d = uint16(arg1)
}

function sub_7ca0a19a(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startDate:
        if block.timestamp >= startDate:
            revert with 0, 'Must not have started'
    vestingDuration = uint16(arg1)
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_3af3c230(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= tokensForSale:
        revert with 0, 'tokens for sale < max amount'
    individualMinimumAmount = arg1
    individualMaximumAmount = arg1
    Mask(240, 0, stor8.field_16) = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function availableTokens() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endDate:
        if block.timestamp > endDate:
            revert with 0, 'Must not be finalized'
    if startDate:
        if block.timestamp >= startDate:
            revert with 0, 'Must not have started'
    price = arg1
}

function setSalePeriod(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0, 'end date <= start date'
    if sub_579acacc:
        if arg2 > sub_579acacc:
            revert with 0, 'vesting start date < end date'
    startDate = arg1
    endDate = arg2
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_f7057409(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0, 'max amount < min amount'
    if arg2 > tokensForSale:
        revert with 0, 'tokens for sale <= max amount'
    individualMinimumAmount = arg1
    individualMaximumAmount = arg2
    Mask(240, 0, stor8.field_16) = 0
}

function sub_9931750b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startDate:
        if block.timestamp >= startDate:
            revert with 0, 'Must not have started'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vesting Immediately Unlocked Basis Point > 10000'
    sub_9d5552b3 = arg1
}

function withdrawFunds() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not endDate:
        revert with 0, 'Must be finalized'
    if block.timestamp <= endDate:
        revert with 0, 'Must be finalized'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isOpen() {
    if not price:
        return not not price
    if not sub_0a1a8d3cAddress:
        return not not sub_0a1a8d3cAddress
    if not startDate:
        return not not startDate
    if block.timestamp < startDate:
        return block.timestamp >= startDate
    if endDate:
        if block.timestamp > endDate:
            return block.timestamp <= endDate
    if not individualMinimumAmount:
        return not not individualMinimumAmount
    if not individualMaximumAmount:
        return not not individualMaximumAmount
    return not not sub_579acacc
}

function withdrawUnsoldTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not endDate:
        revert with 0, 'Must be finalized'
    if block.timestamp <= endDate:
        revert with 0, 'Must be finalized'
    if sub_94838414:
        revert with 0, 'Unsold tokens redeemed'
    if tokensForSale < tokensAllocated:
        revert with 'NH{q', 17
    if tokensForSale - tokensAllocated > 0:
        Mask(248, 0, stor8.field_8) = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, tokensForSale - tokensAllocated
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Token transfer failed'
}

function cost(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not decimals:
        if arg1 and price > -1 / arg1:
            revert with 'NH{q', 17
        return (arg1 * price)
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if 10^decimals > -1:
            revert with 'NH{q', 17
        if arg1 and price > -1 / arg1:
            revert with 'NH{q', 17
        if not 10^decimals:
            revert with 'NH{q', 18
        return (arg1 * price / 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if arg1 and price > -1 / arg1:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    return (arg1 * price / t * s)
}

function totalRaiseCost() {
    if not decimals:
        if tokensForSale and price > -1 / tokensForSale:
            revert with 'NH{q', 17
        return (tokensForSale * price)
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if 10^decimals > -1:
            revert with 'NH{q', 17
        if tokensForSale and price > -1 / tokensForSale:
            revert with 'NH{q', 17
        if not 10^decimals:
            revert with 'NH{q', 18
        return (tokensForSale * price / 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if tokensForSale and price > -1 / tokensForSale:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    return (tokensForSale * price / t * s)
}

function getBuyers() {
    mem[64] = (32 * buyers.length) + 128
    mem[96] = buyers.length
    if not buyers.length:
        mem[(32 * buyers.length) + 128] = 32
        mem[(32 * buyers.length) + 160] = buyers.length
        idx = 0
        s = 128
        t = (32 * buyers.length) + 192
        while idx < buyers.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * buyers.length) + 128
           len (96 * buyers.length) + 64
    mem[128] = address(buyers.field_0)
    idx = 128
    s = 0
    while (32 * buyers.length) + 96 > idx:
        mem[idx + 32] = buyers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * buyers.length) + 128] = 32
    mem[(32 * buyers.length) + 160] = buyers.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < buyers.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * buyers.length) + -mem[64] + 192
}

function safePull() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
}

function removeOtherERC20Tokens(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not endDate:
        revert with 0, 'Must be finalized'
    if block.timestamp <= endDate:
        revert with 0, 'Must be finalized'
    if arg1 == tokenAddress:
        revert with 0, 'Cannot be pool token'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
}

function getWhitelistedAddresses() {
    mem[64] = (32 * whitelisted.length) + 128
    mem[96] = whitelisted.length
    if not whitelisted.length:
        mem[(32 * whitelisted.length) + 128] = 32
        mem[(32 * whitelisted.length) + 160] = whitelisted.length
        idx = 0
        s = 128
        t = (32 * whitelisted.length) + 192
        while idx < whitelisted.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * whitelisted.length) + 128
           len (96 * whitelisted.length) + 64
    mem[128] = address(whitelisted.field_0)
    idx = 128
    s = 0
    while (32 * whitelisted.length) + 96 > idx:
        mem[idx + 32] = whitelisted[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * whitelisted.length) + 128] = 32
    mem[(32 * whitelisted.length) + 160] = whitelisted.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < whitelisted.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * whitelisted.length) + -mem[64] + 192
}

function fund(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startDate:
        revert with 0, 'Must be pre-started'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -arg1 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + arg1 > tokensForSale:
        revert with 0, 'Available tokens + fund amount > tokens for sale'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Failed token transfer'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] == tokensForSale:
        isSaleFunded = 1
    stor5 = 1
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function remove(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a][address(msg.sender)].field_0:
        if arg2 >= whitelisted.length:
            revert with 'NH{q', 50
        if arg1 != whitelisted[arg2].field_0:
            revert with 0, 'not whitelisted'
        stor2[address(arg1)] = 0
        if arg2 >= whitelisted.length:
            revert with 'NH{q', 50
        whitelisted[arg2].field_0 = 0
        emit RemovedFromWhitelist(arg1);
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
}

function name() {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
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

function symbol() {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function add(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if roleAdmin[0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a][address(msg.sender)].field_0:
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            if bool(stor2[mem[(32 * idx) + 140 len 20]]) == 1:
                revert with 0, 'already whitelisted'
            if idx >= arg1.length:
                revert with 'NH{q', 50
            mem[32] = 2
            stor2[mem[(32 * idx) + 140 len 20]] = 1
            if idx >= arg1.length:
                revert with 'NH{q', 50
            whitelisted.length++
            mem[0] = 3
            whitelisted[whitelisted.length].field_0 = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        s = 128
        t = floor32(arg1.length) + 97
        while idx < arg1.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit AddedToWhitelist(sha3(mem[floor32(arg1.length) + 97 len 32 * arg1.length]));
    mem[floor32(arg1.length) + 129 len 42] = call.data[calldata.size len 42]
    mem[floor32(arg1.length) + 130 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + floor32(arg1.length) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[floor32(arg1.length) + 225 len 66] = call.data[calldata.size len 66]
    mem[floor32(arg1.length) + 226 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = 0x8619cecd8b9e095ab43867f5b69d492180450fe862e6b50bfbfb24b75dd84c8a
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + floor32(arg1.length) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    mem[floor32(arg1.length) + 353] = 'AccessControl: account '
    mem[floor32(arg1.length) + 376 len 64] = 0, mem[floor32(arg1.length) + 130 len 63]
    mem[floor32(arg1.length) + 418] = ' is missing role '
    mem[floor32(arg1.length) + 435 len 96] = 0, mem[floor32(arg1.length) + 226 len 95]
    mem[floor32(arg1.length) + 501] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[floor32(arg1.length) + 505] = 32
    mem[floor32(arg1.length) + 537] = mem[floor32(arg1.length) + 321]
    mem[floor32(arg1.length) + 569 len ceil32(mem[floor32(arg1.length) + 321])] = mem[floor32(arg1.length) + 353 len ceil32(mem[floor32(arg1.length) + 321])]
    if ceil32(mem[floor32(arg1.length) + 321]) > mem[floor32(arg1.length) + 321]:
        mem[floor32(arg1.length) + mem[floor32(arg1.length) + 321] + 569] = 0
    revert with 0, 32, mem[floor32(arg1.length) + 321], mem[floor32(arg1.length) + 569 len ceil32(mem[floor32(arg1.length) + 321])]
}

function swap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor5 = 2
    if stor0:
        revert with 0, 'Pausable: paused'
    if not isSaleFunded:
        revert with 0, 'Must be funded'
    if not price:
        revert with 0, 'Must be open'
    if not sub_0a1a8d3cAddress:
        revert with 0, 'Must be open'
    if not startDate:
        revert with 0, 'Must be open'
    if block.timestamp < startDate:
        revert with 0, 'Must be open'
    if endDate:
        if block.timestamp > endDate:
            revert with 0, 'Must be open'
    if not individualMinimumAmount:
        revert with 0, 'Must be open'
    if not individualMaximumAmount:
        revert with 0, 'Must be open'
    if not sub_579acacc:
        revert with 0, 'Must be open'
    if stor4:
        if not stor2[address(msg.sender)]:
            revert with 0, 'not whitelisted'
    if arg1 <= 0:
        revert with 0, 'Amount must be > 0'
    if tokensForSale < tokensAllocated:
        revert with 'NH{q', 17
    if arg1 > tokensForSale - tokensAllocated:
        revert with 0, 'Amount > tokens left'
    if not decimals:
        if arg1 and price > -1 / arg1:
            revert with 'NH{q', 17
        if arg1 * price != msg.value:
            revert with 0, 'Paid amount must be exact'
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if 10^decimals > -1:
                revert with 'NH{q', 17
            if arg1 and price > -1 / arg1:
                revert with 'NH{q', 17
            if not 10^decimals:
                revert with 'NH{q', 18
            if arg1 * price / 10^decimals != msg.value:
                revert with 0, 'Paid amount must be exact'
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and price > -1 / arg1:
                revert with 'NH{q', 17
            if not t * s:
                revert with 'NH{q', 18
            if arg1 * price / t * s != msg.value:
                revert with 0, 'Paid amount must be exact'
    require ext_code.size(sub_0a1a8d3cAddress)
    call sub_0a1a8d3cAddress.0xd72b9da2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -arg1 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + arg1 < individualMinimumAmount:
        revert with 0, 'Amount < min amount'
    if ext_call.return_data[0] > -arg1 - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + arg1 > individualMaximumAmount:
        revert with 0, 'Amount > max amount'
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_0a1a8d3cAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'failed to approve token transfer from pool to vesting'
    require ext_code.size(sub_0a1a8d3cAddress)
    call sub_0a1a8d3cAddress.0x358659bb with:
         gas gas_remaining wei
        args msg.sender, sub_579acacc, arg1, sub_9d5552b3, vestingDuration, sub_f97ee69d
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_call.return_data[0]:
        buyers.length++
        buyers[buyers.length].field_0 = msg.sender
    if tokensAllocated > -arg1 - 1:
        revert with 'NH{q', 17
    tokensAllocated += arg1
    emit 0x4d28b052: arg1, msg.value, block.timestamp, msg.sender
    stor5 = 1
}



}
