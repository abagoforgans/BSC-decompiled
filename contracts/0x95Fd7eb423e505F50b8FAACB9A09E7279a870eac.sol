contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address adminAddress;
mapping of uint256 _contributions;
mapping of uint8 stor4;
mapping of address _indexAirdrop;
uint256 _totalAddresses;
uint256 _nextAddress;
address tokenAddress;
uint256 stor9;
address stor10;
uint256 stor11;
uint256 amountRaised;
uint256 stor13;
uint256 minPurchase;
uint256 maxPurchase;
uint256 changeFeeRecipient;
uint256 softcap;
uint256 tokensForPresale;
uint8 stor19;
uint8 stor19; offset 8
uint8 stor19; offset 16
uint8 stor19; offset 24
uint8 stor19; offset 32
uint8 stor19; offset 40
uint8 stor19; offset 48
uint8 stor19; offset 56
uint256 stor19; offset 56
uint256 stor19; offset 48
uint256 stor19; offset 40
uint256 stor19; offset 24
uint256 stor19; offset 16
uint256 stor19; offset 8

function _whiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[arg1])
}

function getMinPurchase() {
    return minPurchase
}

function getRefundAvailability() {
    return bool(uint8(stor19.field_0))
}

function getTokenAddress() {
    return tokenAddress
}

function _totalAddresses() {
    return _totalAddresses
}

function _contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _contributions[arg1]
}

function getContribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _contributions[address(arg1)]
}

function getClaimAvailability() {
    return bool(uint8(stor19.field_8))
}

function changeFeeRecipient(uint256 arg1, address arg2) {
    return changeFeeRecipient
}

function getAmountRaised() {
    return amountRaised
}

function getAdmin() {
    return adminAddress
}

function getIfWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function owner() {
    return owner
}

function getMaxPurchase() {
    return maxPurchase
}

function getTokensForPresale() {
    return tokensForPresale
}

function getIsRunning() {
    return bool(uint8(stor19.field_48))
}

function getAirdropAvailability() {
    return bool(uint8(stor19.field_16))
}

function getInWhitelistPeriod() {
    return bool(uint8(stor19.field_40))
}

function _indexAirdrop(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _indexAirdrop[arg1]
}

function getSoftcap() {
    return softcap
}

function getIsPrivate() {
    return bool(uint8(stor19.field_24))
}

function getIsFinalized() {
    return bool(uint8(stor19.field_56))
}

function _nextAddress() {
    return _nextAddress
}

function _fallback() payable {
    revert
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
}

function setSoftCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    softcap = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function setWalletReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
}

function setMaxPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPurchase = arg1
}

function setMinPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minPurchase = arg1
}

function setHardCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    changeFeeRecipient = arg1
}

function setRefund(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor19.field_0) = uint8(arg1)
}

function setAvailableTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokensForPresale = arg1
}

function setIsPrivate(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(232, 0, stor19.field_24) = Mask(232, 0, arg1)
}

function setClaimStarted(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor19.field_8) = Mask(248, 0, arg1)
}

function finishPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = 0
    Mask(208, 0, stor19.field_48) = 0
    Mask(200, 0, stor19.field_56) = 1
    if bool(uint8(stor19.field_32)) == 1:
        Mask(240, 0, stor19.field_16) = 1
}

function setInWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the admin'
    stor4[address(arg1)] = uint8(arg2)
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

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not uint8(stor19.field_0)
    if eth.balance(this.address) <= 0:
        revert with 0, 'Contract has no money'
    call stor10 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the admin'
    if eth.balance(this.address) >= _contributions[address(arg1)]:
        _contributions[address(arg1)] = 0
        if _contributions[address(arg1)] > 0:
            call arg1 with:
               value _contributions[address(arg1)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Refund(address(arg1), _contributions[address(arg1)]);
}

function refundMe() {
    if stor13 >= block.timestamp:
        revert with 0, 'ICO should not be active'
    if bool(uint8(stor19.field_0)) != 1:
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

function startPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13 <= block.timestamp:
        revert with 0, 'duration should be > 0'
    if minPurchase <= 0:
        revert with 0, '_minPurchase should > 0'
    Mask(208, 0, stor19.field_48) = 1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    tokensForPresale = ext_call.return_data[0]
    amountRaised = 0
    Mask(216, 0, stor19.field_40) = 0
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        args stor10, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addToWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the admin'
    idx = 0
    while uint8(idx) < arg1.length:
        if uint8(idx) >= arg1.length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            if adminAddress != msg.sender:
                revert with 0, 'Caller is not the admin'
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * uint8(idx)) + 140 len 20]] = 1
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}

function removeFromWhiteList(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        if adminAddress != msg.sender:
            revert with 0, 'Caller is not the admin'
    idx = 0
    while uint8(idx) < arg1.length:
        if uint8(idx) >= arg1.length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            if adminAddress != msg.sender:
                revert with 0, 'Caller is not the admin'
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * uint8(idx)) + 140 len 20]] = 0
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
}

function getTokenShare(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9:
        if not _contributions[address(arg1)]:
            return 0
        if _contributions[address(arg1)] and stor11 > -1 / _contributions[address(arg1)]:
            revert with 'NH{q', 17
        if not _contributions[address(arg1)]:
            revert with 'NH{q', 18
        if _contributions[address(arg1)] * stor11 / _contributions[address(arg1)] != stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return (_contributions[address(arg1)] * stor11)
    if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
        if 10^stor9 > -1:
            revert with 'NH{q', 17
        if not _contributions[address(arg1)]:
            if 10^stor9 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^stor9:
                revert with 'NH{q', 18
            return (0 / 10^stor9)
        if _contributions[address(arg1)] and stor11 > -1 / _contributions[address(arg1)]:
            revert with 'NH{q', 17
        if not _contributions[address(arg1)]:
            revert with 'NH{q', 18
        if _contributions[address(arg1)] * stor11 / _contributions[address(arg1)] != stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 10^stor9 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^stor9:
            revert with 'NH{q', 18
        return (_contributions[address(arg1)] * stor11 / 10^stor9)
    s = 10
    t = 1
    idx = stor9
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
    if not _contributions[address(arg1)]:
        if t * s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t * s:
            revert with 'NH{q', 18
        return (0 / t * s)
    if _contributions[address(arg1)] and stor11 > -1 / _contributions[address(arg1)]:
        revert with 'NH{q', 17
    if not _contributions[address(arg1)]:
        revert with 'NH{q', 18
    if _contributions[address(arg1)] * stor11 / _contributions[address(arg1)] != stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if t * s <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not t * s:
        revert with 'NH{q', 18
    return (_contributions[address(arg1)] * stor11 / t * s)
}

function claim() {
    if stor13 >= block.timestamp:
        revert with 0, 'ICO should not be active'
    if uint8(stor19.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'presale did not reach softcap, refund started'
    if bool(uint8(stor19.field_8)) != 1:
        revert with 0, 'claim is not available yet'
    if _contributions[address(msg.sender)] > 0:
        if not stor9:
            if not _contributions[address(msg.sender)]:
                _contributions[address(msg.sender)] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TokensDelivered(msg.sender, 0);
            else:
                if _contributions[address(msg.sender)] and stor11 > -1 / _contributions[address(msg.sender)]:
                    revert with 'NH{q', 17
                if not _contributions[address(msg.sender)]:
                    revert with 'NH{q', 18
                if _contributions[address(msg.sender)] * stor11 / _contributions[address(msg.sender)] != stor11:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                _contributions[address(msg.sender)] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, _contributions[address(msg.sender)] * stor11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit TokensDelivered(msg.sender, _contributions[address(msg.sender)] * stor11);
        else:
            if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                if 10^stor9 > -1:
                    revert with 'NH{q', 17
                if not _contributions[address(msg.sender)]:
                    if 10^stor9 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^stor9:
                        revert with 'NH{q', 18
                    _contributions[address(msg.sender)] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / 10^stor9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit TokensDelivered(msg.sender, 0 / 10^stor9);
                else:
                    if _contributions[address(msg.sender)] and stor11 > -1 / _contributions[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if not _contributions[address(msg.sender)]:
                        revert with 'NH{q', 18
                    if _contributions[address(msg.sender)] * stor11 / _contributions[address(msg.sender)] != stor11:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if 10^stor9 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not 10^stor9:
                        revert with 'NH{q', 18
                    _contributions[address(msg.sender)] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _contributions[address(msg.sender)] * stor11 / 10^stor9
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit TokensDelivered(msg.sender, _contributions[address(msg.sender)] * stor11 / 10^stor9);
            else:
                s = 10
                t = 1
                idx = stor9
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
                if not _contributions[address(msg.sender)]:
                    if t * s <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not t * s:
                        revert with 'NH{q', 18
                    _contributions[address(msg.sender)] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / t * s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit TokensDelivered(msg.sender, 0 / t * s);
                else:
                    if _contributions[address(msg.sender)] and stor11 > -1 / _contributions[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if not _contributions[address(msg.sender)]:
                        revert with 'NH{q', 18
                    if _contributions[address(msg.sender)] * stor11 / _contributions[address(msg.sender)] != stor11:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if t * s <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not t * s:
                        revert with 'NH{q', 18
                    _contributions[address(msg.sender)] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, _contributions[address(msg.sender)] * stor11 / t * s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit TokensDelivered(msg.sender, _contributions[address(msg.sender)] * stor11 / t * s);
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if bool(uint8(stor19.field_48)) != 1:
        revert with 0, 'Presale did not start yet'
    if stor13 <= 0:
        revert with 0, 'ICO must be active'
    if block.timestamp >= stor13:
        revert with 0, 'ICO must be active'
    if tokensForPresale <= 0:
        revert with 0, 'ICO must be active'
    if uint8(stor19.field_24):
        if bool(stor4[address(arg1)]) != 1:
            revert with 0, 'Not whitelisted'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: beneficiary is the zero address'
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if msg.value < minPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'have to send at least: minPurchase'
    if msg.value > maxPurchase:
        revert with 0, 'have to send max: maxPurchase'
    if amountRaised > -msg.value - 1:
        revert with 'NH{q', 17
    if amountRaised + msg.value > changeFeeRecipient:
        revert with 0, 'Hard Cap reached'
    if _contributions[address(arg1)] > -msg.value - 1:
        revert with 'NH{q', 17
    if _contributions[address(arg1)] + msg.value > maxPurchase:
        revert with 0, 'maxPurchase reached'
    if not stor9:
        if not msg.value:
            if amountRaised > -msg.value - 1:
                revert with 'NH{q', 17
            if amountRaised + msg.value < amountRaised:
                revert with 0, 'SafeMath: addition overflow'
            amountRaised += msg.value
            if tokensForPresale < 0:
                revert with 'NH{q', 17
            if not _contributions[address(arg1)]:
                _indexAirdrop[stor6] = arg1
                if _totalAddresses > -2:
                    revert with 'NH{q', 17
                _totalAddresses++
            if _contributions[address(arg1)] > -msg.value - 1:
                revert with 'NH{q', 17
            if _contributions[address(arg1)] + msg.value < _contributions[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            _contributions[address(arg1)] += msg.value
            emit TokensPurchased(msg.sender, address(arg1), msg.value, 0);
        else:
            if msg.value and stor11 > -1 / msg.value:
                revert with 'NH{q', 17
            if not msg.value:
                revert with 'NH{q', 18
            if msg.value * stor11 / msg.value != stor11:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if amountRaised > -msg.value - 1:
                revert with 'NH{q', 17
            if amountRaised + msg.value < amountRaised:
                revert with 0, 'SafeMath: addition overflow'
            amountRaised += msg.value
            if tokensForPresale < msg.value * stor11:
                revert with 'NH{q', 17
            tokensForPresale += -1 * msg.value * stor11
            if not _contributions[address(arg1)]:
                _indexAirdrop[stor6] = arg1
                if _totalAddresses > -2:
                    revert with 'NH{q', 17
                _totalAddresses++
            if _contributions[address(arg1)] > -msg.value - 1:
                revert with 'NH{q', 17
            if _contributions[address(arg1)] + msg.value < _contributions[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            _contributions[address(arg1)] += msg.value
            emit TokensPurchased(msg.sender, address(arg1), msg.value, msg.value * stor11);
    else:
        if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
            if 10^stor9 > -1:
                revert with 'NH{q', 17
            if not msg.value:
                if 10^stor9 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^stor9:
                    revert with 'NH{q', 18
                if amountRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                if amountRaised + msg.value < amountRaised:
                    revert with 0, 'SafeMath: addition overflow'
                amountRaised += msg.value
                if tokensForPresale < 0 / 10^stor9:
                    revert with 'NH{q', 17
                tokensForPresale -= 0 / 10^stor9
                if not _contributions[address(arg1)]:
                    _indexAirdrop[stor6] = arg1
                    if _totalAddresses > -2:
                        revert with 'NH{q', 17
                    _totalAddresses++
                if _contributions[address(arg1)] > -msg.value - 1:
                    revert with 'NH{q', 17
                if _contributions[address(arg1)] + msg.value < _contributions[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _contributions[address(arg1)] += msg.value
                emit TokensPurchased(msg.sender, address(arg1), msg.value, 0 / 10^stor9);
            else:
                if msg.value and stor11 > -1 / msg.value:
                    revert with 'NH{q', 17
                if not msg.value:
                    revert with 'NH{q', 18
                if msg.value * stor11 / msg.value != stor11:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if 10^stor9 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^stor9:
                    revert with 'NH{q', 18
                if amountRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                if amountRaised + msg.value < amountRaised:
                    revert with 0, 'SafeMath: addition overflow'
                amountRaised += msg.value
                if tokensForPresale < msg.value * stor11 / 10^stor9:
                    revert with 'NH{q', 17
                tokensForPresale -= msg.value * stor11 / 10^stor9
                if not _contributions[address(arg1)]:
                    _indexAirdrop[stor6] = arg1
                    if _totalAddresses > -2:
                        revert with 'NH{q', 17
                    _totalAddresses++
                if _contributions[address(arg1)] > -msg.value - 1:
                    revert with 'NH{q', 17
                if _contributions[address(arg1)] + msg.value < _contributions[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _contributions[address(arg1)] += msg.value
                emit TokensPurchased(msg.sender, address(arg1), msg.value, msg.value * stor11 / 10^stor9);
        else:
            s = 10
            t = 1
            idx = stor9
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
            if not msg.value:
                if t * s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t * s:
                    revert with 'NH{q', 18
                if amountRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                if amountRaised + msg.value < amountRaised:
                    revert with 0, 'SafeMath: addition overflow'
                amountRaised += msg.value
                if tokensForPresale < 0 / t * s:
                    revert with 'NH{q', 17
                tokensForPresale -= 0 / t * s
                if not _contributions[address(arg1)]:
                    _indexAirdrop[stor6] = arg1
                    if _totalAddresses > -2:
                        revert with 'NH{q', 17
                    _totalAddresses++
                if _contributions[address(arg1)] > -msg.value - 1:
                    revert with 'NH{q', 17
                if _contributions[address(arg1)] + msg.value < _contributions[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _contributions[address(arg1)] += msg.value
                emit TokensPurchased(msg.sender, address(arg1), msg.value, 0 / t * s);
            else:
                if msg.value and stor11 > -1 / msg.value:
                    revert with 'NH{q', 17
                if not msg.value:
                    revert with 'NH{q', 18
                if msg.value * stor11 / msg.value != stor11:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if t * s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t * s:
                    revert with 'NH{q', 18
                if amountRaised > -msg.value - 1:
                    revert with 'NH{q', 17
                if amountRaised + msg.value < amountRaised:
                    revert with 0, 'SafeMath: addition overflow'
                amountRaised += msg.value
                if tokensForPresale < msg.value * stor11 / t * s:
                    revert with 'NH{q', 17
                tokensForPresale -= msg.value * stor11 / t * s
                if not _contributions[address(arg1)]:
                    _indexAirdrop[stor6] = arg1
                    if _totalAddresses > -2:
                        revert with 'NH{q', 17
                    _totalAddresses++
                if _contributions[address(arg1)] > -msg.value - 1:
                    revert with 'NH{q', 17
                if _contributions[address(arg1)] + msg.value < _contributions[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                _contributions[address(arg1)] += msg.value
                emit TokensPurchased(msg.sender, address(arg1), msg.value, msg.value * stor11 / t * s);
    stor0 = 1
}

function getTokensToDeposit() {
    if not stor9:
        if not changeFeeRecipient:
            if not stor9:
                return 0
            if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                if 10^stor9 > -1:
                    revert with 'NH{q', 17
                if 10^stor9 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^stor9:
                    revert with 'NH{q', 18
                return (0 / 10^stor9)
            s = 10
            t = 1
            idx = stor9
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
            if t * s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t * s:
                revert with 'NH{q', 18
            return (0 / t * s)
        if changeFeeRecipient and stor11 > -1 / changeFeeRecipient:
            revert with 'NH{q', 17
        if not changeFeeRecipient:
            revert with 'NH{q', 18
        if changeFeeRecipient * stor11 / changeFeeRecipient != stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not stor9:
            if changeFeeRecipient * stor11 > -(changeFeeRecipient * stor11 / 100) - 1:
                revert with 'NH{q', 17
            return ((changeFeeRecipient * stor11) + (changeFeeRecipient * stor11 / 100))
        if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
            if 10^stor9 > -1:
                revert with 'NH{q', 17
            if changeFeeRecipient * stor11 > -(changeFeeRecipient * stor11 / 100) - 1:
                revert with 'NH{q', 17
            if 10^stor9 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^stor9:
                revert with 'NH{q', 18
            return ((changeFeeRecipient * stor11) + (changeFeeRecipient * stor11 / 100) / 10^stor9)
        s = 10
        t = 1
        idx = stor9
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
        if changeFeeRecipient * stor11 > -(changeFeeRecipient * stor11 / 100) - 1:
            revert with 'NH{q', 17
        if t * s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t * s:
            revert with 'NH{q', 18
        return ((changeFeeRecipient * stor11) + (changeFeeRecipient * stor11 / 100) / t * s)
    if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
        if 10^stor9 > -1:
            revert with 'NH{q', 17
        if not changeFeeRecipient:
            if 10^stor9 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^stor9:
                revert with 'NH{q', 18
            if not stor9:
                if 0 / 10^stor9 > -(0 / 10^stor9 / 100) - 1:
                    revert with 'NH{q', 17
                return ((0 / 10^stor9) + (0 / 10^stor9 / 100))
            if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                if 10^stor9 > -1:
                    revert with 'NH{q', 17
                if 0 / 10^stor9 > -(0 / 10^stor9 / 100) - 1:
                    revert with 'NH{q', 17
                if 10^stor9 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not 10^stor9:
                    revert with 'NH{q', 18
                return ((0 / 10^stor9) + (0 / 10^stor9 / 100) / 10^stor9)
            s = 10
            t = 1
            idx = stor9
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
            if 0 / 10^stor9 > -(0 / 10^stor9 / 100) - 1:
                revert with 'NH{q', 17
            if t * s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t * s:
                revert with 'NH{q', 18
            return ((0 / 10^stor9) + (0 / 10^stor9 / 100) / t * s)
        if changeFeeRecipient and stor11 > -1 / changeFeeRecipient:
            revert with 'NH{q', 17
        if not changeFeeRecipient:
            revert with 'NH{q', 18
        if changeFeeRecipient * stor11 / changeFeeRecipient != stor11:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 10^stor9 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^stor9:
            revert with 'NH{q', 18
        if not stor9:
            if changeFeeRecipient * stor11 / 10^stor9 > -(changeFeeRecipient * stor11 / 10^stor9 / 100) - 1:
                revert with 'NH{q', 17
            return ((changeFeeRecipient * stor11 / 10^stor9) + (changeFeeRecipient * stor11 / 10^stor9 / 100))
        if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
            if 10^stor9 > -1:
                revert with 'NH{q', 17
            if changeFeeRecipient * stor11 / 10^stor9 > -(changeFeeRecipient * stor11 / 10^stor9 / 100) - 1:
                revert with 'NH{q', 17
            if 10^stor9 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^stor9:
                revert with 'NH{q', 18
            return ((changeFeeRecipient * stor11 / 10^stor9) + (changeFeeRecipient * stor11 / 10^stor9 / 100) / 10^stor9)
        s = 10
        t = 1
        idx = stor9
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
        if changeFeeRecipient * stor11 / 10^stor9 > -(changeFeeRecipient * stor11 / 10^stor9 / 100) - 1:
            revert with 'NH{q', 17
        if t * s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t * s:
            revert with 'NH{q', 18
        return ((changeFeeRecipient * stor11 / 10^stor9) + (changeFeeRecipient * stor11 / 10^stor9 / 100) / t * s)
    s = 10
    t = 1
    idx = stor9
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
    if not changeFeeRecipient:
        if t * s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t * s:
            revert with 'NH{q', 18
        if not stor9:
            if 0 / t * s > -(0 / t * s / 100) - 1:
                revert with 'NH{q', 17
            return ((0 / t * s) + (0 / t * s / 100))
        if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
            if 10^stor9 > -1:
                revert with 'NH{q', 17
            if 0 / t * s > -(0 / t * s / 100) - 1:
                revert with 'NH{q', 17
            if 10^stor9 <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^stor9:
                revert with 'NH{q', 18
            return ((0 / t * s) + (0 / t * s / 100) / 10^stor9)
        u = 10
        v = 1
        idx = stor9
        while idx > 1:
            if u > -1 / u:
                revert with 'NH{q', 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = v * u
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 'NH{q', 17
        if 0 / t * s > -(0 / t * s / 100) - 1:
            revert with 'NH{q', 17
        if v * u <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not v * u:
            revert with 'NH{q', 18
        return ((0 / t * s) + (0 / t * s / 100) / v * u)
    if changeFeeRecipient and stor11 > -1 / changeFeeRecipient:
        revert with 'NH{q', 17
    if not changeFeeRecipient:
        revert with 'NH{q', 18
    if changeFeeRecipient * stor11 / changeFeeRecipient != stor11:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if t * s <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not t * s:
        revert with 'NH{q', 18
    if not stor9:
        if changeFeeRecipient * stor11 / t * s > -(changeFeeRecipient * stor11 / t * s / 100) - 1:
            revert with 'NH{q', 17
        return ((changeFeeRecipient * stor11 / t * s) + (changeFeeRecipient * stor11 / t * s / 100))
    if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
        if 10^stor9 > -1:
            revert with 'NH{q', 17
        if changeFeeRecipient * stor11 / t * s > -(changeFeeRecipient * stor11 / t * s / 100) - 1:
            revert with 'NH{q', 17
        if 10^stor9 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not 10^stor9:
            revert with 'NH{q', 18
        return ((changeFeeRecipient * stor11 / t * s) + (changeFeeRecipient * stor11 / t * s / 100) / 10^stor9)
    u = 10
    v = 1
    idx = stor9
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    if changeFeeRecipient * stor11 / t * s > -(changeFeeRecipient * stor11 / t * s / 100) - 1:
        revert with 'NH{q', 17
    if v * u <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not v * u:
        revert with 'NH{q', 18
    return ((changeFeeRecipient * stor11 / t * s) + (changeFeeRecipient * stor11 / t * s / 100) / v * u)
}

function autoAirdrop() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    s = 0
    s = 0
    while _nextAddress < _totalAddresses:
        mem[0] = _indexAirdrop[stor7]
        mem[32] = 3
        if _contributions[stor5[stor7]] > 0:
            mem[0] = _indexAirdrop[stor7]
            mem[32] = 3
            if not stor9:
                if not _contributions[stor5[stor7]]:
                    _73 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_73] = 26
                    mem[_73 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = _indexAirdrop[stor7]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _indexAirdrop[stor7], 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _95 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_95] == bool(mem[_95])
                    mem[0] = _indexAirdrop[stor7]
                    mem[32] = 3
                    _contributions[stor5[stor7]] = 0
                    mem[mem[64]] = _indexAirdrop[stor7]
                    mem[mem[64] + 32] = 0
                    emit Airdrop(_indexAirdrop[stor7], 0);
                else:
                    if _contributions[stor5[stor7]] and stor11 > -1 / _contributions[stor5[stor7]]:
                        revert with 'NH{q', 17
                    if not _contributions[stor5[stor7]]:
                        revert with 'NH{q', 18
                    if _contributions[stor5[stor7]] * stor11 / _contributions[stor5[stor7]] != stor11:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _80 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_80] = 26
                    mem[_80 + 32] = 'SafeMath: division by zero'
                    mem[mem[64] + 4] = _indexAirdrop[stor7]
                    mem[mem[64] + 36] = _contributions[stor5[stor7]] * stor11
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args _indexAirdrop[stor7], _contributions[stor5[stor7]] * stor11
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _113 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_113] == bool(mem[_113])
                    mem[0] = _indexAirdrop[stor7]
                    mem[32] = 3
                    _contributions[stor5[stor7]] = 0
                    mem[mem[64]] = _indexAirdrop[stor7]
                    mem[mem[64] + 32] = _contributions[stor5[stor7]] * stor11
                    emit Airdrop(_indexAirdrop[stor7], _contributions[stor5[stor7]] * stor11);
            else:
                if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                    if 10^stor9 > -1:
                        revert with 'NH{q', 17
                    if not _contributions[stor5[stor7]]:
                        _74 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_74] = 26
                        mem[_74 + 32] = 'SafeMath: division by zero'
                        if 10^stor9 <= 0:
                            _75 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_75 + idx + 68] = mem[_74 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_75 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _75 + -mem[64] + 100
                        if not 10^stor9:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = _indexAirdrop[stor7]
                        mem[mem[64] + 36] = 0 / 10^stor9
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _indexAirdrop[stor7], 0 / 10^stor9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _101 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_101] == bool(mem[_101])
                        mem[0] = _indexAirdrop[stor7]
                        mem[32] = 3
                        _contributions[stor5[stor7]] = 0
                        mem[mem[64]] = _indexAirdrop[stor7]
                        mem[mem[64] + 32] = 0 / 10^stor9
                        emit Airdrop(_indexAirdrop[stor7], 0 / 10^stor9);
                    else:
                        if _contributions[stor5[stor7]] and stor11 > -1 / _contributions[stor5[stor7]]:
                            revert with 'NH{q', 17
                        if not _contributions[stor5[stor7]]:
                            revert with 'NH{q', 18
                        if _contributions[stor5[stor7]] * stor11 / _contributions[stor5[stor7]] != stor11:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _85 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_85] = 26
                        mem[_85 + 32] = 'SafeMath: division by zero'
                        if 10^stor9 <= 0:
                            _88 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_88 + idx + 68] = mem[_85 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_88 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _88 + -mem[64] + 100
                        if not 10^stor9:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = _indexAirdrop[stor7]
                        mem[mem[64] + 36] = _contributions[stor5[stor7]] * stor11 / 10^stor9
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _indexAirdrop[stor7], _contributions[stor5[stor7]] * stor11 / 10^stor9
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_120] == bool(mem[_120])
                        mem[0] = _indexAirdrop[stor7]
                        mem[32] = 3
                        _contributions[stor5[stor7]] = 0
                        mem[mem[64]] = _indexAirdrop[stor7]
                        mem[mem[64] + 32] = _contributions[stor5[stor7]] * stor11 / 10^stor9
                        emit Airdrop(_indexAirdrop[stor7], _contributions[stor5[stor7]] * stor11 / 10^stor9);
                else:
                    s = 10
                    t = 1
                    idx = stor9
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
                    if not _contributions[stor5[stor7]]:
                        _143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_143] = 26
                        mem[_143 + 32] = 'SafeMath: division by zero'
                        if t * s <= 0:
                            _144 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_144 + idx + 68] = mem[_143 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_144 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _144 + -mem[64] + 100
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = _indexAirdrop[stor7]
                        mem[mem[64] + 36] = 0 / t * s
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _indexAirdrop[stor7], 0 / t * s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_157] == bool(mem[_157])
                        mem[0] = _indexAirdrop[stor7]
                        mem[32] = 3
                        _contributions[stor5[stor7]] = 0
                        mem[mem[64]] = _indexAirdrop[stor7]
                        mem[mem[64] + 32] = 0 / t * s
                        emit Airdrop(_indexAirdrop[stor7], 0 / t * s);
                    else:
                        if _contributions[stor5[stor7]] and stor11 > -1 / _contributions[stor5[stor7]]:
                            revert with 'NH{q', 17
                        if not _contributions[stor5[stor7]]:
                            revert with 'NH{q', 18
                        if _contributions[stor5[stor7]] * stor11 / _contributions[stor5[stor7]] != stor11:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _149 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_149] = 26
                        mem[_149 + 32] = 'SafeMath: division by zero'
                        if t * s <= 0:
                            _150 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_150 + idx + 68] = mem[_149 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_150 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _150 + -mem[64] + 100
                        if not t * s:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = _indexAirdrop[stor7]
                        mem[mem[64] + 36] = _contributions[stor5[stor7]] * stor11 / t * s
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args _indexAirdrop[stor7], _contributions[stor5[stor7]] * stor11 / t * s
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_165] == bool(mem[_165])
                        mem[0] = _indexAirdrop[stor7]
                        mem[32] = 3
                        _contributions[stor5[stor7]] = 0
                        mem[mem[64]] = _indexAirdrop[stor7]
                        mem[mem[64] + 32] = _contributions[stor5[stor7]] * stor11 / t * s
                        emit Airdrop(_indexAirdrop[stor7], _contributions[stor5[stor7]] * stor11 / t * s);
        if _nextAddress == -1:
            revert with 'NH{q', 17
        _nextAddress++
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        if gas_remaining >= 0:
            s = gas_remaining
            s = _indexAirdrop[stor7]
            continue 
}

function sendAirdrop(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        if uint8(idx) >= mem[96]:
            revert with 'NH{q', 50
        _612 = mem[(32 * uint8(idx)) + 128]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 3
        if _contributions[mem[(32 * uint8(idx)) + 140 len 20]] <= 0:
            _614 = sha3(address(mem[(32 * uint8(idx)) + 128]), 3)
            if not stor9:
                if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                    _616 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_616] = 26
                    mem[_616 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0
                    emit Airdrop(address(_612), 0);
                else:
                    if _contributions[address(mem[(32 * uint8(idx)) + 128])] and stor11 > -1 / _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                        revert with 'NH{q', 17
                    if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                        revert with 'NH{q', 18
                    if _contributions[address(mem[(32 * uint8(idx)) + 128])] * stor11 / _contributions[address(mem[(32 * uint8(idx)) + 128])] != stor11:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_630] = 26
                    mem[_630 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = stor[_614] * stor11
                    emit Airdrop(address(_612), stor[_614] * stor11);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                if 10^stor9 > -1:
                    revert with 'NH{q', 17
                if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                    _618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_618] = 26
                    mem[_618 + 32] = 'SafeMath: division by zero'
                    if 10^stor9 > 0:
                        if not 10^stor9:
                            revert with 'NH{q', 18
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = 0 / 10^stor9
                        emit Airdrop(address(_612), 0 / 10^stor9);
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = _612
                        continue 
                    _620 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_620 + idx + 68] = mem[_618 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_620 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _620 + -mem[64] + 100
                if _contributions[address(mem[(32 * uint8(idx)) + 128])] and stor11 > -1 / _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                    revert with 'NH{q', 17
                if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                    revert with 'NH{q', 18
                if _contributions[address(mem[(32 * uint8(idx)) + 128])] * stor11 / _contributions[address(mem[(32 * uint8(idx)) + 128])] != stor11:
                    revert with 0, 'SafeMath: multiplication overflow'
                _640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_640] = 26
                mem[_640 + 32] = 'SafeMath: division by zero'
                if 10^stor9 > 0:
                    if not 10^stor9:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = stor[_614] * stor11 / 10^stor9
                    emit Airdrop(address(_612), stor[_614] * stor11 / 10^stor9);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _645 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_645 + idx + 68] = mem[_640 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_645 + 94] = 0
                revert with memory
                  from mem[64]
                   len _645 + -mem[64] + 100
            t = 10
            u = 1
            s = stor9
            while s > 1:
                if t > -1 / t:
                    revert with 'NH{q', 17
                if not bool(s):
                    t = t * t
                    u = u
                    s = uint255(s) * 0.5
                    continue 
                t = t * t
                u = u * t
                s = uint255(s) * 0.5
                continue 
            if u > -1 / t:
                revert with 'NH{q', 17
            if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                _948 = mem[64]
                mem[64] = mem[64] + 64
                mem[_948] = 26
                mem[_948 + 32] = 'SafeMath: division by zero'
                if u * t > 0:
                    if not u * t:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0 / u * t
                    emit Airdrop(address(_612), 0 / u * t);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _954 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_954 + idx + 68] = mem[_948 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_954 + 94] = 0
                revert with memory
                  from mem[64]
                   len _954 + -mem[64] + 100
            if _contributions[address(mem[(32 * uint8(idx)) + 128])] and stor11 > -1 / _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                revert with 'NH{q', 17
            if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                revert with 'NH{q', 18
            if _contributions[address(mem[(32 * uint8(idx)) + 128])] * stor11 / _contributions[address(mem[(32 * uint8(idx)) + 128])] != stor11:
                revert with 0, 'SafeMath: multiplication overflow'
            _984 = mem[64]
            mem[64] = mem[64] + 64
            mem[_984] = 26
            mem[_984 + 32] = 'SafeMath: division by zero'
            if u * t > 0:
                if not u * t:
                    revert with 'NH{q', 18
                mem[mem[64]] = address(_612)
                mem[mem[64] + 32] = stor[_614] * stor11 / u * t
                emit Airdrop(address(_612), stor[_614] * stor11 / u * t);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            _990 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_990 + idx + 68] = mem[_984 + idx + 32]
                idx = idx + 32
                continue 
            mem[_990 + 94] = 0
            revert with memory
              from mem[64]
               len _990 + -mem[64] + 100
        _615 = sha3(address(mem[(32 * uint8(idx)) + 128]), 3)
        if not stor9:
            if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                _617 = mem[64]
                mem[64] = mem[64] + 64
                mem[_617] = 26
                mem[_617 + 32] = 'SafeMath: division by zero'
                mem[mem[64] + 4] = address(_612)
                mem[mem[64] + 36] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_612), 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _661 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_661] == bool(mem[_661])
                _contributions[address(_612)] = 0
                mem[0] = address(_612)
                mem[32] = 3
                if not stor9:
                    if not _contributions[address(_612)]:
                        _704 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_704] = 26
                        mem[_704 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = 0
                        emit Airdrop(address(_612), 0);
                    else:
                        if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                            revert with 'NH{q', 17
                        if not _contributions[address(_612)]:
                            revert with 'NH{q', 18
                        if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _720 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_720] = 26
                        mem[_720 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = _contributions[address(_612)] * stor11
                        emit Airdrop(address(_612), _contributions[address(_612)] * stor11);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                    if 10^stor9 > -1:
                        revert with 'NH{q', 17
                    if not _contributions[address(_612)]:
                        _708 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_708] = 26
                        mem[_708 + 32] = 'SafeMath: division by zero'
                        if 10^stor9 > 0:
                            if not 10^stor9:
                                revert with 'NH{q', 18
                            mem[mem[64]] = address(_612)
                            mem[mem[64] + 32] = 0 / 10^stor9
                            emit Airdrop(address(_612), 0 / 10^stor9);
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            s = _612
                            continue 
                        _710 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_710 + idx + 68] = mem[_708 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_710 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _710 + -mem[64] + 100
                    if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                        revert with 'NH{q', 17
                    if not _contributions[address(_612)]:
                        revert with 'NH{q', 18
                    if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_736] = 26
                    mem[_736 + 32] = 'SafeMath: division by zero'
                    if 10^stor9 > 0:
                        if not 10^stor9:
                            revert with 'NH{q', 18
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / 10^stor9
                        emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / 10^stor9);
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = _612
                        continue 
                    _743 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_743 + idx + 68] = mem[_736 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_743 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _743 + -mem[64] + 100
                t = 10
                u = 1
                s = stor9
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    _953 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_953] = 26
                    mem[_953 + 32] = 'SafeMath: division by zero'
                    if u * t > 0:
                        if not u * t:
                            revert with 'NH{q', 18
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = 0 / u * t
                        emit Airdrop(address(_612), 0 / u * t);
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = _612
                        continue 
                    _959 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_959 + idx + 68] = mem[_953 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_959 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _959 + -mem[64] + 100
                if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    revert with 'NH{q', 18
                if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                    revert with 0, 'SafeMath: multiplication overflow'
                _989 = mem[64]
                mem[64] = mem[64] + 64
                mem[_989] = 26
                mem[_989 + 32] = 'SafeMath: division by zero'
                if u * t > 0:
                    if not u * t:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / u * t
                    emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / u * t);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _1000 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1000 + idx + 68] = mem[_989 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1000 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1000 + -mem[64] + 100
            if _contributions[address(mem[(32 * uint8(idx)) + 128])] and stor11 > -1 / _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                revert with 'NH{q', 17
            if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                revert with 'NH{q', 18
            if _contributions[address(mem[(32 * uint8(idx)) + 128])] * stor11 / _contributions[address(mem[(32 * uint8(idx)) + 128])] != stor11:
                revert with 0, 'SafeMath: multiplication overflow'
            _631 = mem[64]
            mem[64] = mem[64] + 64
            mem[_631] = 26
            mem[_631 + 32] = 'SafeMath: division by zero'
            mem[mem[64] + 4] = address(_612)
            mem[mem[64] + 36] = stor[_615] * stor11
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_612), stor[_615] * stor11
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _688 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_688] == bool(mem[_688])
            _contributions[address(_612)] = 0
            mem[0] = address(_612)
            mem[32] = 3
            if not stor9:
                if not _contributions[address(_612)]:
                    _719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_719] = 26
                    mem[_719 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0
                    emit Airdrop(address(_612), 0);
                else:
                    if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                        revert with 'NH{q', 17
                    if not _contributions[address(_612)]:
                        revert with 'NH{q', 18
                    if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_773] = 26
                    mem[_773 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = _contributions[address(_612)] * stor11
                    emit Airdrop(address(_612), _contributions[address(_612)] * stor11);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                if 10^stor9 > -1:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    _735 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_735] = 26
                    mem[_735 + 32] = 'SafeMath: division by zero'
                    if 10^stor9 > 0:
                        if not 10^stor9:
                            revert with 'NH{q', 18
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = 0 / 10^stor9
                        emit Airdrop(address(_612), 0 / 10^stor9);
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = _612
                        continue 
                    _742 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_742 + idx + 68] = mem[_735 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_742 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _742 + -mem[64] + 100
                if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    revert with 'NH{q', 18
                if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                    revert with 0, 'SafeMath: multiplication overflow'
                _808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_808] = 26
                mem[_808 + 32] = 'SafeMath: division by zero'
                if 10^stor9 > 0:
                    if not 10^stor9:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / 10^stor9
                    emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / 10^stor9);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _817 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_817 + idx + 68] = mem[_808 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_817 + 94] = 0
                revert with memory
                  from mem[64]
                   len _817 + -mem[64] + 100
            t = 10
            u = 1
            s = stor9
            while s > 1:
                if t > -1 / t:
                    revert with 'NH{q', 17
                if not bool(s):
                    t = t * t
                    u = u
                    s = uint255(s) * 0.5
                    continue 
                t = t * t
                u = u * t
                s = uint255(s) * 0.5
                continue 
            if u > -1 / t:
                revert with 'NH{q', 17
            if not _contributions[address(_612)]:
                _952 = mem[64]
                mem[64] = mem[64] + 64
                mem[_952] = 26
                mem[_952 + 32] = 'SafeMath: division by zero'
                if u * t > 0:
                    if not u * t:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0 / u * t
                    emit Airdrop(address(_612), 0 / u * t);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _958 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_958 + idx + 68] = mem[_952 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_958 + 94] = 0
                revert with memory
                  from mem[64]
                   len _958 + -mem[64] + 100
            if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                revert with 'NH{q', 17
            if not _contributions[address(_612)]:
                revert with 'NH{q', 18
            if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                revert with 0, 'SafeMath: multiplication overflow'
            _988 = mem[64]
            mem[64] = mem[64] + 64
            mem[_988] = 26
            mem[_988 + 32] = 'SafeMath: division by zero'
            if u * t > 0:
                if not u * t:
                    revert with 'NH{q', 18
                mem[mem[64]] = address(_612)
                mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / u * t
                emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / u * t);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            _998 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_998 + idx + 68] = mem[_988 + idx + 32]
                idx = idx + 32
                continue 
            mem[_998 + 94] = 0
            revert with memory
              from mem[64]
               len _998 + -mem[64] + 100
        if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
            if 10^stor9 > -1:
                revert with 'NH{q', 17
            if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                _619 = mem[64]
                mem[64] = mem[64] + 64
                mem[_619] = 26
                mem[_619 + 32] = 'SafeMath: division by zero'
                if 10^stor9 <= 0:
                    _621 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_621 + idx + 68] = mem[_619 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_621 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _621 + -mem[64] + 100
                if not 10^stor9:
                    revert with 'NH{q', 18
                mem[mem[64] + 4] = address(_612)
                mem[mem[64] + 36] = 0 / 10^stor9
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_612), 0 / 10^stor9
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _671 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_671] == bool(mem[_671])
                _contributions[address(_612)] = 0
                mem[0] = address(_612)
                mem[32] = 3
                if not stor9:
                    if not _contributions[address(_612)]:
                        _707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_707] = 26
                        mem[_707 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = 0
                        emit Airdrop(address(_612), 0);
                    else:
                        if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                            revert with 'NH{q', 17
                        if not _contributions[address(_612)]:
                            revert with 'NH{q', 18
                        if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_734] = 26
                        mem[_734 + 32] = 'SafeMath: division by zero'
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = _contributions[address(_612)] * stor11
                        emit Airdrop(address(_612), _contributions[address(_612)] * stor11);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                    if 10^stor9 > -1:
                        revert with 'NH{q', 17
                    if not _contributions[address(_612)]:
                        _715 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_715] = 26
                        mem[_715 + 32] = 'SafeMath: division by zero'
                        if 10^stor9 > 0:
                            if not 10^stor9:
                                revert with 'NH{q', 18
                            mem[mem[64]] = address(_612)
                            mem[mem[64] + 32] = 0 / 10^stor9
                            emit Airdrop(address(_612), 0 / 10^stor9);
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            s = _612
                            continue 
                        _718 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_718 + idx + 68] = mem[_715 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_718 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _718 + -mem[64] + 100
                    if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                        revert with 'NH{q', 17
                    if not _contributions[address(_612)]:
                        revert with 'NH{q', 18
                    if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _759 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_759] = 26
                    mem[_759 + 32] = 'SafeMath: division by zero'
                    if 10^stor9 > 0:
                        if not 10^stor9:
                            revert with 'NH{q', 18
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / 10^stor9
                        emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / 10^stor9);
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = _612
                        continue 
                    _768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_768 + idx + 68] = mem[_759 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_768 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _768 + -mem[64] + 100
                t = 10
                u = 1
                s = stor9
                while s > 1:
                    if t > -1 / t:
                        revert with 'NH{q', 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = u * t
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    _951 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_951] = 26
                    mem[_951 + 32] = 'SafeMath: division by zero'
                    if u * t > 0:
                        if not u * t:
                            revert with 'NH{q', 18
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = 0 / u * t
                        emit Airdrop(address(_612), 0 / u * t);
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = _612
                        continue 
                    _957 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[_957 + s + 68] = mem[_951 + s + 32]
                        s = s + 32
                        continue 
                    mem[_957 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _957 + -mem[64] + 100
                if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    revert with 'NH{q', 18
                if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                    revert with 0, 'SafeMath: multiplication overflow'
                _987 = mem[64]
                mem[64] = mem[64] + 64
                mem[_987] = 26
                mem[_987 + 32] = 'SafeMath: division by zero'
                if u * t > 0:
                    if not u * t:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / u * t
                    emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / u * t);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _996 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_996 + idx + 68] = mem[_987 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_996 + 94] = 0
                revert with memory
                  from mem[64]
                   len _996 + -mem[64] + 100
            if _contributions[address(mem[(32 * uint8(idx)) + 128])] and stor11 > -1 / _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                revert with 'NH{q', 17
            if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
                revert with 'NH{q', 18
            if _contributions[address(mem[(32 * uint8(idx)) + 128])] * stor11 / _contributions[address(mem[(32 * uint8(idx)) + 128])] != stor11:
                revert with 0, 'SafeMath: multiplication overflow'
            _641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_641] = 26
            mem[_641 + 32] = 'SafeMath: division by zero'
            if 10^stor9 <= 0:
                _648 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_648 + idx + 68] = mem[_641 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_648 + 94] = 0
                revert with memory
                  from mem[64]
                   len _648 + -mem[64] + 100
            if not 10^stor9:
                revert with 'NH{q', 18
            mem[mem[64] + 4] = address(_612)
            mem[mem[64] + 36] = stor[_615] * stor11 / 10^stor9
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_612), stor[_615] * stor11 / 10^stor9
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _695 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_695] == bool(mem[_695])
            _contributions[address(_612)] = 0
            mem[0] = address(_612)
            mem[32] = 3
            if not stor9:
                if not _contributions[address(_612)]:
                    _733 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_733] = 26
                    mem[_733 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0
                    emit Airdrop(address(_612), 0);
                else:
                    if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                        revert with 'NH{q', 17
                    if not _contributions[address(_612)]:
                        revert with 'NH{q', 18
                    if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _805 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_805] = 26
                    mem[_805 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = _contributions[address(_612)] * stor11
                    emit Airdrop(address(_612), _contributions[address(_612)] * stor11);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                if 10^stor9 > -1:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    _758 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_758] = 26
                    mem[_758 + 32] = 'SafeMath: division by zero'
                    if 10^stor9 > 0:
                        if not 10^stor9:
                            revert with 'NH{q', 18
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = 0 / 10^stor9
                        emit Airdrop(address(_612), 0 / 10^stor9);
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = _612
                        continue 
                    _767 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_767 + idx + 68] = mem[_758 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_767 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _767 + -mem[64] + 100
                if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    revert with 'NH{q', 18
                if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                    revert with 0, 'SafeMath: multiplication overflow'
                _837 = mem[64]
                mem[64] = mem[64] + 64
                mem[_837] = 26
                mem[_837 + 32] = 'SafeMath: division by zero'
                if 10^stor9 > 0:
                    if not 10^stor9:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / 10^stor9
                    emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / 10^stor9);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _846 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_846 + idx + 68] = mem[_837 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_846 + 94] = 0
                revert with memory
                  from mem[64]
                   len _846 + -mem[64] + 100
            t = 10
            u = 1
            s = stor9
            while s > 1:
                if t > -1 / t:
                    revert with 'NH{q', 17
                if not bool(s):
                    t = t * t
                    u = u
                    s = uint255(s) * 0.5
                    continue 
                t = t * t
                u = u * t
                s = uint255(s) * 0.5
                continue 
            if u > -1 / t:
                revert with 'NH{q', 17
            if not _contributions[address(_612)]:
                _950 = mem[64]
                mem[64] = mem[64] + 64
                mem[_950] = 26
                mem[_950 + 32] = 'SafeMath: division by zero'
                if u * t > 0:
                    if not u * t:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0 / u * t
                    emit Airdrop(address(_612), 0 / u * t);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _956 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_956 + idx + 68] = mem[_950 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_956 + 94] = 0
                revert with memory
                  from mem[64]
                   len _956 + -mem[64] + 100
            if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                revert with 'NH{q', 17
            if not _contributions[address(_612)]:
                revert with 'NH{q', 18
            if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                revert with 0, 'SafeMath: multiplication overflow'
            _986 = mem[64]
            mem[64] = mem[64] + 64
            mem[_986] = 26
            mem[_986 + 32] = 'SafeMath: division by zero'
            if u * t > 0:
                if not u * t:
                    revert with 'NH{q', 18
                mem[mem[64]] = address(_612)
                mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / u * t
                emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / u * t);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            _994 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_994 + idx + 68] = mem[_986 + idx + 32]
                idx = idx + 32
                continue 
            mem[_994 + 94] = 0
            revert with memory
              from mem[64]
               len _994 + -mem[64] + 100
        t = 10
        u = 1
        s = stor9
        while s > 1:
            if t > -1 / t:
                revert with 'NH{q', 17
            if not bool(s):
                t = t * t
                u = u
                s = uint255(s) * 0.5
                continue 
            t = t * t
            u = u * t
            s = uint255(s) * 0.5
            continue 
        if u > -1 / t:
            revert with 'NH{q', 17
        if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
            _949 = mem[64]
            mem[64] = mem[64] + 64
            mem[_949] = 26
            mem[_949 + 32] = 'SafeMath: division by zero'
            if u * t <= 0:
                _955 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_955 + idx + 68] = mem[_949 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_955 + 94] = 0
                revert with memory
                  from mem[64]
                   len _955 + -mem[64] + 100
            if not u * t:
                revert with 'NH{q', 18
            mem[mem[64] + 4] = address(_612)
            mem[mem[64] + 36] = 0 / u * t
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_612), 0 / u * t
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1033 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1033] == bool(mem[_1033])
            _contributions[address(_612)] = 0
            mem[0] = address(_612)
            mem[32] = 3
            if not stor9:
                if not _contributions[address(_612)]:
                    _1064 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1064] = 26
                    mem[_1064 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0
                    emit Airdrop(address(_612), 0);
                else:
                    if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                        revert with 'NH{q', 17
                    if not _contributions[address(_612)]:
                        revert with 'NH{q', 18
                    if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1072] = 26
                    mem[_1072 + 32] = 'SafeMath: division by zero'
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = _contributions[address(_612)] * stor11
                    emit Airdrop(address(_612), _contributions[address(_612)] * stor11);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
                if 10^stor9 > -1:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    _1065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1065] = 26
                    mem[_1065 + 32] = 'SafeMath: division by zero'
                    if 10^stor9 > 0:
                        if not 10^stor9:
                            revert with 'NH{q', 18
                        mem[mem[64]] = address(_612)
                        mem[mem[64] + 32] = 0 / 10^stor9
                        emit Airdrop(address(_612), 0 / 10^stor9);
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = _612
                        continue 
                    _1066 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    s = 0
                    while s < 26:
                        mem[_1066 + s + 68] = mem[_1065 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1066 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1066 + -mem[64] + 100
                if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    revert with 'NH{q', 18
                if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1078 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1078] = 26
                mem[_1078 + 32] = 'SafeMath: division by zero'
                if 10^stor9 > 0:
                    if not 10^stor9:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / 10^stor9
                    emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / 10^stor9);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _1082 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1082 + idx + 68] = mem[_1078 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1082 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1082 + -mem[64] + 100
            t = 10
            u = 1
            s = stor9
            while s > 1:
                if t > -1 / t:
                    revert with 'NH{q', 17
                if not bool(s):
                    t = t * t
                    u = u
                    s = uint255(s) * 0.5
                    continue 
                t = t * t
                u = u * t
                s = uint255(s) * 0.5
                continue 
            if u > -1 / t:
                revert with 'NH{q', 17
            if not _contributions[address(_612)]:
                _1181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1181] = 26
                mem[_1181 + 32] = 'SafeMath: division by zero'
                if u * t > 0:
                    if not u * t:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0 / u * t
                    emit Airdrop(address(_612), 0 / u * t);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _1183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1183 + idx + 68] = mem[_1181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1183 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1183 + -mem[64] + 100
            if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                revert with 'NH{q', 17
            if not _contributions[address(_612)]:
                revert with 'NH{q', 18
            if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                revert with 0, 'SafeMath: multiplication overflow'
            _1193 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1193] = 26
            mem[_1193 + 32] = 'SafeMath: division by zero'
            if u * t > 0:
                if not u * t:
                    revert with 'NH{q', 18
                mem[mem[64]] = address(_612)
                mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / u * t
                emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / u * t);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            _1196 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1196 + idx + 68] = mem[_1193 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1196 + 94] = 0
            revert with memory
              from mem[64]
               len _1196 + -mem[64] + 100
        if _contributions[address(mem[(32 * uint8(idx)) + 128])] and stor11 > -1 / _contributions[address(mem[(32 * uint8(idx)) + 128])]:
            revert with 'NH{q', 17
        if not _contributions[address(mem[(32 * uint8(idx)) + 128])]:
            revert with 'NH{q', 18
        if _contributions[address(mem[(32 * uint8(idx)) + 128])] * stor11 / _contributions[address(mem[(32 * uint8(idx)) + 128])] != stor11:
            revert with 0, 'SafeMath: multiplication overflow'
        _985 = mem[64]
        mem[64] = mem[64] + 64
        mem[_985] = 26
        mem[_985 + 32] = 'SafeMath: division by zero'
        if u * t <= 0:
            _992 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_992 + idx + 68] = mem[_985 + idx + 32]
                idx = idx + 32
                continue 
            mem[_992 + 94] = 0
            revert with memory
              from mem[64]
               len _992 + -mem[64] + 100
        if not u * t:
            revert with 'NH{q', 18
        mem[mem[64] + 4] = address(_612)
        mem[mem[64] + 36] = stor[_615] * stor11 / u * t
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(_612), stor[_615] * stor11 / u * t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1060 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1060] == bool(mem[_1060])
        _contributions[address(_612)] = 0
        mem[0] = address(_612)
        mem[32] = 3
        if not stor9:
            if not _contributions[address(_612)]:
                _1071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1071] = 26
                mem[_1071 + 32] = 'SafeMath: division by zero'
                mem[mem[64]] = address(_612)
                mem[mem[64] + 32] = 0
                emit Airdrop(address(_612), 0);
            else:
                if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                    revert with 'NH{q', 17
                if not _contributions[address(_612)]:
                    revert with 'NH{q', 18
                if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1094 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1094] = 26
                mem[_1094 + 32] = 'SafeMath: division by zero'
                mem[mem[64]] = address(_612)
                mem[mem[64] + 32] = _contributions[address(_612)] * stor11
                emit Airdrop(address(_612), _contributions[address(_612)] * stor11);
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = _612
            continue 
        if bool(bool(stor9 < 78)) or bool(bool(stor9 < 32)):
            if 10^stor9 > -1:
                revert with 'NH{q', 17
            if not _contributions[address(_612)]:
                _1077 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1077] = 26
                mem[_1077 + 32] = 'SafeMath: division by zero'
                if 10^stor9 > 0:
                    if not 10^stor9:
                        revert with 'NH{q', 18
                    mem[mem[64]] = address(_612)
                    mem[mem[64] + 32] = 0 / 10^stor9
                    emit Airdrop(address(_612), 0 / 10^stor9);
                    if uint8(idx) == 255:
                        revert with 'NH{q', 17
                    idx = uint8(idx) + 1
                    s = _612
                    continue 
                _1081 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1081 + idx + 68] = mem[_1077 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1081 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1081 + -mem[64] + 100
            if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
                revert with 'NH{q', 17
            if not _contributions[address(_612)]:
                revert with 'NH{q', 18
            if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
                revert with 0, 'SafeMath: multiplication overflow'
            _1104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1104] = 26
            mem[_1104 + 32] = 'SafeMath: division by zero'
            if 10^stor9 > 0:
                if not 10^stor9:
                    revert with 'NH{q', 18
                mem[mem[64]] = address(_612)
                mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / 10^stor9
                emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / 10^stor9);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            _1108 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1108 + idx + 68] = mem[_1104 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1108 + 94] = 0
            revert with memory
              from mem[64]
               len _1108 + -mem[64] + 100
        t = 10
        u = 1
        s = stor9
        while s > 1:
            if t > -1 / t:
                revert with 'NH{q', 17
            if not bool(s):
                t = t * t
                u = u
                s = uint255(s) * 0.5
                continue 
            t = t * t
            u = u * t
            s = uint255(s) * 0.5
            continue 
        if u > -1 / t:
            revert with 'NH{q', 17
        if not _contributions[address(_612)]:
            _1180 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1180] = 26
            mem[_1180 + 32] = 'SafeMath: division by zero'
            if u * t > 0:
                if not u * t:
                    revert with 'NH{q', 18
                mem[mem[64]] = address(_612)
                mem[mem[64] + 32] = 0 / u * t
                emit Airdrop(address(_612), 0 / u * t);
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = _612
                continue 
            _1182 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1182 + idx + 68] = mem[_1180 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1182 + 94] = 0
            revert with memory
              from mem[64]
               len _1182 + -mem[64] + 100
        if _contributions[address(_612)] and stor11 > -1 / _contributions[address(_612)]:
            revert with 'NH{q', 17
        if not _contributions[address(_612)]:
            revert with 'NH{q', 18
        if _contributions[address(_612)] * stor11 / _contributions[address(_612)] != stor11:
            revert with 0, 'SafeMath: multiplication overflow'
        _1192 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1192] = 26
        mem[_1192 + 32] = 'SafeMath: division by zero'
        if u * t > 0:
            if not u * t:
                revert with 'NH{q', 18
            mem[mem[64]] = address(_612)
            mem[mem[64] + 32] = _contributions[address(_612)] * stor11 / u * t
            emit Airdrop(address(_612), _contributions[address(_612)] * stor11 / u * t);
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            idx = uint8(idx) + 1
            s = _612
            continue 
        _1194 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_1194 + idx + 68] = mem[_1192 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1194 + 94] = 0
        revert with memory
          from mem[64]
           len _1194 + -mem[64] + 100
}



}
