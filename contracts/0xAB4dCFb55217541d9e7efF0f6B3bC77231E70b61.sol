contract main {




// =====================  Runtime code  =====================


const sub_5ecc0222(?) = eth.balance(this.address)


address stor0;
mapping of uint8 stor1;
address sub_f5c35ea3Address;
uint256 sub_c40ce6f9;
uint256 sub_24d4d6ce;
uint256 sub_fd6cf78b;
uint256 sub_ac5227b3;
uint256 startTime;
uint256 endTime;
uint256 sub_a9c9b19c;
uint256 sub_df2ea3be;
uint256 sub_9dc738bd;
mapping of uint256 contribution;

function end_time() {
    return endTime
}

function getContribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contribution[address(arg1)]
}

function sub_24d4d6ce(?) {
    return sub_24d4d6ce
}

function contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return contribution[arg1]
}

function getEndTime() {
    return endTime
}

function start_time() {
    return startTime
}

function sub_900901e3(?) {
    return sub_9dc738bd
}

function sub_9dc738bd(?) {
    return sub_9dc738bd
}

function sub_a9c9b19c(?) {
    return sub_a9c9b19c
}

function sub_ac5227b3(?) {
    return sub_ac5227b3
}

function sub_c40ce6f9(?) {
    return sub_c40ce6f9
}

function getStartTime() {
    return startTime
}

function sub_df2ea3be(?) {
    return sub_df2ea3be
}

function sub_f5c35ea3(?) {
    return sub_f5c35ea3Address
}

function sub_fd6cf78b(?) {
    return sub_fd6cf78b
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function setEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    endTime = arg1
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    startTime = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function sub_96281f89(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    if sub_c40ce6f9 > !arg1:
        revert with 0, 17
    if sub_c40ce6f9 + arg1 < sub_c40ce6f9:
        revert with 0, 'SafeMath: addition overflow'
    sub_c40ce6f9 += arg1
}

function withdrawBNB(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    if not eth.balance(this.address):
        revert with 0, 'No BNB to withdraw'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    emit withdrawn(eth.balance(this.address), msg.sender);
}

function getInfo() {
    require ext_code.size(sub_f5c35ea3Address)
    staticcall sub_f5c35ea3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f5c35ea3Address)
    staticcall sub_f5c35ea3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0], sub_9dc738bd, startTime, endTime
}

function sub_b1e2548e(?) {
    require ext_code.size(sub_f5c35ea3Address)
    staticcall sub_f5c35ea3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'balance is 0'
    require ext_code.size(sub_f5c35ea3Address)
    staticcall sub_f5c35ea3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_32a6900c(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(sub_f5c35ea3Address)
    staticcall sub_f5c35ea3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No MAMP to withdraw'
    require ext_code.size(sub_f5c35ea3Address)
    call sub_f5c35ea3Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit withdrawn(ext_call.return_data[0], msg.sender);
}

function joinPool() payable {
    if block.timestamp <= startTime:
        revert with 0, 'Can't join pool yet'
    if block.timestamp >= endTime:
        revert with 0, 'Can't join pool more'
    if msg.value < sub_a9c9b19c:
        revert with 0, 'Can't be under min_buy_amount'
    if msg.value > sub_df2ea3be:
        revert with 0, 'Can't be over max_buy_amount'
    if not sub_24d4d6ce:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(sub_f5c35ea3Address)
    staticcall sub_f5c35ea3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= msg.value / sub_24d4d6ce:
        revert with 0, 'This pool has no enough Mamp than amountToBuy'
    require ext_code.size(sub_f5c35ea3Address)
    staticcall sub_f5c35ea3Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_f5c35ea3Address)
    if ext_call.return_data[0] > msg.value / sub_24d4d6ce:
        call sub_f5c35ea3Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value / sub_24d4d6ce
    else:
        staticcall sub_f5c35ea3Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_f5c35ea3Address)
        call sub_f5c35ea3Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if contribution[msg.sender] > !(msg.value / sub_24d4d6ce):
        revert with 0, 17
    if contribution[msg.sender] + (msg.value / sub_24d4d6ce) < contribution[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    contribution[msg.sender] += msg.value / sub_24d4d6ce
    if sub_9dc738bd > !msg.value:
        revert with 0, 17
    if sub_9dc738bd + msg.value < sub_9dc738bd:
        revert with 0, 'SafeMath: addition overflow'
    sub_9dc738bd += msg.value
    emit 0x25fca233: msg.value, msg.sender
    return (msg.value / sub_24d4d6ce)
}



}
