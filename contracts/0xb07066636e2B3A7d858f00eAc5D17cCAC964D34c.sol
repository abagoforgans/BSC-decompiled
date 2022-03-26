contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor2;
mapping of uint256 stor3;
uint256 stor4;
uint256 stor5;
array of uint256 stor10;
array of uint256 stor11;
uint256 stor12;
uint128 stor13; offset 160

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    stor4 = 0
    stor5 = 0
    require not msg.value
    mem[96 len -14145] = code.data[14790 len -14145]
    mem[64] = -14049
    stor0 = msg.sender
    address(stor1.field_0) = mem[108 len 20]
    stor2 = mem[128]
    stor10[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor11[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor12 = mem[224]
    stor3[stor0] = mem[128]
    stor13 = 0
    return code.data[645 len 14145]
}



// =====================  Runtime code  =====================


const MAX_UINT = -1


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address triggerAddress;
uint256 _totalSupply;
mapping of uint256 balances;
uint256 basisPointsRate;
uint256 maximumFee;
mapping of uint256 allowed;
mapping of uint8 stor7;
array of address sub_5aa28742;
uint256 sub_e6f12cc4;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 deprecated; offset 160
uint128 stor13; offset 160
address upgradedAddress;
uint256 airdrop;

function name() {
    return name[0 len name.length]
}

function deprecated() {
    return bool(deprecated)
}

function sub_1ce05c45(?) {
    require arg1 < sub_5aa28742.length
    return address(sub_5aa28742[arg1])
}

function upgradedAddress() {
    return upgradedAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function maximumFee() {
    return maximumFee
}

function airdrop() {
    return airdrop
}

function _totalSupply() {
    return _totalSupply
}

function sub_5aa28742(?) {
    require arg1 < sub_5aa28742.length
    return address(sub_5aa28742[arg1])
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function trigger() {
    return triggerAddress
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function basisPointsRate() {
    return basisPointsRate
}

function sub_e3077d5c(?) {
    return bool(stor7[address(arg1)])
}

function sub_e5d72869(?) {
    return bool(stor7[arg1])
}

function sub_e6f12cc4(?) {
    return sub_e6f12cc4
}

function sub_f917d224(?) {
    return sub_5aa28742.length
}

function _fallback() payable {
    revert
}

function sub_b20a2c6b(?) {
    require msg.sender == owner
    sub_e6f12cc4 = arg1
}

function setAirdrop(uint256 arg1) {
    require msg.sender == owner
    airdrop = arg1
}

function sub_33a2ed3b(?) {
    require msg.sender == owner
    require arg1
    triggerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_8343c7b3(?) {
    require msg.sender == triggerAddress
    stor7[address(arg1)] = 0
    emit 0xea6012bf: arg1
}

function deprecate(address arg1) {
    require msg.sender == owner
    stor13 = 1
    upgradedAddress = arg1
    emit Deprecate(arg1);
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function redeem(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply >= arg1
    require balances[stor0] >= arg1
    _totalSupply -= arg1
    balances[stor0] -= arg1
    emit Redeem(arg1);
}

function totalSupply() {
    if not deprecated:
        return _totalSupply
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if not deprecated:
        return balances[address(arg1)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    if not deprecated:
        return allowed[address(arg1)][address(arg2)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function setParams(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < 20
    require arg2 < 50
    basisPointsRate = arg1
    if not arg2:
        maximumFee = 0
    else:
        require arg2
        require arg2 * 10^decimals / arg2 == 10^decimals
        maximumFee = arg2 * 10^decimals
    emit Params(basisPointsRate, maximumFee);
}

function sub_7f1bcb52(?) {
    require msg.sender == triggerAddress
    stor7[address(arg1)] = 1
    sub_5aa28742.length++
    if not sub_5aa28742.length <= sub_5aa28742.length + 1:
        idx = sub_5aa28742.length + 1
        while sub_5aa28742.length > idx:
            uint256(sub_5aa28742[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_5aa28742[sub_5aa28742.length]) = arg1
    emit 0x244e1176: arg1
}

function sub_ff520325(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == triggerAddress
    require airdrop > 0
    require balances[stor0] > airdrop
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if deprecated:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.approveByLegacy(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
    else:
        require calldata.size >= 68
        if arg2:
            require not allowed[address(msg.sender)][address(arg1)]
        allowed[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
}

function destroyBlackFunds(address arg1) {
    require msg.sender == owner
    require stor7[address(arg1)]
    if not deprecated:
        balances[address(arg1)] = 0
        _totalSupply -= balances[address(arg1)]
        emit DestroyedBlackFunds(address(arg1), balances[address(arg1)]);
    else:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        balances[address(arg1)] = 0
        _totalSupply -= ext_call.return_data[0]
        emit DestroyedBlackFunds(address(arg1), ext_call.return_data[0]);
}

function claimAirdrop() {
    require not stor7[address(msg.sender)]
    require sub_e6f12cc4 >= airdrop
    require balances[stor0] > airdrop
    stor7[address(msg.sender)] = 1
    balances[stor0] -= airdrop
    balances[address(msg.sender)] += airdrop
    sub_e6f12cc4 -= airdrop
    sub_5aa28742.length++
    if not sub_5aa28742.length <= sub_5aa28742.length + 1:
        idx = sub_5aa28742.length + 1
        while sub_5aa28742.length > idx:
            uint256(sub_5aa28742[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_5aa28742[sub_5aa28742.length]) = msg.sender
    emit Transfer(airdrop, owner, msg.sender);
    return 0
}

function sendAirdrop(address arg1) {
    require msg.sender == triggerAddress
    require not stor7[address(arg1)]
    require sub_e6f12cc4 >= airdrop
    require balances[stor0] > airdrop
    stor7[address(arg1)] = 1
    balances[stor0] -= airdrop
    balances[address(arg1)] += airdrop
    sub_e6f12cc4 -= airdrop
    sub_5aa28742.length++
    if not sub_5aa28742.length <= sub_5aa28742.length + 1:
        idx = sub_5aa28742.length + 1
        while sub_5aa28742.length > idx:
            uint256(sub_5aa28742[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_5aa28742[sub_5aa28742.length]) = arg1
    emit Transfer(airdrop, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor1.field_160)
    require not stor7[address(msg.sender)]
    if deprecated:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferByLegacy(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg1), arg2
        require ext_call.success
    else:
        require calldata.size >= 68
        if not arg2:
            if 0 <= maximumFee:
                require 0 <= arg2
                require arg2 <= balances[address(msg.sender)]
                balances[address(msg.sender)] -= arg2
                require balances[address(arg1)] + arg2 >= balances[address(arg1)]
                balances[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require maximumFee <= arg2
                require arg2 <= balances[address(msg.sender)]
                balances[address(msg.sender)] -= arg2
                require balances[address(arg1)] + arg2 - maximumFee >= balances[address(arg1)]
                balances[address(arg1)] = balances[address(arg1)] + arg2 - maximumFee
                if maximumFee > 0:
                    require balances[stor0] + maximumFee >= balances[stor0]
                    balances[stor0] += maximumFee
                    emit Transfer(maximumFee, msg.sender, owner);
                emit Transfer((arg2 - maximumFee), msg.sender, arg1);
        else:
            require arg2
            require arg2 * basisPointsRate / arg2 == basisPointsRate
            if arg2 * basisPointsRate / 10000 <= maximumFee:
                require arg2 * basisPointsRate / 10000 <= arg2
                require arg2 <= balances[address(msg.sender)]
                balances[address(msg.sender)] -= arg2
                require balances[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) >= balances[address(arg1)]
                balances[address(arg1)] = balances[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
                if arg2 * basisPointsRate / 10000 > 0:
                    require balances[stor0] + (arg2 * basisPointsRate / 10000) >= balances[stor0]
                    balances[stor0] += arg2 * basisPointsRate / 10000
                    emit Transfer((arg2 * basisPointsRate / 10000), msg.sender, owner);
                emit Transfer((arg2 - (arg2 * basisPointsRate / 10000)), msg.sender, arg1);
            else:
                require maximumFee <= arg2
                require arg2 <= balances[address(msg.sender)]
                balances[address(msg.sender)] -= arg2
                require balances[address(arg1)] + arg2 - maximumFee >= balances[address(arg1)]
                balances[address(arg1)] = balances[address(arg1)] + arg2 - maximumFee
                if maximumFee > 0:
                    require balances[stor0] + maximumFee >= balances[stor0]
                    balances[stor0] += maximumFee
                    emit Transfer(maximumFee, msg.sender, owner);
                emit Transfer((arg2 - maximumFee), msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor1.field_160)
    require not stor7[address(arg1)]
    if deprecated:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferFromByLegacy(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        require ext_call.success
    else:
        require calldata.size >= 100
        if not arg3:
            if allowed[address(arg1)][address(msg.sender)] < -1:
                require arg3 <= allowed[address(arg1)][address(msg.sender)]
                allowed[address(arg1)][address(msg.sender)] -= arg3
            if 0 <= maximumFee:
                require 0 <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require balances[address(arg2)] + arg3 >= balances[address(arg2)]
                balances[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                require maximumFee <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require balances[address(arg2)] + arg3 - maximumFee >= balances[address(arg2)]
                balances[address(arg2)] = balances[address(arg2)] + arg3 - maximumFee
                if maximumFee > 0:
                    require balances[stor0] + maximumFee >= balances[stor0]
                    balances[stor0] += maximumFee
                    emit Transfer(maximumFee, arg1, owner);
                emit Transfer((arg3 - maximumFee), arg1, arg2);
        else:
            require arg3
            require arg3 * basisPointsRate / arg3 == basisPointsRate
            if allowed[address(arg1)][address(msg.sender)] < -1:
                require arg3 <= allowed[address(arg1)][address(msg.sender)]
                allowed[address(arg1)][address(msg.sender)] -= arg3
            if arg3 * basisPointsRate / 10000 <= maximumFee:
                require arg3 * basisPointsRate / 10000 <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require balances[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) >= balances[address(arg2)]
                balances[address(arg2)] = balances[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
                if arg3 * basisPointsRate / 10000 > 0:
                    require balances[stor0] + (arg3 * basisPointsRate / 10000) >= balances[stor0]
                    balances[stor0] += arg3 * basisPointsRate / 10000
                    emit Transfer((arg3 * basisPointsRate / 10000), arg1, owner);
                emit Transfer((arg3 - (arg3 * basisPointsRate / 10000)), arg1, arg2);
            else:
                require maximumFee <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require balances[address(arg2)] + arg3 - maximumFee >= balances[address(arg2)]
                balances[address(arg2)] = balances[address(arg2)] + arg3 - maximumFee
                if maximumFee > 0:
                    require balances[stor0] + maximumFee >= balances[stor0]
                    balances[stor0] += maximumFee
                    emit Transfer(maximumFee, arg1, owner);
                emit Transfer((arg3 - maximumFee), arg1, arg2);
}



}
