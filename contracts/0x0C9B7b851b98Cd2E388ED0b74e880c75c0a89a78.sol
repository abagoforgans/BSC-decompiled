contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
mapping of uint256 _contributions;
mapping of uint8 stor3;
address _tokenAddress;
uint256 stor5;
address _walletAddress;
uint256 _rate;
uint256 _weiRaised;
uint256 endICO;
uint256 minPurchase;
uint256 maxPurchase;
uint256 hardCap;
uint256 softCap;
uint256 availableTokensICO;
uint256 liquidityTokens;
uint8 startRefund;
address stor16;
address stor16; offset 8

function _contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _contributions[arg1]
}

function minPurchase() {
    return minPurchase
}

function weiRaised() {
    return _weiRaised
}

function liquidityTokens() {
    return liquidityTokens
}

function endICO() {
    return endICO
}

function _wallet() {
    return _walletAddress
}

function _rate() {
    return _rate
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function _weiRaised() {
    return _weiRaised
}

function maxPurchase() {
    return maxPurchase
}

function availableTokensICO() {
    return availableTokensICO
}

function checkContribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _contributions[address(arg1)]
}

function startRefund() {
    return bool(startRefund)
}

function _token() {
    return _tokenAddress
}

function hardCap() {
    return hardCap
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'address is zero'
    stor3[address(arg1)] = 1
}

function setHardCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    hardCap = arg1
}

function setSoftCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    softCap = arg1
}

function setMaxPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    maxPurchase = arg1
}

function setMinPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    minPurchase = arg1
}

function setWalletReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    _walletAddress = arg1
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    _rate = arg1
}

function setAvailableTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    availableTokensICO = arg1
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

function startICO(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    if arg1 <= block.timestamp:
        revert with 0, 'duration should be > 0'
    endICO = arg1
    _weiRaised = 0
}

function sub_a38e2a32(?) {
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    require not startRefund
    if eth.balance(this.address) <= 0:
        revert with 0, 'Contract has no money'
    call _walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundMe() {
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    if bool(startRefund) != 1:
        revert with 0, 'no refund available'
    if eth.balance(this.address) >= _contributions[address(msg.sender)]:
        _contributions[address(msg.sender)] = 0
        if _contributions[address(msg.sender)] > 0:
            call msg.sender with:
               value _contributions[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Refund(msg.sender, _contributions[address(msg.sender)]);
}

function takeTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'BEP-20 balance is 0'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args _walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stopICO() {
    if not stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: only Admin can call this functionality'
    if endICO <= 0:
        revert with 0, 'ICO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'ICO must be active'
    if availableTokensICO <= 0:
        revert with 0, 'ICO must be active'
    endICO = 0
    if _weiRaised < softCap:
        startRefund = 1
    else:
        if eth.balance(this.address) and 70 > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        require ext_code.size(_tokenAddress)
        call _tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor16.field_0), liquidityTokens
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(stor16.field_8))
        call address(stor16.field_8).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value 70 * eth.balance(this.address) / 100 wei
             gas gas_remaining wei
            args _tokenAddress, liquidityTokens, 0, 0, _walletAddress, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        call _walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function claimTokens() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if endICO >= block.timestamp:
        revert with 0, 'ICO should not be active'
    if not stor5:
        if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
            revert with 'NH{q', 17
        require ext_code.size(_tokenAddress)
        call _tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _contributions[address(msg.sender)] * _rate
    else:
        if bool(bool(stor5 < 78)) or bool(bool(stor5 < 32)):
            if 10^stor5 > -1:
                revert with 'NH{q', 17
            if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
                revert with 'NH{q', 17
            if not 10^stor5:
                revert with 'NH{q', 18
            require ext_code.size(_tokenAddress)
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _contributions[address(msg.sender)] * _rate / 10^stor5
        else:
            s = 10
            t = 1
            idx = stor5
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
            if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
                revert with 'NH{q', 17
            if not t * s:
                revert with 'NH{q', 18
            require ext_code.size(_tokenAddress)
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _contributions[address(msg.sender)] * _rate / t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    _contributions[address(msg.sender)] = 0
    stor0 = 1
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if endICO <= 0:
        revert with 0, 'ICO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'ICO must be active'
    if availableTokensICO <= 0:
        revert with 0, 'ICO must be active'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: beneficiary is the zero address'
    if msg.value < minPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'have to send at least: minPurchase'
    if msg.value > maxPurchase:
        revert with 0, 'have to send max: maxPurchase'
    if _weiRaised > -msg.value - 1:
        revert with 'NH{q', 17
    if _weiRaised + msg.value >= hardCap:
        revert with 0, 'Hard Cap reached'
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if not stor5:
        if msg.value and _rate > -1 / msg.value:
            revert with 'NH{q', 17
        if _weiRaised > -msg.value - 1:
            revert with 'NH{q', 17
        _weiRaised += msg.value
        if availableTokensICO < msg.value * _rate:
            revert with 'NH{q', 17
        availableTokensICO += -1 * msg.value * _rate
        if _contributions[address(arg1)] > -msg.value - 1:
            revert with 'NH{q', 17
        _contributions[address(arg1)] += msg.value
        emit TokensPurchased(address(msg.sender), address(arg1), msg.value, msg.value * _rate);
    else:
        if bool(bool(stor5 < 78)) or bool(bool(stor5 < 32)):
            if 10^stor5 > -1:
                revert with 'NH{q', 17
            if msg.value and _rate > -1 / msg.value:
                revert with 'NH{q', 17
            if not 10^stor5:
                revert with 'NH{q', 18
            if _weiRaised > -msg.value - 1:
                revert with 'NH{q', 17
            _weiRaised += msg.value
            if availableTokensICO < msg.value * _rate / 10^stor5:
                revert with 'NH{q', 17
            availableTokensICO -= msg.value * _rate / 10^stor5
            if _contributions[address(arg1)] > -msg.value - 1:
                revert with 'NH{q', 17
            _contributions[address(arg1)] += msg.value
            emit TokensPurchased(address(msg.sender), address(arg1), msg.value, msg.value * _rate / 10^stor5);
        else:
            s = 10
            t = 1
            idx = stor5
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
            if msg.value and _rate > -1 / msg.value:
                revert with 'NH{q', 17
            if not t * s:
                revert with 'NH{q', 18
            if _weiRaised > -msg.value - 1:
                revert with 'NH{q', 17
            _weiRaised += msg.value
            if availableTokensICO < msg.value * _rate / t * s:
                revert with 'NH{q', 17
            availableTokensICO -= msg.value * _rate / t * s
            if _contributions[address(arg1)] > -msg.value - 1:
                revert with 'NH{q', 17
            _contributions[address(arg1)] += msg.value
            emit TokensPurchased(address(msg.sender), address(arg1), msg.value, msg.value * _rate / t * s);
    stor0 = 1
}



}
