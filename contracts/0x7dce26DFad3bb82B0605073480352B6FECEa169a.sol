contract main {




// =====================  Runtime code  =====================


const MAX_UINT = -1


uint8 paused; offset 160
address owner;
uint256 _totalSupply;
mapping of uint256 balances;
uint256 basisPointsRate;
uint256 maximumFee;
mapping of uint256 allowed;
mapping of uint8 stor6;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor10; offset 160
uint128 stor10; offset 160
address upgradedAddress;

function name() {
    return name[0 len name.length]
}

function deprecated() {
    return bool(uint8(stor10.field_160))
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

function _totalSupply() {
    return _totalSupply
}

function getBlackListStatus(address arg1) {
    return bool(stor6[address(arg1)])
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(paused)
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

function isBlackListed(address arg1) {
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require paused
    paused = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not paused
    paused = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function addBlackList(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
    emit RemovedBlackList(arg1);
}

function deprecate(address arg1) {
    require msg.sender == owner
    upgradedAddress = arg1
    Mask(96, 0, stor10.field_160) = 0
    uint8(stor10.field_160) = 1
    emit Deprecate(arg1);
}

function redeem(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= _totalSupply
    require arg1 <= balances[stor0]
    _totalSupply -= arg1
    balances[stor0] -= arg1
    emit Redeem(arg1);
}

function issue(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply + arg1 > _totalSupply
    require balances[stor0] + arg1 > balances[stor0]
    balances[stor0] += arg1
    _totalSupply += arg1
    emit Issue(arg1);
}

function totalSupply() {
    if not uint8(stor10.field_160):
        return _totalSupply
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setParams(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < 20
    require arg2 < 50
    basisPointsRate = arg1
    if not arg2:
        maximumFee = 0
        emit Params(basisPointsRate, 0);
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        maximumFee = 10^decimals * arg2
        emit Params(basisPointsRate, 10^decimals * arg2);
}

function balanceOf(address arg1) {
    if not uint8(stor10.field_160):
        return balances[address(arg1)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    if not uint8(stor10.field_160):
        return allowed[address(arg1)][address(arg2)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if uint8(stor10.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.approveByLegacy(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 68
        if arg2:
            require not allowed[msg.sender][address(arg1)]
        allowed[msg.sender][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
}

function destroyBlackFunds(address arg1) {
    require msg.sender == owner
    require stor6[address(arg1)]
    if not uint8(stor10.field_160):
        balances[address(arg1)] = 0
        _totalSupply -= balances[address(arg1)]
        emit DestroyedBlackFunds(address(arg1), balances[address(arg1)]);
    else:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        balances[address(arg1)] = 0
        _totalSupply -= ext_call.return_data[0]
        emit DestroyedBlackFunds(address(arg1), ext_call.return_data[0]);
}

function transfer(address arg1, uint256 arg2) {
    require not paused
    require not stor6[msg.sender]
    if uint8(stor10.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferByLegacy(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 68
        if not arg2:
            if 0 <= maximumFee:
                require 0 <= arg2
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 + balances[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require maximumFee <= arg2
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 - maximumFee + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 - maximumFee + balances[arg1]
                if maximumFee > 0:
                    require maximumFee + balances[stor0] >= balances[stor0]
                    balances[stor0] += maximumFee
                    emit Transfer(maximumFee, msg.sender, owner);
                emit Transfer((arg2 - maximumFee), msg.sender, arg1);
        else:
            require basisPointsRate * arg2 / arg2 == basisPointsRate
            if basisPointsRate * arg2 / 10000 <= maximumFee:
                require basisPointsRate * arg2 / 10000 <= arg2
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 - (basisPointsRate * arg2 / 10000) + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 - (basisPointsRate * arg2 / 10000) + balances[arg1]
                if basisPointsRate * arg2 / 10000 > 0:
                    require (basisPointsRate * arg2 / 10000) + balances[stor0] >= balances[stor0]
                    balances[stor0] += basisPointsRate * arg2 / 10000
                    emit Transfer((basisPointsRate * arg2 / 10000), msg.sender, owner);
                emit Transfer((arg2 - (basisPointsRate * arg2 / 10000)), msg.sender, arg1);
            else:
                require maximumFee <= arg2
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 - maximumFee + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 - maximumFee + balances[arg1]
                if maximumFee > 0:
                    require maximumFee + balances[stor0] >= balances[stor0]
                    balances[stor0] += maximumFee
                    emit Transfer(maximumFee, msg.sender, owner);
                emit Transfer((arg2 - maximumFee), msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not paused
    require not stor6[address(arg1)]
    if uint8(stor10.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferFromByLegacy(address rg1, address rg2, address rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 100
        if not arg3:
            if allowed[address(arg1)][msg.sender] < -1:
                require arg3 <= allowed[address(arg1)][msg.sender]
                allowed[address(arg1)][msg.sender] -= arg3
            if 0 <= maximumFee:
                require 0 <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require arg3 + balances[arg2] >= balances[arg2]
                balances[address(arg2)] = arg3 + balances[arg2]
                emit Transfer(arg3, arg1, arg2);
            else:
                require maximumFee <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require arg3 - maximumFee + balances[arg2] >= balances[arg2]
                balances[address(arg2)] = arg3 - maximumFee + balances[arg2]
                if maximumFee > 0:
                    require maximumFee + balances[stor0] >= balances[stor0]
                    balances[stor0] += maximumFee
                    emit Transfer(maximumFee, arg1, owner);
                emit Transfer((arg3 - maximumFee), arg1, arg2);
        else:
            require basisPointsRate * arg3 / arg3 == basisPointsRate
            if allowed[address(arg1)][msg.sender] < -1:
                require arg3 <= allowed[address(arg1)][msg.sender]
                allowed[address(arg1)][msg.sender] -= arg3
            if basisPointsRate * arg3 / 10000 <= maximumFee:
                require basisPointsRate * arg3 / 10000 <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require arg3 - (basisPointsRate * arg3 / 10000) + balances[arg2] >= balances[arg2]
                balances[address(arg2)] = arg3 - (basisPointsRate * arg3 / 10000) + balances[arg2]
                if basisPointsRate * arg3 / 10000 > 0:
                    require (basisPointsRate * arg3 / 10000) + balances[stor0] >= balances[stor0]
                    balances[stor0] += basisPointsRate * arg3 / 10000
                    emit Transfer((basisPointsRate * arg3 / 10000), arg1, owner);
                emit Transfer((arg3 - (basisPointsRate * arg3 / 10000)), arg1, arg2);
            else:
                require maximumFee <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require arg3 - maximumFee + balances[arg2] >= balances[arg2]
                balances[address(arg2)] = arg3 - maximumFee + balances[arg2]
                if maximumFee > 0:
                    require maximumFee + balances[stor0] >= balances[stor0]
                    balances[stor0] += maximumFee
                    emit Transfer(maximumFee, arg1, owner);
                emit Transfer((arg3 - maximumFee), arg1, arg2);
}



}
