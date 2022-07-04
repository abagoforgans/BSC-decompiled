contract main {




// =====================  Runtime code  =====================


const getBalancePresale = eth.balance(this.address)


address owner;
mapping of uint256 checkTotalBNB;
address tokenAddress;
uint256 minBuy;
uint256 maxBuy;
uint8 stor6;
uint8 stor6; offset 8
uint256 stor6; offset 8
uint256 _divider;
uint256 hard_cap;
uint256 totalBNB;

function _divider() {
    return _divider
}

function sub_5432d271(?) {
    return totalBNB
}

function hard_cap() {
    return hard_cap
}

function getTotalBNB() {
    return totalBNB
}

function maxBuy() {
    return maxBuy
}

function minBuy() {
    return minBuy
}

function sub_7d210785(?) {
    return bool(uint8(stor6.field_0))
}

function owner() {
    return owner
}

function claimStatus() {
    return bool(uint8(stor6.field_8))
}

function checkTotalBNB() {
    return checkTotalBNB[msg.sender]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeHardCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hard_cap = arg1
}

function setPresaleToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function changeStatusPresale(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_0) = uint8(arg1)
}

function changeStatusClaim(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor6.field_8) = Mask(248, 0, arg1)
}

function sub_140d486e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send'
}

function changeMinAndMax(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'No zero'
    if arg2 <= 0:
        revert with 0, 'No zero and minimum'
    if arg2 <= arg1:
        revert with 0, 'No zero and minimum'
    minBuy = arg1
    maxBuy = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOtherToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function checkTotalPresale() {
    if not _divider:
        revert with 0, 'SafeMath: division by zero', 0
    if not checkTotalBNB[address(msg.sender)] / _divider:
        return 0
    if checkTotalBNB[address(msg.sender)] / _divider and 100 * 10^6 > -1 / checkTotalBNB[address(msg.sender)] / _divider:
        revert with 0, 17
    if not checkTotalBNB[address(msg.sender)] / _divider:
        revert with 0, 18
    if 100 * 10^6 * checkTotalBNB[address(msg.sender)] / _divider / checkTotalBNB[address(msg.sender)] / _divider != 100 * 10^6:
        revert with 0, 'SafeMath: multiplication overflow'
    return (100 * 10^6 * checkTotalBNB[address(msg.sender)] / _divider)
}

function buyPresale() payable {
    if not uint8(stor6.field_0):
        revert with 0, 'Presale disabled'
    if msg.value > maxBuy:
        revert with 0, 'Error: max buy'
    if msg.value < minBuy:
        revert with 0, 'Error: min buy'
    if checkTotalBNB[msg.sender] >= maxBuy:
        revert with 0, 'Error: limit max buy'
    if totalBNB > !msg.value:
        revert with 0, 17
    if totalBNB + msg.value < totalBNB:
        revert with 0, 'SafeMath: addition overflow'
    if totalBNB + msg.value >= hard_cap:
        revert with 0, 'ERROR: Limit hard cap'
    if not checkTotalBNB[msg.sender]:
        checkTotalBNB[msg.sender] = msg.value
    else:
        if checkTotalBNB[msg.sender] > !msg.value:
            revert with 0, 17
        if checkTotalBNB[msg.sender] + msg.value < checkTotalBNB[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if checkTotalBNB[msg.sender] + msg.value > maxBuy:
            revert with 0, 'Error: limit max buy'
        if checkTotalBNB[msg.sender] > !msg.value:
            revert with 0, 17
        if checkTotalBNB[msg.sender] + msg.value < checkTotalBNB[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        checkTotalBNB[msg.sender] += msg.value
    if totalBNB > !msg.value:
        revert with 0, 17
    if totalBNB + msg.value < totalBNB:
        revert with 0, 'SafeMath: addition overflow'
    totalBNB += msg.value
}

function claimPresale() {
    if not uint8(stor6.field_8):
        revert with 0, 'Claim disabled'
    if not checkTotalBNB[msg.sender]:
        revert with 0, 'Zero claim'
    if not _divider:
        revert with 0, 'SafeMath: division by zero', 0
    if not checkTotalBNB[address(msg.sender)] / _divider:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'Zero token'
        checkTotalBNB[msg.sender] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if checkTotalBNB[address(msg.sender)] / _divider and 100 * 10^6 > -1 / checkTotalBNB[address(msg.sender)] / _divider:
            revert with 0, 17
        if not checkTotalBNB[address(msg.sender)] / _divider:
            revert with 0, 18
        if 100 * 10^6 * checkTotalBNB[address(msg.sender)] / _divider / checkTotalBNB[address(msg.sender)] / _divider != 100 * 10^6:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 100 * 10^6 * checkTotalBNB[address(msg.sender)] / _divider:
            revert with 0, 'Zero token'
        checkTotalBNB[msg.sender] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 100 * 10^6 * checkTotalBNB[address(msg.sender)] / _divider
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}



}
