contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct maxPayableAmount;
array of uint256 stor2;
array of uint256 stor3;
array of struct stor4;
uint256 soldAmount;
uint256 sub_3996dc8f;
uint256 totalParticipant;
uint256 totalRedeemed;
uint256 totalRewardTokens;
uint8 stor10;

function getTokenAddress() {
    return address(stor2.length)
}

function totalRewardTokens() {
    return totalRewardTokens
}

function tokenRate() {
    return stor4.length
}

function sub_3996dc8f(?) {
    return sub_3996dc8f
}

function totalParticipant() {
    return totalParticipant
}

function startTime() {
    return stor3.length
}

function isFinished() {
    return bool(stor10)
}

function owner() {
    return owner
}

function getMaxPayableAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return maxPayableAmount[address(arg1)].field_512
}

function totalRedeemed() {
    return totalRedeemed
}

function soldAmount() {
    return soldAmount
}

function _fallback() {
    revert
}

function isInitialized() {
    return not not stor3.length
}

function getRemainingReward() {
    if totalRewardTokens < soldAmount:
        revert with 'NH{q', 17
    return (totalRewardTokens - soldAmount)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isStart() {
    if not stor3.length:
        return not not stor3.length
    if stor3.length <= 0:
        return (stor3.length > 0)
    return block.timestamp >= stor3.length
}

function finishSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = 1
    emit EFinishSale(bool(stor10));
    return bool(stor10)
}

function withdrawBNBBalance() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit EWithdrawBNBBalance(msg.sender, eth.balance(this.address));
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

function getWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(arg1), 
           maxPayableAmount[address(arg1)].field_256,
           maxPayableAmount[address(arg1)].field_512,
           maxPayableAmount[address(arg1)].field_768,
           bool(maxPayableAmount[address(arg1)].field_1032),
           bool(maxPayableAmount[address(arg1)].field_1024)
}

function getTotalToken() {
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setTokenRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This step should perform before the sale'
    if arg1 <= 0:
        revert with 0, 'The rate must not be zero'
    stor4.length = arg1
    emit ESetTokenRate(stor4.length);
}

function addRewardTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(stor2.length):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token address has not initialized yet'
    if arg1 <= 0:
        revert with 0, 'amont should not be 0'
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalRewardTokens > -arg1 - 1:
        revert with 'NH{q', 17
    totalRewardTokens += arg1
    emit EAddRewardTokens(msg.sender, arg1, totalRewardTokens);
}

function withdrawRemainingTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if soldAmount < totalRedeemed:
        revert with 'NH{q', 17
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < soldAmount - totalRedeemed:
        revert with 'NH{q', 17
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - soldAmount + totalRedeemed
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit EWithdrawRemainingTokens(msg.sender, ext_call.return_data[0] - soldAmount + totalRedeemed);
}

function redeemTokens() {
    if not maxPayableAmount[address(msg.sender)].field_1024:
        revert with 0, 'Sender is not in whitelist'
    if not stor10:
        revert with 0, 'Sale is not finalized yet'
    if maxPayableAmount[address(msg.sender)].field_1032:
        revert with 0, 'Redeemed already'
    maxPayableAmount[address(msg.sender)].field_1032 = 1
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining wei
        args maxPayableAmount[address(msg.sender)].field_0, maxPayableAmount[address(msg.sender)].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalRedeemed > -maxPayableAmount[address(msg.sender)].field_768 - 1:
        revert with 'NH{q', 17
    totalRedeemed += maxPayableAmount[address(msg.sender)].field_768
    emit ERedeemTokens(maxPayableAmount[address(msg.sender)].field_0, maxPayableAmount[address(msg.sender)].field_768);
    maxPayableAmount[address(msg.sender)].field_768 = 0
    maxPayableAmount[address(msg.sender)].field_256 = 0
}

function openSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This step should perform before the sale'
    if arg1 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'start time should be greater than current time'
    if not address(stor2.length):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token address has not initialized yet'
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Total token for sale must greater than zero'
    stor3.length = arg1
    stor10 = 0
    if not stor3.length:
        emit EOpenSale(stor3.length, not not stor3.length);
    else:
        if stor3.length <= 0:
            emit EOpenSale(stor3.length, stor3.length > 0);
        else:
            emit EOpenSale(stor3.length, block.timestamp >= stor3.length);
}

function getTokenInBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and stor4.length > -1 / arg1:
            revert with 'NH{q', 17
        return (arg1 * stor4.length)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if arg1 and stor4.length > -1 / arg1:
            revert with 'NH{q', 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 'NH{q', 18
        return (arg1 * stor4.length / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if arg1 and stor4.length > -1 / arg1:
        revert with 'NH{q', 17
    if not t * s:
        revert with 'NH{q', 18
    return (arg1 * stor4.length / t * s)
}

function calculateAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and 1 > -1 / arg1:
            revert with 'NH{q', 17
        if not stor4.length:
            revert with 'NH{q', 18
        return (arg1 / stor4.length)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
            revert with 'NH{q', 17
        if not stor4.length:
            revert with 'NH{q', 18
        return (arg1 * 10^ext_call.return_data[31 len 1] / stor4.length)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if arg1 and t * s > -1 / arg1:
        revert with 'NH{q', 17
    if not stor4.length:
        revert with 'NH{q', 18
    return (arg1 * t * s / stor4.length)
}

function sub_a48e84b5(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _67 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_67] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_67 + 32] = cd[(s + 32)]
        mem[t] = _67
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor3.length:
        _69 = mem[96]
        idx = 0
        while idx < _69:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _138 = mem[(32 * idx) + 128]
            _139 = mem[64]
            mem[64] = mem[64] + 192
            mem[_139] = mem[mem[(32 * idx) + 128] + 12 len 20]
            mem[_139 + 32] = 0
            mem[_139 + 64] = mem[_138 + 32]
            mem[_139 + 96] = 0
            mem[_139 + 128] = 1
            mem[_139 + 160] = 0
            mem[0] = mem[_138 + 12 len 20]
            mem[32] = 1
            maxPayableAmount[mem[0]].field_0 = mem[_139 + 12 len 20]
            maxPayableAmount[mem[0]].field_256 = 0
            maxPayableAmount[mem[0]].field_512 = mem[_139 + 64]
            maxPayableAmount[mem[0]].field_768 = 0
            maxPayableAmount[mem[0]].field_1024 = 1
            maxPayableAmount[mem[0]].field_1032 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _132 = mem[64]
        mem[mem[64]] = 32
        _174 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _174:
            _189 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_189 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        emit 0x60b99eb3: mem[mem[64] len _132 + (64 * _174) + -mem[64] + 64]
    else:
        if stor3.length <= 0:
            _70 = mem[96]
            idx = 0
            while idx < _70:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _150 = mem[(32 * idx) + 128]
                _151 = mem[64]
                mem[64] = mem[64] + 192
                mem[_151] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[_151 + 32] = 0
                mem[_151 + 64] = mem[_150 + 32]
                mem[_151 + 96] = 0
                mem[_151 + 128] = 1
                mem[_151 + 160] = 0
                mem[0] = mem[_150 + 12 len 20]
                mem[32] = 1
                maxPayableAmount[mem[0]].field_0 = mem[_151 + 12 len 20]
                maxPayableAmount[mem[0]].field_256 = 0
                maxPayableAmount[mem[0]].field_512 = mem[_151 + 64]
                maxPayableAmount[mem[0]].field_768 = 0
                maxPayableAmount[mem[0]].field_1024 = 1
                maxPayableAmount[mem[0]].field_1032 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _134 = mem[64]
            mem[mem[64]] = 32
            _175 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _175:
                _190 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_190 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            emit 0x60b99eb3: mem[mem[64] len _134 + (64 * _175) + -mem[64] + 64]
        else:
            if block.timestamp >= stor3.length:
                revert with 0, 'Sale is started'
            _74 = mem[96]
            idx = 0
            while idx < _74:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _162 = mem[(32 * idx) + 128]
                _163 = mem[64]
                mem[64] = mem[64] + 192
                mem[_163] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[_163 + 32] = 0
                mem[_163 + 64] = mem[_162 + 32]
                mem[_163 + 96] = 0
                mem[_163 + 128] = 1
                mem[_163 + 160] = 0
                mem[0] = mem[_162 + 12 len 20]
                mem[32] = 1
                maxPayableAmount[mem[0]].field_0 = mem[_163 + 12 len 20]
                maxPayableAmount[mem[0]].field_256 = 0
                maxPayableAmount[mem[0]].field_512 = mem[_163 + 64]
                maxPayableAmount[mem[0]].field_768 = 0
                maxPayableAmount[mem[0]].field_1024 = 1
                maxPayableAmount[mem[0]].field_1032 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _136 = mem[64]
            mem[mem[64]] = 32
            _176 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _176:
                _191 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_191 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            emit 0x60b99eb3: mem[mem[64] len _136 + (64 * _176) + -mem[64] + 64]
}

function removeWhitelist(address[] arg1) {
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
    if not stor3.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _142 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            _143 = sha3(mem[(32 * idx) + 140 len 20], 1)
            _144 = mem[64]
            mem[64] = mem[64] + 192
            mem[_144] = maxPayableAmount[mem[(32 * idx) + 140 len 20]].field_0
            mem[_144 + 32] = maxPayableAmount[_143].field_0
            mem[_144 + 64] = uint256(stor2[_143])
            mem[_144 + 96] = stor3[_143]
            mem[_144 + 128] = bool(stor4[_143].field_0)
            mem[_144 + 160] = bool(stor4[_143].field_8)
            _145 = mem[64]
            mem[64] = mem[64] + 192
            mem[_145] = address(_142)
            mem[_145 + 32] = maxPayableAmount[_143].field_0
            mem[_145 + 64] = uint256(stor2[_143])
            mem[_145 + 96] = stor3[_143]
            mem[_145 + 128] = bool(stor4[_143].field_8)
            mem[_145 + 160] = 0
            mem[0] = address(_142)
            mem[32] = 1
            maxPayableAmount[address(_142)].field_0 = address(_142)
            maxPayableAmount[address(_142)].field_256 = maxPayableAmount[_143].field_0
            maxPayableAmount[address(_142)].field_512 = uint256(stor2[_143])
            maxPayableAmount[address(_142)].field_768 = stor3[_143]
            maxPayableAmount[address(_142)].field_1024 = uint8(bool(stor4[_143].field_8))
            maxPayableAmount[address(_142)].field_1032 = 0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _136 = mem[64]
        mem[mem[64]] = 32
        _187 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _187:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit ERemoveWhiteList(mem[mem[64] len _136 + (32 * _187) + -mem[64] + 64]);
    else:
        if stor3.length <= 0:
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _157 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                _158 = sha3(mem[(32 * idx) + 140 len 20], 1)
                _159 = mem[64]
                mem[64] = mem[64] + 192
                mem[_159] = maxPayableAmount[mem[(32 * idx) + 140 len 20]].field_0
                mem[_159 + 32] = maxPayableAmount[_158].field_0
                mem[_159 + 64] = uint256(stor2[_158])
                mem[_159 + 96] = stor3[_158]
                mem[_159 + 128] = bool(stor4[_158].field_0)
                mem[_159 + 160] = bool(stor4[_158].field_8)
                _160 = mem[64]
                mem[64] = mem[64] + 192
                mem[_160] = address(_157)
                mem[_160 + 32] = maxPayableAmount[_158].field_0
                mem[_160 + 64] = uint256(stor2[_158])
                mem[_160 + 96] = stor3[_158]
                mem[_160 + 128] = bool(stor4[_158].field_8)
                mem[_160 + 160] = 0
                mem[0] = address(_157)
                mem[32] = 1
                maxPayableAmount[address(_157)].field_0 = address(_157)
                maxPayableAmount[address(_157)].field_256 = maxPayableAmount[_158].field_0
                maxPayableAmount[address(_157)].field_512 = uint256(stor2[_158])
                maxPayableAmount[address(_157)].field_768 = stor3[_158]
                maxPayableAmount[address(_157)].field_1024 = uint8(bool(stor4[_158].field_8))
                maxPayableAmount[address(_157)].field_1032 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _138 = mem[64]
            mem[mem[64]] = 32
            _188 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _188:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit ERemoveWhiteList(mem[mem[64] len _138 + (32 * _188) + -mem[64] + 64]);
        else:
            if block.timestamp >= stor3.length:
                revert with 0, 'Sale is started'
            idx = 0
            while idx < arg1.length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _172 = mem[(32 * idx) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 1
                _173 = sha3(mem[(32 * idx) + 140 len 20], 1)
                _174 = mem[64]
                mem[64] = mem[64] + 192
                mem[_174] = maxPayableAmount[mem[(32 * idx) + 140 len 20]].field_0
                mem[_174 + 32] = maxPayableAmount[_173].field_0
                mem[_174 + 64] = uint256(stor2[_173])
                mem[_174 + 96] = stor3[_173]
                mem[_174 + 128] = bool(stor4[_173].field_0)
                mem[_174 + 160] = bool(stor4[_173].field_8)
                _175 = mem[64]
                mem[64] = mem[64] + 192
                mem[_175] = address(_172)
                mem[_175 + 32] = maxPayableAmount[_173].field_0
                mem[_175 + 64] = uint256(stor2[_173])
                mem[_175 + 96] = stor3[_173]
                mem[_175 + 128] = bool(stor4[_173].field_8)
                mem[_175 + 160] = 0
                mem[0] = address(_172)
                mem[32] = 1
                maxPayableAmount[address(_172)].field_0 = address(_172)
                maxPayableAmount[address(_172)].field_256 = maxPayableAmount[_173].field_0
                maxPayableAmount[address(_172)].field_512 = uint256(stor2[_173])
                maxPayableAmount[address(_172)].field_768 = stor3[_173]
                maxPayableAmount[address(_172)].field_1024 = uint8(bool(stor4[_173].field_8))
                maxPayableAmount[address(_172)].field_1032 = 0
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _140 = mem[64]
            mem[mem[64]] = 32
            _189 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _189:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit ERemoveWhiteList(mem[mem[64] len _140 + (32 * _189) + -mem[64] + 64]);
}

function setTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This step should perform before the sale'
    address(stor2.length) = arg1
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.name() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307() or ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require _6 + _7 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_7)] = mem[_6 + 128 len ceil32(_7)]
    if ceil32(_7) <= _7:
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _109 = mem[_107]
        require mem[_107] <= test266151307()
        require _107 + mem[_107] + 31 < _107 + return_data.size
        _111 = mem[_107 + mem[_107]]
        if mem[_107 + mem[_107]] > test266151307():
            revert with 'NH{q', 65
        if _107 + ceil32(return_data.size) + ceil32(ceil32(mem[_107 + mem[_107]])) + 1 > test266151307() or ceil32(ceil32(mem[_107 + mem[_107]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _107 + ceil32(return_data.size) + ceil32(ceil32(mem[_107 + mem[_107]])) + 1
        mem[_107 + ceil32(return_data.size)] = _111
        require _109 + _111 + 32 <= return_data.size
        mem[_107 + ceil32(return_data.size) + 32 len ceil32(_111)] = mem[_107 + _109 + 32 len ceil32(_111)]
        if ceil32(_111) <= _111:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _207 = mem[_203]
            require mem[_203] == mem[_203 + 31 len 1]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _219 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _223 = mem[_219]
            require mem[_219] == mem[_219]
            _227 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _7
            mem[mem[64] + 160 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
            if ceil32(_7) <= _7:
                mem[mem[64] + 32] = ceil32(_7) + 160
                mem[mem[64] + ceil32(_7) + 160] = _111
                mem[mem[64] + ceil32(_7) + 192 len ceil32(_111)] = mem[_107 + ceil32(return_data.size) + 32 len ceil32(_111)]
                if ceil32(_111) > _111:
                    mem[mem[64] + ceil32(_7) + _111 + 192] = 0
                mem[mem[64] + 64] = uint8(_207)
            else:
                mem[mem[64] + _7 + 160] = 0
                mem[mem[64] + 32] = ceil32(_7) + 160
                mem[_227 + ceil32(_7) + 160] = _111
                mem[_227 + ceil32(_7) + 192 len ceil32(_111)] = mem[_107 + ceil32(return_data.size) + 32 len ceil32(_111)]
                if ceil32(_111) > _111:
                    mem[_227 + ceil32(_7) + _111 + 192] = 0
                mem[_227 + 64] = uint8(_207)
            mem[_227 + 96] = _223
            emit ESetTokenAddress(string arg1, string arg2, uint8 arg3, uint256 arg4):
                                  mem[mem[64] len _227 + ceil32(_7) + ceil32(_111) + -mem[64] + 192],
        else:
            mem[_107 + ceil32(return_data.size) + _111 + 32] = 0
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _209 = mem[_205]
            require mem[_205] == mem[_205 + 31 len 1]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _225 = mem[_221]
            require mem[_221] == mem[_221]
            _229 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _7
            mem[mem[64] + 160 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
            if ceil32(_7) <= _7:
                mem[mem[64] + 32] = ceil32(_7) + 160
                mem[mem[64] + ceil32(_7) + 160] = _111
                mem[mem[64] + ceil32(_7) + 192 len ceil32(_111)] = mem[_107 + ceil32(return_data.size) + 32 len ceil32(_111)]
                if ceil32(_111) > _111:
                    mem[mem[64] + ceil32(_7) + _111 + 192] = 0
                mem[mem[64] + 64] = uint8(_209)
            else:
                mem[mem[64] + _7 + 160] = 0
                mem[mem[64] + 32] = ceil32(_7) + 160
                mem[_229 + ceil32(_7) + 160] = _111
                mem[_229 + ceil32(_7) + 192 len ceil32(_111)] = mem[_107 + ceil32(return_data.size) + 32 len ceil32(_111)]
                if ceil32(_111) > _111:
                    mem[_229 + ceil32(_7) + _111 + 192] = 0
                mem[_229 + 64] = uint8(_209)
            mem[_229 + 96] = _225
            emit ESetTokenAddress(string arg1, string arg2, uint8 arg3, uint256 arg4):
                                  mem[mem[64] len _229 + ceil32(_7) + ceil32(_111) + -mem[64] + 192],
    else:
        mem[ceil32(return_data.size) + _7 + 128] = 0
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _108 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _110 = mem[_108]
        require mem[_108] <= test266151307()
        require _108 + mem[_108] + 31 < _108 + return_data.size
        _112 = mem[_108 + mem[_108]]
        if mem[_108 + mem[_108]] > test266151307():
            revert with 'NH{q', 65
        if _108 + ceil32(return_data.size) + ceil32(ceil32(mem[_108 + mem[_108]])) + 1 > test266151307() or ceil32(ceil32(mem[_108 + mem[_108]])) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _108 + ceil32(return_data.size) + ceil32(ceil32(mem[_108 + mem[_108]])) + 1
        mem[_108 + ceil32(return_data.size)] = _112
        require _110 + _112 + 32 <= return_data.size
        mem[_108 + ceil32(return_data.size) + 32 len ceil32(_112)] = mem[_108 + _110 + 32 len ceil32(_112)]
        if ceil32(_112) <= _112:
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _208 = mem[_204]
            require mem[_204] == mem[_204 + 31 len 1]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _224 = mem[_220]
            require mem[_220] == mem[_220]
            _228 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _7
            mem[mem[64] + 160 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
            if ceil32(_7) <= _7:
                mem[mem[64] + 32] = ceil32(_7) + 160
                mem[mem[64] + ceil32(_7) + 160] = _112
                mem[mem[64] + ceil32(_7) + 192 len ceil32(_112)] = mem[_108 + ceil32(return_data.size) + 32 len ceil32(_112)]
                if ceil32(_112) > _112:
                    mem[mem[64] + ceil32(_7) + _112 + 192] = 0
                mem[mem[64] + 64] = uint8(_208)
            else:
                mem[mem[64] + _7 + 160] = 0
                mem[mem[64] + 32] = ceil32(_7) + 160
                mem[_228 + ceil32(_7) + 160] = _112
                mem[_228 + ceil32(_7) + 192 len ceil32(_112)] = mem[_108 + ceil32(return_data.size) + 32 len ceil32(_112)]
                if ceil32(_112) > _112:
                    mem[_228 + ceil32(_7) + _112 + 192] = 0
                mem[_228 + 64] = uint8(_208)
            mem[_228 + 96] = _224
            emit ESetTokenAddress(string arg1, string arg2, uint8 arg3, uint256 arg4):
                                  mem[mem[64] len _228 + ceil32(_7) + ceil32(_112) + -mem[64] + 192],
        else:
            mem[_108 + ceil32(return_data.size) + _112 + 32] = 0
            require ext_code.size(arg1)
            staticcall arg1.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _210 = mem[_206]
            require mem[_206] == mem[_206 + 31 len 1]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _226 = mem[_222]
            require mem[_222] == mem[_222]
            _230 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = _7
            mem[mem[64] + 160 len ceil32(_7)] = mem[ceil32(return_data.size) + 128 len ceil32(_7)]
            if ceil32(_7) <= _7:
                mem[mem[64] + 32] = ceil32(_7) + 160
                mem[mem[64] + ceil32(_7) + 160] = _112
                mem[mem[64] + ceil32(_7) + 192 len ceil32(_112)] = mem[_108 + ceil32(return_data.size) + 32 len ceil32(_112)]
                if ceil32(_112) > _112:
                    mem[mem[64] + ceil32(_7) + _112 + 192] = 0
                mem[mem[64] + 64] = uint8(_210)
            else:
                mem[mem[64] + _7 + 160] = 0
                mem[mem[64] + 32] = ceil32(_7) + 160
                mem[_230 + ceil32(_7) + 160] = _112
                mem[_230 + ceil32(_7) + 192 len ceil32(_112)] = mem[_108 + ceil32(return_data.size) + 32 len ceil32(_112)]
                if ceil32(_112) > _112:
                    mem[_230 + ceil32(_7) + _112 + 192] = 0
                mem[_230 + 64] = uint8(_210)
            mem[_230 + 96] = _226
            emit ESetTokenAddress(string arg1, string arg2, uint8 arg3, uint256 arg4):
                                  mem[mem[64] len _230 + ceil32(_7) + ceil32(_112) + -mem[64] + 192],
}

function buyTokens() payable {
    if not stor3.length:
        revert with 0, 'Sale is not started yet'
    if stor3.length <= 0:
        revert with 0, 'Sale is not started yet'
    if block.timestamp < stor3.length:
        revert with 0, 'Sale is not started yet'
    if stor10:
        revert with 0, 'Sale is finished'
    if not maxPayableAmount[address(msg.sender)].field_1024:
        revert with 0, 'You are not in whitelist'
    if msg.value <= 0:
        revert with 0, 'You must pay some accepted tokens to get sale tokens'
    require ext_code.size(address(stor2.length))
    staticcall address(stor2.length).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if msg.value and 1 > -1 / msg.value:
            revert with 'NH{q', 17
        if not stor4.length:
            revert with 'NH{q', 18
        if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value / stor4.length) - 1:
            revert with 'NH{q', 17
        if maxPayableAmount[address(msg.sender)].field_512 < maxPayableAmount[address(msg.sender)].field_768 + (msg.value / stor4.length):
            revert with 0, 'You can not send ether more than max payable amount'
        require ext_code.size(address(stor2.length))
        staticcall address(stor2.length).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if totalRewardTokens < soldAmount:
            revert with 'NH{q', 17
        require ext_code.size(address(stor2.length))
        staticcall address(stor2.length).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                revert with 'NH{q', 17
            if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                if msg.value / stor4.length <= 0:
                    revert with 0, 'Zero rewarded amount'
                if not maxPayableAmount[address(msg.sender)].field_256:
                    if msg.value > 0:
                        if totalParticipant > -2:
                            revert with 'NH{q', 17
                        totalParticipant++
                if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                    revert with 'NH{q', 17
                maxPayableAmount[address(msg.sender)].field_256 += msg.value
                if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value / stor4.length) - 1:
                    revert with 'NH{q', 17
                maxPayableAmount[address(msg.sender)].field_768 += msg.value / stor4.length
                if soldAmount > -(msg.value / stor4.length) - 1:
                    revert with 'NH{q', 17
                soldAmount += msg.value / stor4.length
                if sub_3996dc8f > -msg.value - 1:
                    revert with 'NH{q', 17
                sub_3996dc8f += msg.value
                emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
            else:
                if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                    revert with 'NH{q', 17
                if msg.value < msg.value - (totalRewardTokens * stor4.length) + (soldAmount * stor4.length):
                    revert with 'NH{q', 17
                call msg.sender with:
                   value msg.value - (totalRewardTokens * stor4.length) + (soldAmount * stor4.length) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                stor10 = 1
                emit EFinishSale(bool(stor10));
                require ext_code.size(address(stor2.length))
                staticcall address(stor2.length).0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                        revert with 'NH{q', 17
                    if not stor4.length:
                        revert with 'NH{q', 18
                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length <= 0:
                        revert with 0, 'Zero rewarded amount'
                    if not maxPayableAmount[address(msg.sender)].field_256:
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                            if totalParticipant > -2:
                                revert with 'NH{q', 17
                            totalParticipant++
                    if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                    if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length) - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length
                    if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length) - 1:
                        revert with 'NH{q', 17
                    soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length
                    if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                        revert with 'NH{q', 17
                    sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                    emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                            revert with 'NH{q', 17
                        if not stor4.length:
                            revert with 'NH{q', 18
                        if (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                        if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length
                        if soldAmount > -((totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length
                        if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                        emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length * 10^uint8(ext_call.return_data[0])) - (soldAmount * stor4.length * 10^uint8(ext_call.return_data[0])) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
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
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and t * s > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                            revert with 'NH{q', 17
                        if not stor4.length:
                            revert with 'NH{q', 18
                        if (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                        if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length
                        if soldAmount > -((totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length
                        if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                        emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                    revert with 'NH{q', 17
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 'NH{q', 18
                if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]:
                    if msg.value / stor4.length <= 0:
                        revert with 0, 'Zero rewarded amount'
                    if not maxPayableAmount[address(msg.sender)].field_256:
                        if msg.value > 0:
                            if totalParticipant > -2:
                                revert with 'NH{q', 17
                            totalParticipant++
                    if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_256 += msg.value
                    if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value / stor4.length) - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_768 += msg.value / stor4.length
                    if soldAmount > -(msg.value / stor4.length) - 1:
                        revert with 'NH{q', 17
                    soldAmount += msg.value / stor4.length
                    if sub_3996dc8f > -msg.value - 1:
                        revert with 'NH{q', 17
                    sub_3996dc8f += msg.value
                    emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                else:
                    if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]:
                        revert with 'NH{q', 17
                    if msg.value < msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]):
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor10 = 1
                    emit EFinishSale(bool(stor10));
                    require ext_code.size(address(stor2.length))
                    staticcall address(stor2.length).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not stor4.length:
                            revert with 'NH{q', 18
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                        if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length
                        if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length
                        if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                        emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length
                            if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and t * s > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length
                            if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
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
                if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                    revert with 'NH{q', 17
                if not t * s:
                    revert with 'NH{q', 18
                if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                    if msg.value / stor4.length <= 0:
                        revert with 0, 'Zero rewarded amount'
                    if not maxPayableAmount[address(msg.sender)].field_256:
                        if msg.value > 0:
                            if totalParticipant > -2:
                                revert with 'NH{q', 17
                            totalParticipant++
                    if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_256 += msg.value
                    if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value / stor4.length) - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_768 += msg.value / stor4.length
                    if soldAmount > -(msg.value / stor4.length) - 1:
                        revert with 'NH{q', 17
                    soldAmount += msg.value / stor4.length
                    if sub_3996dc8f > -msg.value - 1:
                        revert with 'NH{q', 17
                    sub_3996dc8f += msg.value
                    emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                else:
                    if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                        revert with 'NH{q', 17
                    if msg.value < msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s):
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor10 = 1
                    emit EFinishSale(bool(stor10));
                    require ext_code.size(address(stor2.length))
                    staticcall address(stor2.length).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                            revert with 'NH{q', 17
                        if not stor4.length:
                            revert with 'NH{q', 18
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                        if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length
                        if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length
                        if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                        emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length
                            if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                        else:
                            u = 10
                            v = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s and v * u > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length
                            if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if msg.value and 10^ext_call.return_data[31 len 1] > -1 / msg.value:
                revert with 'NH{q', 17
            if not stor4.length:
                revert with 'NH{q', 18
            if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                revert with 'NH{q', 17
            if maxPayableAmount[address(msg.sender)].field_512 < maxPayableAmount[address(msg.sender)].field_768 + (msg.value * 10^ext_call.return_data[31 len 1] / stor4.length):
                revert with 0, 'You can not send ether more than max payable amount'
            require ext_code.size(address(stor2.length))
            staticcall address(stor2.length).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if totalRewardTokens < soldAmount:
                revert with 'NH{q', 17
            require ext_code.size(address(stor2.length))
            staticcall address(stor2.length).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                    revert with 'NH{q', 17
                if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                    if msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length <= 0:
                        revert with 0, 'Zero rewarded amount'
                    if not maxPayableAmount[address(msg.sender)].field_256:
                        if msg.value > 0:
                            if totalParticipant > -2:
                                revert with 'NH{q', 17
                            totalParticipant++
                    if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_256 += msg.value
                    if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_768 += msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length
                    if soldAmount > -(msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                        revert with 'NH{q', 17
                    soldAmount += msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length
                    if sub_3996dc8f > -msg.value - 1:
                        revert with 'NH{q', 17
                    sub_3996dc8f += msg.value
                    emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                else:
                    if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                        revert with 'NH{q', 17
                    if msg.value < msg.value - (totalRewardTokens * stor4.length) + (soldAmount * stor4.length):
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - (totalRewardTokens * stor4.length) + (soldAmount * stor4.length) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor10 = 1
                    emit EFinishSale(bool(stor10));
                    require ext_code.size(address(stor2.length))
                    staticcall address(stor2.length).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                            revert with 'NH{q', 17
                        if not stor4.length:
                            revert with 'NH{q', 18
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                        if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length
                        if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length
                        if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                        emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length
                            if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length * 10^uint8(ext_call.return_data[0])) - (soldAmount * stor4.length * 10^uint8(ext_call.return_data[0])) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and t * s > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length
                            if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                        revert with 'NH{q', 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 'NH{q', 18
                    if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]:
                        if msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if msg.value > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 += msg.value
                        if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length
                        if soldAmount > -(msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length
                        if sub_3996dc8f > -msg.value - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f += msg.value
                        emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]:
                            revert with 'NH{q', 17
                        if msg.value < msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor10 = 1
                        emit EFinishSale(bool(stor10));
                        require ext_code.size(address(stor2.length))
                        staticcall address(stor2.length).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length
                            if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                                    revert with 'NH{q', 17
                                if not stor4.length:
                                    revert with 'NH{q', 18
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length <= 0:
                                    revert with 0, 'Zero rewarded amount'
                                if not maxPayableAmount[address(msg.sender)].field_256:
                                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                        if totalParticipant > -2:
                                            revert with 'NH{q', 17
                                        totalParticipant++
                                if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                                if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length
                                if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length
                                if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                    revert with 'NH{q', 17
                                sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                                emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
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
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and t * s > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                                    revert with 'NH{q', 17
                                if not stor4.length:
                                    revert with 'NH{q', 18
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length <= 0:
                                    revert with 0, 'Zero rewarded amount'
                                if not maxPayableAmount[address(msg.sender)].field_256:
                                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                        if totalParticipant > -2:
                                            revert with 'NH{q', 17
                                        totalParticipant++
                                if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                                if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length
                                if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length
                                if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                    revert with 'NH{q', 17
                                sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                                emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
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
                    if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                        if msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if msg.value > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 += msg.value
                        if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length
                        if soldAmount > -(msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length
                        if sub_3996dc8f > -msg.value - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f += msg.value
                        emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                            revert with 'NH{q', 17
                        if msg.value < msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor10 = 1
                        emit EFinishSale(bool(stor10));
                        require ext_code.size(address(stor2.length))
                        staticcall address(stor2.length).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length
                            if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                                    revert with 'NH{q', 17
                                if not stor4.length:
                                    revert with 'NH{q', 18
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length <= 0:
                                    revert with 0, 'Zero rewarded amount'
                                if not maxPayableAmount[address(msg.sender)].field_256:
                                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s > 0:
                                        if totalParticipant > -2:
                                            revert with 'NH{q', 17
                                        totalParticipant++
                                if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                                if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length
                                if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^ext_call.return_data[31 len 1] / stor4.length
                                if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                    revert with 'NH{q', 17
                                sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                                emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                            else:
                                u = 10
                                v = 1
                                idx = ext_call.return_data[31 len 1]
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
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s and v * u > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s:
                                    revert with 'NH{q', 17
                                if not stor4.length:
                                    revert with 'NH{q', 18
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length <= 0:
                                    revert with 0, 'Zero rewarded amount'
                                if not maxPayableAmount[address(msg.sender)].field_256:
                                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s > 0:
                                        if totalParticipant > -2:
                                            revert with 'NH{q', 17
                                        totalParticipant++
                                if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                                if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length
                                if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length
                                if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s) - 1:
                                    revert with 'NH{q', 17
                                sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s
                                emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / t * s * v * u / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
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
            if msg.value and t * s > -1 / msg.value:
                revert with 'NH{q', 17
            if not stor4.length:
                revert with 'NH{q', 18
            if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value * t * s / stor4.length) - 1:
                revert with 'NH{q', 17
            if maxPayableAmount[address(msg.sender)].field_512 < maxPayableAmount[address(msg.sender)].field_768 + (msg.value * t * s / stor4.length):
                revert with 0, 'You can not send ether more than max payable amount'
            require ext_code.size(address(stor2.length))
            staticcall address(stor2.length).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if totalRewardTokens < soldAmount:
                revert with 'NH{q', 17
            require ext_code.size(address(stor2.length))
            staticcall address(stor2.length).0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                    revert with 'NH{q', 17
                if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                    if msg.value * t * s / stor4.length <= 0:
                        revert with 0, 'Zero rewarded amount'
                    if not maxPayableAmount[address(msg.sender)].field_256:
                        if msg.value > 0:
                            if totalParticipant > -2:
                                revert with 'NH{q', 17
                            totalParticipant++
                    if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_256 += msg.value
                    if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value * t * s / stor4.length) - 1:
                        revert with 'NH{q', 17
                    maxPayableAmount[address(msg.sender)].field_768 += msg.value * t * s / stor4.length
                    if soldAmount > -(msg.value * t * s / stor4.length) - 1:
                        revert with 'NH{q', 17
                    soldAmount += msg.value * t * s / stor4.length
                    if sub_3996dc8f > -msg.value - 1:
                        revert with 'NH{q', 17
                    sub_3996dc8f += msg.value
                    emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value * t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                else:
                    if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                        revert with 'NH{q', 17
                    if msg.value < msg.value - (totalRewardTokens * stor4.length) + (soldAmount * stor4.length):
                        revert with 'NH{q', 17
                    call msg.sender with:
                       value msg.value - (totalRewardTokens * stor4.length) + (soldAmount * stor4.length) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    stor10 = 1
                    emit EFinishSale(bool(stor10));
                    require ext_code.size(address(stor2.length))
                    staticcall address(stor2.length).0x313ce567 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if not ext_call.return_data[31 len 1]:
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                            revert with 'NH{q', 17
                        if not stor4.length:
                            revert with 'NH{q', 18
                        if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                        if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length
                        if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length
                        if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                        emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                            if 10^ext_call.return_data[31 len 1] > -1:
                                revert with 'NH{q', 17
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length * 10^ext_call.return_data[31 len 1]) - (soldAmount * stor4.length * 10^ext_call.return_data[31 len 1]) / stor4.length
                            if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length * 10^uint8(ext_call.return_data[0])) - (soldAmount * stor4.length * 10^uint8(ext_call.return_data[0])) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                        else:
                            s = 10
                            t = 1
                            idx = ext_call.return_data[31 len 1]
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
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) and t * s > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length):
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 = maxPayableAmount[address(msg.sender)].field_256 + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length
                            if sub_3996dc8f > (-1 * totalRewardTokens * stor4.length) + (soldAmount * stor4.length) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f = sub_3996dc8f + (totalRewardTokens * stor4.length) - (soldAmount * stor4.length)
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length), ext_call.return_data[0], (totalRewardTokens * stor4.length * t * s) - (soldAmount * stor4.length * t * s) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                        revert with 'NH{q', 17
                    if not 10^ext_call.return_data[31 len 1]:
                        revert with 'NH{q', 18
                    if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]:
                        if msg.value * t * s / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if msg.value > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 += msg.value
                        if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value * t * s / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += msg.value * t * s / stor4.length
                        if soldAmount > -(msg.value * t * s / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += msg.value * t * s / stor4.length
                        if sub_3996dc8f > -msg.value - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f += msg.value
                        emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value * t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]:
                            revert with 'NH{q', 17
                        if msg.value < msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^ext_call.return_data[31 len 1]) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor10 = 1
                        emit EFinishSale(bool(stor10));
                        require ext_code.size(address(stor2.length))
                        staticcall address(stor2.length).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length
                            if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                                    revert with 'NH{q', 17
                                if not stor4.length:
                                    revert with 'NH{q', 18
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length <= 0:
                                    revert with 0, 'Zero rewarded amount'
                                if not maxPayableAmount[address(msg.sender)].field_256:
                                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                        if totalParticipant > -2:
                                            revert with 'NH{q', 17
                                        totalParticipant++
                                if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                                if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length
                                if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^ext_call.return_data[31 len 1] / stor4.length
                                if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                    revert with 'NH{q', 17
                                sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                                emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
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
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) and t * s > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]):
                                    revert with 'NH{q', 17
                                if not stor4.length:
                                    revert with 'NH{q', 18
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length <= 0:
                                    revert with 0, 'Zero rewarded amount'
                                if not maxPayableAmount[address(msg.sender)].field_256:
                                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) > 0:
                                        if totalParticipant > -2:
                                            revert with 'NH{q', 17
                                        totalParticipant++
                                if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                                if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length
                                if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length
                                if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])) - 1:
                                    revert with 'NH{q', 17
                                sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0])
                                emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]), ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / 10^uint8(ext_call.return_data[0]) * t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                else:
                    u = 10
                    v = 1
                    idx = ext_call.return_data[31 len 1]
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
                    if totalRewardTokens - soldAmount and stor4.length > -1 / totalRewardTokens - soldAmount:
                        revert with 'NH{q', 17
                    if not v * u:
                        revert with 'NH{q', 18
                    if msg.value <= (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u:
                        if msg.value * t * s / stor4.length <= 0:
                            revert with 0, 'Zero rewarded amount'
                        if not maxPayableAmount[address(msg.sender)].field_256:
                            if msg.value > 0:
                                if totalParticipant > -2:
                                    revert with 'NH{q', 17
                                totalParticipant++
                        if maxPayableAmount[address(msg.sender)].field_256 > -msg.value - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_256 += msg.value
                        if maxPayableAmount[address(msg.sender)].field_768 > -(msg.value * t * s / stor4.length) - 1:
                            revert with 'NH{q', 17
                        maxPayableAmount[address(msg.sender)].field_768 += msg.value * t * s / stor4.length
                        if soldAmount > -(msg.value * t * s / stor4.length) - 1:
                            revert with 'NH{q', 17
                        soldAmount += msg.value * t * s / stor4.length
                        if sub_3996dc8f > -msg.value - 1:
                            revert with 'NH{q', 17
                        sub_3996dc8f += msg.value
                        emit EBuyTokens(msg.sender, msg.value, ext_call.return_data[0], msg.value * t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                    else:
                        if msg.value < (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u:
                            revert with 'NH{q', 17
                        if msg.value < msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u):
                            revert with 'NH{q', 17
                        call msg.sender with:
                           value msg.value - ((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        stor10 = 1
                        emit EFinishSale(bool(stor10));
                        require ext_code.size(address(stor2.length))
                        staticcall address(stor2.length).0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u and 1 > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u:
                                revert with 'NH{q', 17
                            if not stor4.length:
                                revert with 'NH{q', 18
                            if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u / stor4.length <= 0:
                                revert with 0, 'Zero rewarded amount'
                            if not maxPayableAmount[address(msg.sender)].field_256:
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u > 0:
                                    if totalParticipant > -2:
                                        revert with 'NH{q', 17
                                    totalParticipant++
                            if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u
                            if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u / stor4.length) - 1:
                                revert with 'NH{q', 17
                            maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u / stor4.length
                            if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u / stor4.length) - 1:
                                revert with 'NH{q', 17
                            soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u / stor4.length
                            if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u) - 1:
                                revert with 'NH{q', 17
                            sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u
                            emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 'NH{q', 17
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u and 10^ext_call.return_data[31 len 1] > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u:
                                    revert with 'NH{q', 17
                                if not stor4.length:
                                    revert with 'NH{q', 18
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * 10^ext_call.return_data[31 len 1] / stor4.length <= 0:
                                    revert with 0, 'Zero rewarded amount'
                                if not maxPayableAmount[address(msg.sender)].field_256:
                                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u > 0:
                                        if totalParticipant > -2:
                                            revert with 'NH{q', 17
                                        totalParticipant++
                                if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u
                                if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * 10^ext_call.return_data[31 len 1] / stor4.length
                                if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * 10^ext_call.return_data[31 len 1] / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * 10^ext_call.return_data[31 len 1] / stor4.length
                                if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u) - 1:
                                    revert with 'NH{q', 17
                                sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u
                                emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * 10^uint8(ext_call.return_data[0]) / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
                            else:
                                s = 10
                                t = 1
                                idx = ext_call.return_data[31 len 1]
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
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u and t * s > -1 / (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u:
                                    revert with 'NH{q', 17
                                if not stor4.length:
                                    revert with 'NH{q', 18
                                if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * t * s / stor4.length <= 0:
                                    revert with 0, 'Zero rewarded amount'
                                if not maxPayableAmount[address(msg.sender)].field_256:
                                    if (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u > 0:
                                        if totalParticipant > -2:
                                            revert with 'NH{q', 17
                                        totalParticipant++
                                if maxPayableAmount[address(msg.sender)].field_256 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_256 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u
                                if maxPayableAmount[address(msg.sender)].field_768 > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * t * s / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                maxPayableAmount[address(msg.sender)].field_768 += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * t * s / stor4.length
                                if soldAmount > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * t * s / stor4.length) - 1:
                                    revert with 'NH{q', 17
                                soldAmount += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * t * s / stor4.length
                                if sub_3996dc8f > -((totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u) - 1:
                                    revert with 'NH{q', 17
                                sub_3996dc8f += (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u
                                emit EBuyTokens(msg.sender, (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u, ext_call.return_data[0], (totalRewardTokens * stor4.length) - (soldAmount * stor4.length) / v * u * t * s / stor4.length, maxPayableAmount[address(msg.sender)].field_256, maxPayableAmount[address(msg.sender)].field_768, soldAmount, sub_3996dc8f, totalParticipant, totalRedeemed);
}



}
