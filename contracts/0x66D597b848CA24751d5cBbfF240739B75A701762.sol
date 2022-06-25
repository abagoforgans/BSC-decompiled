contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
mapping of uint256 _contributions;
mapping of uint8 stor3;
address _tokenAddress;
uint256 stor5;
address _walletAddress;
address sub_8db01478Address;
uint256 _rate;
uint256 _weiRaised;
uint256 endIDO;
uint256 minPurchase;
uint256 maxPurchase;
uint256 minimumStake;
uint256 hardcap;
uint256 purchasedTokens;
uint8 unlock;
uint8 sub_09ddb7bf; offset 8
uint256 stor16; offset 8
uint256 sub_f634d519;
array of address stor18;

function _whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function purchasedTokens() {
    return purchasedTokens
}

function sub_09ddb7bf(?) {
    return bool(sub_09ddb7bf)
}

function checkWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function _contributions(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return _contributions[arg1]
}

function minPurchase() {
    return minPurchase
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

function sub_8db01478(?) {
    return sub_8db01478Address
}

function _weiRaised() {
    return _weiRaised
}

function maxPurchase() {
    return maxPurchase
}

function unlock() {
    return bool(unlock)
}

function hardcap() {
    return hardcap
}

function minimumStake() {
    return minimumStake
}

function _token() {
    return _tokenAddress
}

function sub_f634d519(?) {
    return sub_f634d519
}

function endIDO() {
    return endIDO
}

function _fallback() payable {
    revert
}

function sub_58265a18(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    unlock = uint8(bool(arg1))
}

function sub_9ee611af(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minimumStake = arg1
}

function setNewRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _rate = arg1
}

function setHardcap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hardcap = arg1
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

function setWhitelistCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f634d519 = arg1
}

function setWalletReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _walletAddress = arg1
}

function sub_435803f3(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require _weiRaised <= hardcap
    stor16 = Mask(248, 0, bool(arg1))
}

function whitelistAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = uint8(arg2)
}

function stopIDO() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endIDO <= 0:
        revert with 0, 'IDO must be active'
    if block.timestamp >= endIDO:
        revert with 0, 'IDO must be active'
    if _weiRaised >= hardcap:
        revert with 0, 'IDO must be active'
    endIDO = 0
}

function addContribution(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if _contributions[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    _contributions[address(arg1)] += arg2
}

function _forwardFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call _walletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_d711c66e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall sub_8db01478Address.stakes(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_073981d9(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endIDO >= block.timestamp:
        revert with 0, 'IDO should not be active'
    if stor18.length <= 0:
        revert with 0, 'Whitelist not set yet'
    if arg1 <= block.timestamp:
        revert with 0, 'duration should be > 0'
    if arg2 <= 0:
        revert with 0, '_minPurchase should > 0'
    endIDO = arg1
    minPurchase = arg2
    maxPurchase = arg3
    hardcap = arg4
    _weiRaised = 0
}

function sub_fd760f33(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'BEP-20 balance is 0'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args _walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function checkContribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor5:
        if _contributions[address(arg1)] and _rate > -1 / _contributions[address(arg1)]:
            revert with 'NH{q', 17
        return (_contributions[address(arg1)] * _rate)
    if bool(bool(stor5 < 78)) or bool(bool(stor5 < 32)):
        if 10^stor5 > -1:
            revert with 'NH{q', 17
        if _contributions[address(arg1)] and _rate > -1 / _contributions[address(arg1)]:
            revert with 'NH{q', 17
        if not 10^stor5:
            revert with 'NH{q', 18
        return (_contributions[address(arg1)] * _rate / 10^stor5)
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
    if _contributions[address(arg1)] and _rate > -1 / _contributions[address(arg1)]:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    return (_contributions[address(arg1)] * _rate / t * s)
}

function setWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor18.length = arg1.length
    if not arg1.length:
        s = sha3(18)
        while sha3(18) + stor18.length > arg1.length:
            stor[arg1.length] = 0
            s = arg1.length + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(stor18[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor18.length > idx:
            uint256(stor18[idx]) = 0
            idx = idx + 1
            continue 
}

function withdrawTokens() {
    require bool(unlock) == 1
    if not stor5:
        if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
            revert with 'NH{q', 17
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
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _contributions[address(msg.sender)] * _rate / t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    _contributions[address(msg.sender)] = 0
}

function buyTokens() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if endIDO <= 0:
        revert with 0, 'IDO must be active'
    if block.timestamp >= endIDO:
        revert with 0, 'IDO must be active'
    if _weiRaised >= hardcap:
        revert with 0, 'IDO must be active'
    staticcall sub_8db01478Address.stakes(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < minimumStake:
        revert with 0, 'You need to stake more than minimum AVN amount'
    if not stor5:
        if msg.value and _rate > -1 / msg.value:
            revert with 'NH{q', 17
        if not msg.sender:
            revert with 0, 'Presale: beneficiary is the zero address'
        if not sub_09ddb7bf:
            if not stor3[address(msg.sender)]:
                revert with 0, 'You are not in whitelist'
        if not msg.value:
            revert with 0, 'Presale: weiAmount is 0'
        if msg.value < minPurchase:
            revert with 0, 'have to send at least: minPurchase'
        if _weiRaised > -msg.value - 1:
            revert with 'NH{q', 17
        if _weiRaised + msg.value > hardcap:
            revert with 0, 'Exceeding hardcap'
        if _contributions[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        if bool(stor3[address(msg.sender)]) != 1:
            if _contributions[address(msg.sender)] + msg.value > maxPurchase:
                revert with 0, 'can't buy more than: maxPurchase'
        else:
            if _contributions[address(msg.sender)] + msg.value > sub_f634d519:
                revert with 0, 'can't buy more than: whitelistCap'
        if _weiRaised > -msg.value - 1:
            revert with 'NH{q', 17
        _weiRaised += msg.value
        if purchasedTokens > (-1 * msg.value * _rate) - 1:
            revert with 'NH{q', 17
        purchasedTokens += msg.value * _rate
        if _contributions[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        _contributions[address(msg.sender)] += msg.value
        emit TokensPurchased(msg.sender, msg.value, msg.value * _rate);
    else:
        if bool(bool(stor5 < 78)) or bool(bool(stor5 < 32)):
            if 10^stor5 > -1:
                revert with 'NH{q', 17
            if msg.value and _rate > -1 / msg.value:
                revert with 'NH{q', 17
            if not 10^stor5:
                revert with 'NH{q', 18
            if not msg.sender:
                revert with 0, 'Presale: beneficiary is the zero address'
            if not sub_09ddb7bf:
                if not stor3[address(msg.sender)]:
                    revert with 0, 'You are not in whitelist'
            if not msg.value:
                revert with 0, 'Presale: weiAmount is 0'
            if msg.value < minPurchase:
                revert with 0, 'have to send at least: minPurchase'
            if _weiRaised > -msg.value - 1:
                revert with 'NH{q', 17
            if _weiRaised + msg.value > hardcap:
                revert with 0, 'Exceeding hardcap'
            if _contributions[address(msg.sender)] > -msg.value - 1:
                revert with 'NH{q', 17
            if bool(stor3[address(msg.sender)]) != 1:
                if _contributions[address(msg.sender)] + msg.value > maxPurchase:
                    revert with 0, 'can't buy more than: maxPurchase'
            else:
                if _contributions[address(msg.sender)] + msg.value > sub_f634d519:
                    revert with 0, 'can't buy more than: whitelistCap'
            if _weiRaised > -msg.value - 1:
                revert with 'NH{q', 17
            _weiRaised += msg.value
            if purchasedTokens > -(msg.value * _rate / 10^stor5) - 1:
                revert with 'NH{q', 17
            purchasedTokens += msg.value * _rate / 10^stor5
            if _contributions[address(msg.sender)] > -msg.value - 1:
                revert with 'NH{q', 17
            _contributions[address(msg.sender)] += msg.value
            emit TokensPurchased(msg.sender, msg.value, msg.value * _rate / 10^stor5);
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
            if not msg.sender:
                revert with 0, 'Presale: beneficiary is the zero address'
            if not sub_09ddb7bf:
                if not stor3[address(msg.sender)]:
                    revert with 0, 'You are not in whitelist'
            if not msg.value:
                revert with 0, 'Presale: weiAmount is 0'
            if msg.value < minPurchase:
                revert with 0, 'have to send at least: minPurchase'
            if _weiRaised > -msg.value - 1:
                revert with 'NH{q', 17
            if _weiRaised + msg.value > hardcap:
                revert with 0, 'Exceeding hardcap'
            if _contributions[address(msg.sender)] > -msg.value - 1:
                revert with 'NH{q', 17
            if bool(stor3[address(msg.sender)]) != 1:
                if _contributions[address(msg.sender)] + msg.value > maxPurchase:
                    revert with 0, 'can't buy more than: maxPurchase'
            else:
                if _contributions[address(msg.sender)] + msg.value > sub_f634d519:
                    revert with 0, 'can't buy more than: whitelistCap'
            if _weiRaised > -msg.value - 1:
                revert with 'NH{q', 17
            _weiRaised += msg.value
            if purchasedTokens > -(msg.value * _rate / t * s) - 1:
                revert with 'NH{q', 17
            purchasedTokens += msg.value * _rate / t * s
            if _contributions[address(msg.sender)] > -msg.value - 1:
                revert with 'NH{q', 17
            _contributions[address(msg.sender)] += msg.value
            emit TokensPurchased(msg.sender, msg.value, msg.value * _rate / t * s);
    stor0 = 1
}



}
