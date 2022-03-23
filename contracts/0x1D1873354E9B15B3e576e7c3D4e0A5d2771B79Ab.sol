contract main {




// =====================  Runtime code  =====================


address creatorAddress;
address owner;
uint256 unlockDate;
uint256 createdAt;

function creator() {
    return creatorAddress
}

function unlockDate() {
    return unlockDate
}

function owner() {
    return owner
}

function createdAt() {
    return createdAt
}

function _fallback() payable {
    emit Received(msg.sender, msg.value);
}

function info() {
    return creatorAddress, owner, unlockDate, createdAt, eth.balance(this.address)
}

function withdraw() {
    require msg.sender == owner
    require block.timestamp >= unlockDate
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrew(msg.sender, eth.balance(this.address));
}

function withdrawTokens(address arg1) {
    require msg.sender == owner
    require block.timestamp >= unlockDate
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit WithdrewTokens(address(arg1), msg.sender, ext_call.return_data[0]);
}



}
