contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address owner; offset 8
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 endICO;
uint256 minPurchase;
uint256 maxPurchase;
uint256 availableTokensICO;

function rate() {
    return rate
}

function minPurchase() {
    return minPurchase
}

function weiRaised() {
    return weiRaised
}

function endICO() {
    return endICO
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function maxPurchase() {
    return maxPurchase
}

function availableTokensICO() {
    return availableTokensICO
}

function token() {
    return tokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rate = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setWalletReceiver(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    walletAddress = arg1
}

function setAvailableTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    availableTokensICO = arg1
}

function stopICO() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if endICO <= 0:
        revert with 0, 'ICO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'ICO must be active'
    if availableTokensICO <= 0:
        revert with 0, 'ICO must be active'
    endICO = 0
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Contract has no money'
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function takeTokens(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'BEP-20 balance is 0'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function startICO(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    availableTokensICO = ext_call.return_data[0]
    if arg1 <= block.timestamp:
        revert with 0, 'duration should be > 0'
    if availableTokensICO <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x73617661696c61626c65546f6b656e732073686f756c64206265203e203020616e64203c3d20746f74616c537570706c,
                    mem[212 len 16]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if availableTokensICO > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x73617661696c61626c65546f6b656e732073686f756c64206265203e203020616e64203c3d20746f74616c537570706c,
                    mem[212 len 16]
    if arg2 <= 0:
        revert with 0, '_minPurchase should > 0'
    endICO = arg1
    minPurchase = arg2
    maxPurchase = arg3
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    if not endICO:
        revert with 0, 'ICO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'ICO must be active'
    if availableTokensICO <= 0:
        revert with 0, 'ICO must be active'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7243726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if msg.value < minPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x796861766520746f2073656e64206174206c656173743a206d696e50757263686173,
                    mem[198 len 30]
    if msg.value > maxPurchase:
        revert with 0, 'have to send max: maxPurchase'
    if not msg.value:
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        if rate * msg.value / msg.value != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        availableTokensICO -= rate * msg.value / 100000
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), rate * msg.value / 100000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokensPurchased(msg.value, rate * msg.value / 100000, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function _fallback() payable {
    if endICO <= 0:
        revert with 0, 'Pre-Sale is closed'
    if block.timestamp >= endICO:
        revert with 0, 'Pre-Sale is closed'
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    if not endICO:
        revert with 0, 'ICO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'ICO must be active'
    if availableTokensICO <= 0:
        revert with 0, 'ICO must be active'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7243726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if msg.value < minPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x796861766520746f2073656e64206174206c656173743a206d696e50757263686173,
                    mem[198 len 30]
    if msg.value > maxPurchase:
        revert with 0, 'have to send max: maxPurchase'
    if not msg.value:
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        if rate * msg.value / msg.value != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        availableTokensICO -= rate * msg.value / 100000
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, rate * msg.value / 100000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokensPurchased(msg.value, rate * msg.value / 100000, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}



}
