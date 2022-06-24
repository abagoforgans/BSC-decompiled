contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
mapping of uint256 _contributions;
mapping of uint8 stor3;
mapping of uint256 sub_5022370f;
mapping of uint8 stor5;
mapping of uint256 claimCount;
mapping of uint256 sub_4c443127;
mapping of uint256 claimed;
mapping of uint256 sub_4c5b8b46;
mapping of uint256 sub_b3514314;
mapping of uint256 referralReward;
address _tokenAddress;
address _walletAddress;
uint256 _rate;
uint256 _weiRaised;
uint256 endICO;
uint256 minPurchase;
uint256 sub_00c433c7;
uint256 hardcap;
uint256 purchasedTokens;
uint8 sub_206f0755;
uint256 stor23;

function sub_00c433c7(?) {
    return sub_00c433c7
}

function _whitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function purchasedTokens() {
    return purchasedTokens
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

function sub_206f0755(?) {
    return bool(sub_206f0755)
}

function minPurchase() {
    return minPurchase
}

function sub_424b4460(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[arg1])
}

function sub_4c443127(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4c443127[arg1]
}

function sub_4c5b8b46(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4c5b8b46[arg1]
}

function endICO() {
    return endICO
}

function sub_5022370f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5022370f[arg1]
}

function _wallet() {
    return _walletAddress
}

function claimCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimCount[arg1]
}

function referralReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referralReward[arg1]
}

function _rate() {
    return _rate
}

function owner() {
    return owner
}

function _weiRaised() {
    return _weiRaised
}

function hardcap() {
    return hardcap
}

function sub_b3514314(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b3514314[arg1]
}

function claimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimed[arg1]
}

function _token() {
    return _tokenAddress
}

function _fallback() payable {
    revert
}

function maxPayoutOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return arg1
}

function setHardcap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hardcap = arg1
}

function setMinPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minPurchase = arg1
}

function setMaxPurchase(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_00c433c7 = arg1
}

function setWalletReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _walletAddress = arg1
}

function sub_3615f48c(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_206f0755 = uint8(bool(arg1))
}

function changeWaitTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23 = arg1
    return 1
}

function whitelistAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
}

function blacklistAccount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
}

function sub_f449da38(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _contributions[address(arg1)] and _rate > -1 / _contributions[address(arg1)]:
        revert with 'NH{q', 17
    return (_contributions[address(arg1)] * _rate)
}

function checkReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if referralReward[address(arg1)] and _rate > -1 / referralReward[address(arg1)]:
        revert with 'NH{q', 17
    return (referralReward[address(arg1)] * _rate)
}

function checkContribution(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _contributions[address(arg1)] and _rate > -1 / _contributions[address(arg1)]:
        revert with 'NH{q', 17
    return (_contributions[address(arg1)] * _rate)
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endICO >= block.timestamp:
        revert with 0, 'IDO should not be active'
    _rate = arg1
}

function stopICO() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endICO <= 0:
        revert with 0, 'IDO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'IDO must be active'
    if _weiRaised >= hardcap:
        revert with 0, 'IDO must be active'
    endICO = 0
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

function startICO(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if endICO >= block.timestamp:
        revert with 0, 'IDO should not be active'
    if arg1 <= block.timestamp:
        revert with 0, 'duration should be > 0'
    endICO = arg1
    minPurchase = arg2
    hardcap = arg3
    _weiRaised = 0
}

function takeTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'BEP-20 balance is 0'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args _walletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setBlacklist(address[] arg1) {
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
        stor3[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function claimReward() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if referralReward[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No Referral Reward tokens to claim'
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if referralReward[address(msg.sender)] > ext_call.return_data[0]:
        revert with 0, 'No enough tokens in contract'
    referralReward[address(msg.sender)] = 0
    if referralReward[address(msg.sender)] and _rate > -1 / referralReward[address(msg.sender)]:
        revert with 'NH{q', 17
    call _tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, referralReward[address(msg.sender)] * _rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor0 = 1
}

function sub_34efbf9b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall this.address.0x8959af3c with:
            gas gas_remaining wei
           args sub_b3514314[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp < sub_4c443127[address(msg.sender)]:
        revert with 'NH{q', 17
    if sub_b3514314[address(msg.sender)] and 5 > -1 / sub_b3514314[address(msg.sender)]:
        revert with 'NH{q', 17
    if 5 * sub_b3514314[address(msg.sender)] / 100 and block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 > -1 / 5 * sub_b3514314[address(msg.sender)] / 100:
        revert with 'NH{q', 17
    if 5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 < claimed[address(msg.sender)]:
        revert with 'NH{q', 17
    if 5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 > -1:
        revert with 'NH{q', 17
    if 5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 <= ext_call.return_data[0]:
        return ((5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600) - claimed[address(msg.sender)])
    if ext_call.return_data[0] < claimed[address(msg.sender)]:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] - claimed[address(msg.sender)])
}

function setWhitelist(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = floor32(arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        if idx >= arg2.length:
            revert with 'NH{q', 50
        if mem[(32 * idx) + floor32(arg1.length) + 129] and 10^18 > -1 / mem[(32 * idx) + floor32(arg1.length) + 129]:
            revert with 'NH{q', 17
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        sub_5022370f[mem[(32 * idx) + 140 len 20]] = 10^18 * mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if endICO <= 0:
        revert with 0, 'IDO must be active'
    if block.timestamp >= endICO:
        revert with 0, 'IDO must be active'
    if _weiRaised >= hardcap:
        revert with 0, 'IDO must be active'
    if arg1 != owner:
        if arg1 == msg.sender:
            revert with 0, 'Self Address cannot be referrer'
        if _contributions[address(arg1)] <= 0:
            revert with 0, 'Referror not found in the system'
    if msg.value and 5 > -1 / msg.value:
        revert with 'NH{q', 17
    if referralReward[address(msg.sender)] > -(5 * msg.value / 100) - 1:
        revert with 'NH{q', 17
    referralReward[address(msg.sender)] += 5 * msg.value / 100
    if msg.value and 5 > -1 / msg.value:
        revert with 'NH{q', 17
    if referralReward[address(arg1)] > -(5 * msg.value / 100) - 1:
        revert with 'NH{q', 17
    referralReward[address(arg1)] += 5 * msg.value / 100
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value and _rate > -1 / msg.value:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Presale: beneficiary is the zero address'
    if not msg.value:
        revert with 0, 'Presale: weiAmount is 0'
    if msg.value < minPurchase:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'have to send at least: minPurchase'
    if _weiRaised > -msg.value - 1:
        revert with 'NH{q', 17
    if _weiRaised + msg.value > hardcap:
        revert with 0, 'Exceeding hardcap'
    if not sub_206f0755:
        if _contributions[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        if _contributions[address(msg.sender)] + msg.value > sub_00c433c7:
            revert with 0, 'can't buy more than: maxPurchase'
    else:
        if not stor3[address(msg.sender)]:
            revert with 0, 'You are not in whitelist'
        if _contributions[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        if sub_00c433c7 <= 0:
            if _contributions[address(msg.sender)] + msg.value > sub_5022370f[address(msg.sender)]:
                revert with 0, 'can't buy more than: maxPurchase'
        else:
            if _contributions[address(msg.sender)] + msg.value > sub_00c433c7:
                revert with 0, 'can't buy more than: maxPurchase'
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
    stor0 = 1
}

function claim() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
        revert with 'NH{q', 17
    if _contributions[address(msg.sender)] * _rate <= 0:
        revert with 0, 'No tokens to claim'
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if _contributions[address(msg.sender)] and _rate > -1 / _contributions[address(msg.sender)]:
        revert with 'NH{q', 17
    if _contributions[address(msg.sender)] * _rate > ext_call.return_data[0]:
        revert with 0, 'No enough tokens in contract'
    if block.timestamp <= stor23:
        revert with 0, 'You must wait until claim time: timeToWait'
    if not stor5[address(msg.sender)]:
        sub_b3514314[address(msg.sender)] = _contributions[address(msg.sender)]
        if _contributions[address(msg.sender)] and 40 > -1 / _contributions[address(msg.sender)]:
            revert with 'NH{q', 17
        if _contributions[address(msg.sender)] < 40 * _contributions[address(msg.sender)] / 100:
            revert with 'NH{q', 17
        _contributions[address(msg.sender)] -= 40 * _contributions[address(msg.sender)] / 100
        stor5[address(msg.sender)] = 1
        if claimCount[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        claimCount[address(msg.sender)]++
        if block.timestamp < 720 * 24 * 3600:
            revert with 'NH{q', 17
        sub_4c443127[address(msg.sender)] = block.timestamp - (720 * 24 * 3600)
        sub_4c5b8b46[address(msg.sender)] = _contributions[address(msg.sender)]
        if claimed[address(msg.sender)] > -(40 * _contributions[address(msg.sender)] / 100) - 1:
            revert with 'NH{q', 17
        claimed[address(msg.sender)] += 40 * _contributions[address(msg.sender)] / 100
        if 40 * _contributions[address(msg.sender)] / 100 and _rate > -1 / 40 * _contributions[address(msg.sender)] / 100:
            revert with 'NH{q', 17
        call _tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 40 * _contributions[address(msg.sender)] / 100 * _rate
    else:
        staticcall this.address.0x8959af3c with:
                gas gas_remaining wei
               args sub_b3514314[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if block.timestamp < sub_4c443127[address(msg.sender)]:
            revert with 'NH{q', 17
        if sub_b3514314[address(msg.sender)] and 5 > -1 / sub_b3514314[address(msg.sender)]:
            revert with 'NH{q', 17
        if 5 * sub_b3514314[address(msg.sender)] / 100 and block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 > -1 / 5 * sub_b3514314[address(msg.sender)] / 100:
            revert with 'NH{q', 17
        if 5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 < claimed[address(msg.sender)]:
            revert with 'NH{q', 17
        if 5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 > -1:
            revert with 'NH{q', 17
        if 5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 <= ext_call.return_data[0]:
            if claimCount[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            claimCount[address(msg.sender)]++
            if _contributions[address(msg.sender)] < (5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600) - claimed[address(msg.sender)]:
                revert with 'NH{q', 17
            _contributions[address(msg.sender)] = _contributions[address(msg.sender)] - (5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600) + claimed[address(msg.sender)]
            if claimed[address(msg.sender)] > (-1 * 5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600) + claimed[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            claimed[address(msg.sender)] = 5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600
            if (5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600) - claimed[address(msg.sender)] and _rate > -1 / (5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600) - claimed[address(msg.sender)]:
                revert with 'NH{q', 17
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (5 * sub_b3514314[address(msg.sender)] / 100 * block.timestamp - sub_4c443127[address(msg.sender)] / 720 * 24 * 3600 * _rate) - (claimed[address(msg.sender)] * _rate)
        else:
            if ext_call.return_data[0] < claimed[address(msg.sender)]:
                revert with 'NH{q', 17
            if claimCount[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            claimCount[address(msg.sender)]++
            if _contributions[address(msg.sender)] < ext_call.return_data[0] - claimed[address(msg.sender)]:
                revert with 'NH{q', 17
            _contributions[address(msg.sender)] = _contributions[address(msg.sender)] - ext_call.return_data[0] + claimed[address(msg.sender)]
            if claimed[address(msg.sender)] > -ext_call.return_data[0] + claimed[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            claimed[address(msg.sender)] = ext_call.return_data[0]
            if ext_call.return_data[0] - claimed[address(msg.sender)] and _rate > -1 / ext_call.return_data[0] - claimed[address(msg.sender)]:
                revert with 'NH{q', 17
            call _tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (ext_call.return_data[0] * _rate) - (claimed[address(msg.sender)] * _rate)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor0 = 1
}



}
