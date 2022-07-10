contract main {




// =====================  Runtime code  =====================


const PERCENT = 100


address owner;
mapping of struct users;
uint256 sub_f7fe4965;
uint256 maxBuyAmount;
uint256 minAmount;
uint256 maxAmount;
uint256 price;
uint256 feeRate;
uint256 sub_bc2c1e77;
address sub_0cd703eaAddress;
address fundAddress;

function sub_0cd703ea(?) {
    return sub_0cd703eaAddress
}

function maxAmount() {
    return maxAmount
}

function maxBuyAmount() {
    return maxBuyAmount
}

function owner() {
    return owner
}

function feeRate() {
    return feeRate
}

function minAmount() {
    return minAmount
}

function price() {
    return price
}

function users(address arg1) {
    require calldata.size - 4 >= 32
    return users[arg1].field_0, users[arg1].field_256
}

function sub_bc2c1e77(?) {
    return sub_bc2c1e77
}

function fundAddress() {
    return fundAddress
}

function sub_f7fe4965(?) {
    return sub_f7fe4965
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_ec3626d4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    sub_bc2c1e77 = arg1
}

function updateFundAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    fundAddress = arg1
}

function getTotalSupply() {
    require ext_code.size(sub_0cd703eaAddress)
    staticcall sub_0cd703eaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBurnAmount() {
    if sub_f7fe4965 > maxBuyAmount:
        return maxBuyAmount
    if not maxBuyAmount - sub_f7fe4965:
        return 0
    if (maxBuyAmount * price) - (sub_f7fe4965 * price) / maxBuyAmount - sub_f7fe4965 != price:
        revert with 0, 'SafeMath#mul: OVERFLOW'
    return ((maxBuyAmount * price) - (sub_f7fe4965 * price))
}

function sub_656f1396(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if arg1 > eth.balance(this.address):
        revert with 0, 'balance not enough'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function drawToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(sub_0cd703eaAddress)
    staticcall sub_0cd703eaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0cd703eaAddress)
    if arg1 <= ext_call.return_data[0]:
        call sub_0cd703eaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
    else:
        call sub_0cd703eaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw() {
    if block.timestamp < sub_bc2c1e77:
        revert with 0, 'not Over'
    if not users[msg.sender].field_256:
        revert with 0, 'no balance'
    users[msg.sender].field_256 = 0
    require ext_code.size(sub_0cd703eaAddress)
    staticcall sub_0cd703eaAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0cd703eaAddress)
    if users[msg.sender].field_256 <= ext_call.return_data[0]:
        call sub_0cd703eaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, users[msg.sender].field_256
    else:
        call sub_0cd703eaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(users[msg.sender].field_256, block.timestamp, msg.sender);
}

function getRedeemAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_0cd703eaAddress)
    staticcall sub_0cd703eaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(sub_0cd703eaAddress)
    staticcall sub_0cd703eaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if eth.balance(this.address) * arg1 / arg1 != eth.balance(this.address):
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        if ext_call.return_data[0]:
            return (eth.balance(this.address) * arg1 / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function close() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if sub_f7fe4965 > maxBuyAmount:
        require ext_code.size(sub_0cd703eaAddress)
        staticcall sub_0cd703eaAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if maxBuyAmount > ext_call.return_data[0]:
            revert with 0, 'balance not enough'
        sub_bc2c1e77 = block.timestamp
        require ext_code.size(sub_0cd703eaAddress)
        call sub_0cd703eaAddress.0x42966c68 with:
             gas gas_remaining wei
            args maxBuyAmount
    else:
        if not maxBuyAmount - sub_f7fe4965:
            require ext_code.size(sub_0cd703eaAddress)
            staticcall sub_0cd703eaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > ext_call.return_data[0]:
                revert with 0, 'balance not enough'
            sub_bc2c1e77 = block.timestamp
            require ext_code.size(sub_0cd703eaAddress)
            call sub_0cd703eaAddress.0x42966c68 with:
                 gas gas_remaining wei
                args 0
        else:
            if (maxBuyAmount * price) - (sub_f7fe4965 * price) / maxBuyAmount - sub_f7fe4965 != price:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            require ext_code.size(sub_0cd703eaAddress)
            staticcall sub_0cd703eaAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (maxBuyAmount * price) - (sub_f7fe4965 * price) > ext_call.return_data[0]:
                revert with 0, 'balance not enough'
            sub_bc2c1e77 = block.timestamp
            require ext_code.size(sub_0cd703eaAddress)
            call sub_0cd703eaAddress.0x42966c68 with:
                 gas gas_remaining wei
                args ((maxBuyAmount * price) - (sub_f7fe4965 * price))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp < sub_bc2c1e77:
        revert with 0, 'not Over'
    require ext_code.size(sub_0cd703eaAddress)
    staticcall sub_0cd703eaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no redeem'
    require ext_code.size(sub_0cd703eaAddress)
    staticcall sub_0cd703eaAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] <= 0:
            revert with 0, 'no redeem'
        if eth.balance(this.address) < 0 / ext_call.return_data[0]:
            revert with 0, 'no balance'
        require ext_code.size(sub_0cd703eaAddress)
        call sub_0cd703eaAddress.burnFrom(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call msg.sender with:
           value 0 / ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Redeem(0 / ext_call.return_data[0], arg1, block.timestamp, msg.sender);
    else:
        if eth.balance(this.address) * arg1 / arg1 != eth.balance(this.address):
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath#div: DIVISION_BY_ZERO'
        require ext_call.return_data[0]
        if eth.balance(this.address) * arg1 / ext_call.return_data[0] <= 0:
            revert with 0, 'no redeem'
        if eth.balance(this.address) < eth.balance(this.address) * arg1 / ext_call.return_data[0]:
            revert with 0, 'no balance'
        require ext_code.size(sub_0cd703eaAddress)
        call sub_0cd703eaAddress.burnFrom(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call msg.sender with:
           value eth.balance(this.address) * arg1 / ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Redeem(eth.balance(this.address) * arg1 / ext_call.return_data[0], arg1, block.timestamp, msg.sender);
}

function pay() payable {
    if block.timestamp >= sub_bc2c1e77:
        revert with 0, 'is Over'
    if sub_f7fe4965 > maxBuyAmount:
        revert with 0, 'SafeMath#sub: UNDERFLOW'
    if maxBuyAmount - sub_f7fe4965 < msg.value:
        revert with 0, 'balance not enough'
    if msg.value + users[msg.sender].field_0 < users[msg.sender].field_0:
        revert with 0, 'SafeMath#add: OVERFLOW'
    if msg.value + users[msg.sender].field_0 < minAmount:
        revert with 0, 'too low'
    if msg.value + users[msg.sender].field_0 < users[msg.sender].field_0:
        revert with 0, 'SafeMath#add: OVERFLOW'
    if msg.value + users[msg.sender].field_0 > maxAmount:
        revert with 0, 'too high'
    if not msg.value:
        if 0 > msg.value:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        call fundAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_0cd703eaAddress)
        call sub_0cd703eaAddress.0xa9059cbb with:
             gas gas_remaining wei
            args fundAddress, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value + users[msg.sender].field_0 < users[msg.sender].field_0:
            revert with 0, 'SafeMath#add: OVERFLOW'
        users[msg.sender].field_0 += msg.value
        if not msg.value:
            if users[msg.sender].field_256 < users[msg.sender].field_256:
                revert with 0, 'SafeMath#add: OVERFLOW'
        else:
            if price * msg.value / msg.value != price:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if (price * msg.value) + users[msg.sender].field_256 < users[msg.sender].field_256:
                revert with 0, 'SafeMath#add: OVERFLOW'
            users[msg.sender].field_256 += price * msg.value
        if msg.value + sub_f7fe4965 < sub_f7fe4965:
            revert with 0, 'SafeMath#add: OVERFLOW'
        sub_f7fe4965 += msg.value
        if not msg.value:
            emit Pay(msg.value, 0, block.timestamp, msg.sender);
        else:
            if price * msg.value / msg.value != price:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            emit Pay(msg.value, price * msg.value, block.timestamp, msg.sender);
    else:
        if feeRate * msg.value / msg.value != feeRate:
            revert with 0, 'SafeMath#mul: OVERFLOW'
        if feeRate * msg.value / 100 > msg.value:
            revert with 0, 'SafeMath#sub: UNDERFLOW'
        call fundAddress with:
           value feeRate * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not feeRate * msg.value / 100:
            require ext_code.size(sub_0cd703eaAddress)
            call sub_0cd703eaAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args fundAddress, 0
        else:
            if price * feeRate * msg.value / 100 / feeRate * msg.value / 100 != price:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            require ext_code.size(sub_0cd703eaAddress)
            call sub_0cd703eaAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args fundAddress, price * feeRate * msg.value / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value - (feeRate * msg.value / 100) + users[msg.sender].field_0 < users[msg.sender].field_0:
            revert with 0, 'SafeMath#add: OVERFLOW'
        users[msg.sender].field_0 = msg.value - (feeRate * msg.value / 100) + users[msg.sender].field_0
        if not msg.value - (feeRate * msg.value / 100):
            if users[msg.sender].field_256 < users[msg.sender].field_256:
                revert with 0, 'SafeMath#add: OVERFLOW'
        else:
            if (msg.value * price) - (feeRate * msg.value / 100 * price) / msg.value - (feeRate * msg.value / 100) != price:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            if (msg.value * price) - (feeRate * msg.value / 100 * price) + users[msg.sender].field_256 < users[msg.sender].field_256:
                revert with 0, 'SafeMath#add: OVERFLOW'
            users[msg.sender].field_256 = (msg.value * price) - (feeRate * msg.value / 100 * price) + users[msg.sender].field_256
        if msg.value + sub_f7fe4965 < sub_f7fe4965:
            revert with 0, 'SafeMath#add: OVERFLOW'
        sub_f7fe4965 += msg.value
        if not msg.value - (feeRate * msg.value / 100):
            emit Pay(msg.value, 0, block.timestamp, msg.sender);
        else:
            if (msg.value * price) - (feeRate * msg.value / 100 * price) / msg.value - (feeRate * msg.value / 100) != price:
                revert with 0, 'SafeMath#mul: OVERFLOW'
            emit Pay(msg.value, (msg.value * price) - (feeRate * msg.value / 100 * price), block.timestamp, msg.sender);
}



}
