contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint8 paused;
uint256 stor151;
uint8 isInitialized;
mapping of uint256 boughtTokens;
mapping of uint256 claimedTokens;
address sub_b1c0b912Address;
uint256 sub_93eb9bdc;
address tokenAddress;
uint256 totalSupply;
uint256 remainingSupply;
uint8 sub_a11a1add;
uint8 claimActive; offset 8
uint16 stor209;
uint256 stor209; offset 8
uint256 minTokens;
uint256 maxTokens;
uint8 sub_587d5ed0;
uint256 root;
uint256 sub_01925196;
uint256 sub_36cfa027;
uint256 sub_64f702fe;
uint256 sub_434b22ed;
uint256 sub_982f368c;

function sub_01925196(?) {
    return sub_01925196
}

function totalSupply() {
    return totalSupply
}

function sub_36cfa027(?) {
    return sub_36cfa027
}

function isInitialized() {
    return bool(isInitialized)
}

function sub_434b22ed(?) {
    return sub_434b22ed
}

function sub_587d5ed0(?) {
    return bool(sub_587d5ed0)
}

function paused() {
    return bool(paused)
}

function sub_64f702fe(?) {
    return sub_64f702fe
}

function boughtTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return boughtTokens[arg1]
}

function owner() {
    return owner
}

function sub_93eb9bdc(?) {
    return sub_93eb9bdc
}

function sub_982f368c(?) {
    return sub_982f368c
}

function minTokens() {
    return minTokens
}

function tokenAddress() {
    return tokenAddress
}

function sub_a11a1add(?) {
    return bool(sub_a11a1add)
}

function claimedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimedTokens[arg1]
}

function sub_b1c0b912(?) {
    return sub_b1c0b912Address
}

function claimActive() {
    return bool(claimActive)
}

function remainingSupply() {
    return remainingSupply
}

function maxTokens() {
    return maxTokens
}

function root() {
    return root
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

function sub_e47eaae4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTokens = arg1
    return 1
}

function sub_fe867303(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    minTokens = arg1
    return 1
}

function changePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_93eb9bdc = arg1
    return 1
}

function changeRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    root = arg1
    emit 0xa23328e8 
    return 1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
    return 1
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
    return 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
    return 1
}

function sub_ab549aae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b1c0b912Address = address(arg1)
    return 1
}

function sub_4b91563c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if boughtTokens[address(arg1)] < claimedTokens[address(arg1)]:
        revert with 0, 17
    return (boughtTokens[address(arg1)] - claimedTokens[address(arg1)])
}

function sub_98df26b1(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a11a1add = uint8(bool(arg1))
    emit 0x8d68063c: bool(arg1)
    return 1
}

function sub_d9583b9f(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_587d5ed0 = uint8(bool(arg1))
    emit 0x56689f89: bool(arg1)
    return 1
}

function sub_fb93bc19(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor209.field_8) = Mask(248, 0, bool(arg1))
    emit 0xed2d0425: bool(arg1)
    return 1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
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

function sub_29bc6856(?) {
    require calldata.size - 4 >= 160
    require 35 < calldata.size
    require 164 <= calldata.size
    idx = 4
    s = 96
    while idx < 164:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_01925196 = mem[96]
    sub_36cfa027 = mem[128]
    sub_64f702fe = mem[160]
    sub_434b22ed = mem[192]
    sub_982f368c = mem[224]
    return 1
}

function withdrawRemainingTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function removeAddresses(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
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
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 202
        boughtTokens[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_329ea90d(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + 97
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _31 = mem[(32 * idx) + 128]
        if s >= mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s
            _34 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_34 + 32 len mem[_34]])
            continue 
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _31
        _38 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(mem[_38 + 32 len mem[_38]])
        continue 
    return (root == s)
}

function sub_ee7cab56(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 4).length) + 129
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Not equal dimensions'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if boughtTokens[mem[(32 * idx) + 140 len 20]] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 202
        boughtTokens[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5b4c0b6e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.timestamp <= sub_01925196:
        if 0 < claimedTokens[address(arg1)]:
            revert with 0, 17
        return -claimedTokens[address(arg1)]
    if sub_01925196 <= block.timestamp:
        if block.timestamp <= sub_36cfa027:
            if boughtTokens[address(arg1)] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                revert with 0, 17
            if 2000 * boughtTokens[address(arg1)] / 10000 < claimedTokens[address(arg1)]:
                revert with 0, 17
            return ((2000 * boughtTokens[address(arg1)] / 10000) - claimedTokens[address(arg1)])
    if sub_36cfa027 < block.timestamp:
        if block.timestamp <= sub_64f702fe:
            if boughtTokens[address(arg1)] > 0x10624dd2f1a9fbe76c8b4395810624dd2f1a9fbe76c8b4395810624dd2f1a9:
                revert with 0, 17
            if 4000 * boughtTokens[address(arg1)] / 10000 < claimedTokens[address(arg1)]:
                revert with 0, 17
            return ((4000 * boughtTokens[address(arg1)] / 10000) - claimedTokens[address(arg1)])
    if sub_64f702fe < block.timestamp:
        if block.timestamp <= sub_434b22ed:
            if boughtTokens[address(arg1)] > 0xaec33e1f671529a485cd7b900aec33e1f671529a485cd7b900aec33e1f671:
                revert with 0, 17
            if 6000 * boughtTokens[address(arg1)] / 10000 < claimedTokens[address(arg1)]:
                revert with 0, 17
            return ((6000 * boughtTokens[address(arg1)] / 10000) - claimedTokens[address(arg1)])
    if sub_434b22ed >= block.timestamp:
        if block.timestamp <= sub_982f368c:
            if 0 < claimedTokens[address(arg1)]:
                revert with 0, 17
            return -claimedTokens[address(arg1)]
        if boughtTokens[address(arg1)] < claimedTokens[address(arg1)]:
            revert with 0, 17
        return (boughtTokens[address(arg1)] - claimedTokens[address(arg1)])
    if block.timestamp > sub_982f368c:
        if boughtTokens[address(arg1)] < claimedTokens[address(arg1)]:
            revert with 0, 17
        return (boughtTokens[address(arg1)] - claimedTokens[address(arg1)])
    if boughtTokens[address(arg1)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
        revert with 0, 17
    if 8000 * boughtTokens[address(arg1)] / 10000 < claimedTokens[address(arg1)]:
        revert with 0, 17
    return ((8000 * boughtTokens[address(arg1)] / 10000) - claimedTokens[address(arg1)])
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    tokenAddress = arg1
    sub_b1c0b912Address = 0xa4276e56bbe7c73948380fe894492d9b0c6dce0e
    sub_93eb9bdc = 75 * 10^12
    totalSupply = 2000000 * 10^18
    remainingSupply = 2000000 * 10^18
    minTokens = 6000 * 10^18
    if not sub_93eb9bdc:
        revert with 0, 18
    maxTokens = 3000000000000000000 * 10^18 / sub_93eb9bdc
    sub_587d5ed0 = 1
    uint16(stor209.field_0) = 0
    root = 0xb1059992a59f9036fc87575dc6589dc7f6740b05099d0b2c7100f7b707d093cd
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_01925196 = 4654632 * 24 * 3600
    sub_36cfa027 = 4654632 * 24 * 3600
    sub_64f702fe = 4654632 * 24 * 3600
    sub_434b22ed = 4654632 * 24 * 3600
    sub_982f368c = 4654632 * 24 * 3600
    isInitialized = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_29ec7eed(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not sub_a11a1add:
        revert with 0, 'Buy not active'
    if sub_587d5ed0:
        mem[ceil32(32 * ('cd', 4).length) + 129] = address(msg.sender)
        mem[ceil32(32 * ('cd', 4).length) + 97] = 20
        mem[64] = ceil32(32 * ('cd', 4).length) + 149
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _114 = mem[(32 * idx) + 128]
            if s + sha3(mem[ceil32(32 * ('cd', 4).length) + 129 len mem[ceil32(32 * ('cd', 4).length) + 97]]) >= mem[(32 * idx) + 128]:
                mem[mem[64] + 32] = mem[(32 * idx) + 128]
                mem[mem[64] + 64] = s + sha3(mem[ceil32(32 * ('cd', 4).length) + 129 len mem[ceil32(32 * ('cd', 4).length) + 97]])
                _117 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = sha3(mem[_117 + 32 len mem[_117]])
                continue 
            mem[mem[64] + 32] = s + sha3(mem[ceil32(32 * ('cd', 4).length) + 129 len mem[ceil32(32 * ('cd', 4).length) + 97]])
            mem[mem[64] + 64] = _114
            _121 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_121 + 32 len mem[_121]])
            continue 
        if root != s:
            revert with 0, 'Not whitelisted'
    if not sub_93eb9bdc:
        revert with 0, 18
    if msg.value / sub_93eb9bdc > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * msg.value / sub_93eb9bdc > maxTokens:
        revert with 0, 'Max tokens reached'
    if 10^18 * msg.value / sub_93eb9bdc < minTokens:
        revert with 0, 'Min tokens not reached'
    if boughtTokens[msg.sender] > !(10^18 * msg.value / sub_93eb9bdc):
        revert with 0, 17
    if boughtTokens[msg.sender] + (10^18 * msg.value / sub_93eb9bdc) > maxTokens:
        revert with 0, 'Maximum allocation per user will be reached'
    if remainingSupply < 10^18 * msg.value / sub_93eb9bdc:
        revert with 0, 17
    if remainingSupply - (10^18 * msg.value / sub_93eb9bdc) < 0:
        revert with 0, 'Amount exceeds remaining supply'
    call sub_b1c0b912Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if boughtTokens[msg.sender] > !(10^18 * msg.value / sub_93eb9bdc):
        revert with 0, 17
    boughtTokens[msg.sender] += 10^18 * msg.value / sub_93eb9bdc
    if remainingSupply < 10^18 * msg.value / sub_93eb9bdc:
        revert with 0, 17
    remainingSupply += -1 * 10^18 * msg.value / sub_93eb9bdc
    emit Buy(msg.value, 10^18 * msg.value / sub_93eb9bdc, remainingSupply - (10^18 * msg.value / sub_93eb9bdc), msg.sender);
    stor151 = 1
    return 1
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if not claimActive:
        revert with 0, 'Claim not active'
    if block.timestamp <= sub_01925196:
        if arg1 > !claimedTokens[msg.sender]:
            revert with 0, 17
        if arg1 + claimedTokens[msg.sender] > 0:
            revert with 0, 'Amount exceeded'
    else:
        if sub_01925196 > block.timestamp:
            if sub_36cfa027 >= block.timestamp:
                if sub_64f702fe >= block.timestamp:
                    if sub_434b22ed >= block.timestamp:
                        if arg1 > !claimedTokens[msg.sender]:
                            revert with 0, 17
                        if block.timestamp <= sub_982f368c:
                            if arg1 + claimedTokens[msg.sender] > 0:
                                revert with 0, 'Amount exceeded'
                        else:
                            if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                revert with 0, 'Amount exceeded'
                    else:
                        if block.timestamp > sub_982f368c:
                            if arg1 > !claimedTokens[msg.sender]:
                                revert with 0, 17
                            if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                revert with 0, 'Amount exceeded'
                        else:
                            if boughtTokens[address(msg.sender)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
                                revert with 0, 17
                            if arg1 > !claimedTokens[msg.sender]:
                                revert with 0, 17
                            if arg1 + claimedTokens[msg.sender] > 8000 * boughtTokens[address(msg.sender)] / 10000:
                                revert with 0, 'Amount exceeded'
                else:
                    if block.timestamp <= sub_434b22ed:
                        if boughtTokens[address(msg.sender)] > 0xaec33e1f671529a485cd7b900aec33e1f671529a485cd7b900aec33e1f671:
                            revert with 0, 17
                        if arg1 > !claimedTokens[msg.sender]:
                            revert with 0, 17
                        if arg1 + claimedTokens[msg.sender] > 6000 * boughtTokens[address(msg.sender)] / 10000:
                            revert with 0, 'Amount exceeded'
                    else:
                        if sub_434b22ed >= block.timestamp:
                            if arg1 > !claimedTokens[msg.sender]:
                                revert with 0, 17
                            if block.timestamp <= sub_982f368c:
                                if arg1 + claimedTokens[msg.sender] > 0:
                                    revert with 0, 'Amount exceeded'
                            else:
                                if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                    revert with 0, 'Amount exceeded'
                        else:
                            if block.timestamp > sub_982f368c:
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                    revert with 0, 'Amount exceeded'
                            else:
                                if boughtTokens[address(msg.sender)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
                                    revert with 0, 17
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if arg1 + claimedTokens[msg.sender] > 8000 * boughtTokens[address(msg.sender)] / 10000:
                                    revert with 0, 'Amount exceeded'
            else:
                if block.timestamp <= sub_64f702fe:
                    if boughtTokens[address(msg.sender)] > 0x10624dd2f1a9fbe76c8b4395810624dd2f1a9fbe76c8b4395810624dd2f1a9:
                        revert with 0, 17
                    if arg1 > !claimedTokens[msg.sender]:
                        revert with 0, 17
                    if arg1 + claimedTokens[msg.sender] > 4000 * boughtTokens[address(msg.sender)] / 10000:
                        revert with 0, 'Amount exceeded'
                else:
                    if sub_64f702fe >= block.timestamp:
                        if sub_434b22ed >= block.timestamp:
                            if arg1 > !claimedTokens[msg.sender]:
                                revert with 0, 17
                            if block.timestamp <= sub_982f368c:
                                if arg1 + claimedTokens[msg.sender] > 0:
                                    revert with 0, 'Amount exceeded'
                            else:
                                if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                    revert with 0, 'Amount exceeded'
                        else:
                            if block.timestamp > sub_982f368c:
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                    revert with 0, 'Amount exceeded'
                            else:
                                if boughtTokens[address(msg.sender)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
                                    revert with 0, 17
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if arg1 + claimedTokens[msg.sender] > 8000 * boughtTokens[address(msg.sender)] / 10000:
                                    revert with 0, 'Amount exceeded'
                    else:
                        if block.timestamp <= sub_434b22ed:
                            if boughtTokens[address(msg.sender)] > 0xaec33e1f671529a485cd7b900aec33e1f671529a485cd7b900aec33e1f671:
                                revert with 0, 17
                            if arg1 > !claimedTokens[msg.sender]:
                                revert with 0, 17
                            if arg1 + claimedTokens[msg.sender] > 6000 * boughtTokens[address(msg.sender)] / 10000:
                                revert with 0, 'Amount exceeded'
                        else:
                            if sub_434b22ed >= block.timestamp:
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if block.timestamp <= sub_982f368c:
                                    if arg1 + claimedTokens[msg.sender] > 0:
                                        revert with 0, 'Amount exceeded'
                                else:
                                    if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                        revert with 0, 'Amount exceeded'
                            else:
                                if block.timestamp > sub_982f368c:
                                    if arg1 > !claimedTokens[msg.sender]:
                                        revert with 0, 17
                                    if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                        revert with 0, 'Amount exceeded'
                                else:
                                    if boughtTokens[address(msg.sender)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
                                        revert with 0, 17
                                    if arg1 > !claimedTokens[msg.sender]:
                                        revert with 0, 17
                                    if arg1 + claimedTokens[msg.sender] > 8000 * boughtTokens[address(msg.sender)] / 10000:
                                        revert with 0, 'Amount exceeded'
        else:
            if block.timestamp <= sub_36cfa027:
                if boughtTokens[address(msg.sender)] > 0x20c49ba5e353f7ced916872b020c49ba5e353f7ced916872b020c49ba5e353:
                    revert with 0, 17
                if arg1 > !claimedTokens[msg.sender]:
                    revert with 0, 17
                if arg1 + claimedTokens[msg.sender] > 2000 * boughtTokens[address(msg.sender)] / 10000:
                    revert with 0, 'Amount exceeded'
            else:
                if sub_36cfa027 >= block.timestamp:
                    if sub_64f702fe >= block.timestamp:
                        if sub_434b22ed >= block.timestamp:
                            if arg1 > !claimedTokens[msg.sender]:
                                revert with 0, 17
                            if block.timestamp <= sub_982f368c:
                                if arg1 + claimedTokens[msg.sender] > 0:
                                    revert with 0, 'Amount exceeded'
                            else:
                                if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                    revert with 0, 'Amount exceeded'
                        else:
                            if block.timestamp > sub_982f368c:
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                    revert with 0, 'Amount exceeded'
                            else:
                                if boughtTokens[address(msg.sender)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
                                    revert with 0, 17
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if arg1 + claimedTokens[msg.sender] > 8000 * boughtTokens[address(msg.sender)] / 10000:
                                    revert with 0, 'Amount exceeded'
                    else:
                        if block.timestamp <= sub_434b22ed:
                            if boughtTokens[address(msg.sender)] > 0xaec33e1f671529a485cd7b900aec33e1f671529a485cd7b900aec33e1f671:
                                revert with 0, 17
                            if arg1 > !claimedTokens[msg.sender]:
                                revert with 0, 17
                            if arg1 + claimedTokens[msg.sender] > 6000 * boughtTokens[address(msg.sender)] / 10000:
                                revert with 0, 'Amount exceeded'
                        else:
                            if sub_434b22ed >= block.timestamp:
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if block.timestamp <= sub_982f368c:
                                    if arg1 + claimedTokens[msg.sender] > 0:
                                        revert with 0, 'Amount exceeded'
                                else:
                                    if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                        revert with 0, 'Amount exceeded'
                            else:
                                if block.timestamp > sub_982f368c:
                                    if arg1 > !claimedTokens[msg.sender]:
                                        revert with 0, 17
                                    if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                        revert with 0, 'Amount exceeded'
                                else:
                                    if boughtTokens[address(msg.sender)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
                                        revert with 0, 17
                                    if arg1 > !claimedTokens[msg.sender]:
                                        revert with 0, 17
                                    if arg1 + claimedTokens[msg.sender] > 8000 * boughtTokens[address(msg.sender)] / 10000:
                                        revert with 0, 'Amount exceeded'
                else:
                    if block.timestamp <= sub_64f702fe:
                        if boughtTokens[address(msg.sender)] > 0x10624dd2f1a9fbe76c8b4395810624dd2f1a9fbe76c8b4395810624dd2f1a9:
                            revert with 0, 17
                        if arg1 > !claimedTokens[msg.sender]:
                            revert with 0, 17
                        if arg1 + claimedTokens[msg.sender] > 4000 * boughtTokens[address(msg.sender)] / 10000:
                            revert with 0, 'Amount exceeded'
                    else:
                        if sub_64f702fe >= block.timestamp:
                            if sub_434b22ed >= block.timestamp:
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if block.timestamp <= sub_982f368c:
                                    if arg1 + claimedTokens[msg.sender] > 0:
                                        revert with 0, 'Amount exceeded'
                                else:
                                    if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                        revert with 0, 'Amount exceeded'
                            else:
                                if block.timestamp > sub_982f368c:
                                    if arg1 > !claimedTokens[msg.sender]:
                                        revert with 0, 17
                                    if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                        revert with 0, 'Amount exceeded'
                                else:
                                    if boughtTokens[address(msg.sender)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
                                        revert with 0, 17
                                    if arg1 > !claimedTokens[msg.sender]:
                                        revert with 0, 17
                                    if arg1 + claimedTokens[msg.sender] > 8000 * boughtTokens[address(msg.sender)] / 10000:
                                        revert with 0, 'Amount exceeded'
                        else:
                            if block.timestamp <= sub_434b22ed:
                                if boughtTokens[address(msg.sender)] > 0xaec33e1f671529a485cd7b900aec33e1f671529a485cd7b900aec33e1f671:
                                    revert with 0, 17
                                if arg1 > !claimedTokens[msg.sender]:
                                    revert with 0, 17
                                if arg1 + claimedTokens[msg.sender] > 6000 * boughtTokens[address(msg.sender)] / 10000:
                                    revert with 0, 'Amount exceeded'
                            else:
                                if sub_434b22ed >= block.timestamp:
                                    if arg1 > !claimedTokens[msg.sender]:
                                        revert with 0, 17
                                    if block.timestamp <= sub_982f368c:
                                        if arg1 + claimedTokens[msg.sender] > 0:
                                            revert with 0, 'Amount exceeded'
                                    else:
                                        if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                            revert with 0, 'Amount exceeded'
                                else:
                                    if block.timestamp > sub_982f368c:
                                        if arg1 > !claimedTokens[msg.sender]:
                                            revert with 0, 17
                                        if arg1 + claimedTokens[msg.sender] > boughtTokens[address(msg.sender)]:
                                            revert with 0, 'Amount exceeded'
                                    else:
                                        if boughtTokens[address(msg.sender)] > 0x83126e978d4fdf3b645a1cac083126e978d4fdf3b645a1cac083126e978d4:
                                            revert with 0, 17
                                        if arg1 > !claimedTokens[msg.sender]:
                                            revert with 0, 17
                                        if arg1 + claimedTokens[msg.sender] > 8000 * boughtTokens[address(msg.sender)] / 10000:
                                            revert with 0, 'Amount exceeded'
    if claimedTokens[msg.sender] > !arg1:
        revert with 0, 17
    claimedTokens[msg.sender] += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Claim(arg1, msg.sender);
    stor151 = 1
    return 1
}



}
