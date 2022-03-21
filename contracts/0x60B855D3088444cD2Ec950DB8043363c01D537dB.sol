contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferMulti(address[] arg1, uint256[] arg2)
#
mapping of uint8 stor0;
address stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_d5d9ba21Address; offset 8
uint256 sub_03b05282;
mapping of uint256 balanceOf;
mapping of uint256 position;
mapping of uint256 sub_6679e5de;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 sub_6f403a7f;
uint256 stor12;

function sub_03b05282(?) {
    return sub_03b05282
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_6679e5de(?) {
    return sub_6679e5de[address(arg1)]
}

function sub_6f403a7f(?) {
    return sub_6f403a7f
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) {
    require arg1
    return bool(stor0[address(arg1)])
}

function position(address arg1) {
    return position[address(arg1)]
}

function sub_d5d9ba21(?) {
    return sub_d5d9ba21Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (stor1 == arg1)
}

function sub_287c3d75(?) {
    require stor1 == msg.sender
    sub_d5d9ba21Address = arg1
    return 1
}

function sub_989af8ae(?) {
    require stor1 == msg.sender
    sub_6679e5de[address(arg1)] = arg2
    return 1
}

function renounceOwnership() {
    require stor1 == msg.sender
    emit OwnershipTransferred(0, stor1);
    stor1 = 0
}

function renounceMinter() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function updateFeeState(uint256 arg1) {
    if sub_d5d9ba21Address != msg.sender:
        revert with 0, 'updateFeetate : NOT_AUTHORIZED'
    if arg1 > 0:
        require sub_03b05282 + arg1 >= sub_03b05282
        sub_03b05282 += arg1
        return 0
    else:
        return 0
}

function transferOwnership(address arg1) {
    require stor1 == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(stor1, arg1);
    stor1 = arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg1
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferOtherTokens(address arg1, uint256 arg2) {
    require stor1 == msg.sender
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require ext_code.size(sub_d5d9ba21Address)
    call sub_d5d9ba21Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(arg1)] <= 0:
        position[address(arg1)] = sub_03b05282
    else:
        if ext_call.return_data[0] <= 0:
            position[address(arg1)] = sub_03b05282
        else:
            if not totalSupply:
                require sub_6f403a7f <= 0
                require position[address(arg1)] <= sub_03b05282
                if not balanceOf[address(arg1)]:
                    require -sub_6f403a7f > 0
                    require -sub_6f403a7f
                    if 0 / -sub_6f403a7f > 0:
                        if position[address(arg1)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / -sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(arg1)]
                    require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == sub_03b05282 - position[address(arg1)]
                    if not (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]):
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if 0 / -sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)])
                        require (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) == ext_call.return_data[0]
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            else:
                require totalSupply
                require totalSupply * sub_03b05282 / totalSupply == sub_03b05282
                require sub_6f403a7f <= totalSupply * sub_03b05282
                require position[address(arg1)] <= sub_03b05282
                if not balanceOf[address(arg1)]:
                    require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                    require (totalSupply * sub_03b05282) - sub_6f403a7f
                    if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                        if position[address(arg1)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(arg1)]
                    require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == sub_03b05282 - position[address(arg1)]
                    if not (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]):
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)])
                        require (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) == ext_call.return_data[0]
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            if not position[address(msg.sender)]:
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require 0 <= sub_6f403a7f
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
                    require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
                    sub_6f403a7f += sub_03b05282 * balanceOf[address(arg1)]
            else:
                require position[address(msg.sender)]
                require position[address(msg.sender)] * balanceOf[address(arg1)] / position[address(msg.sender)] == balanceOf[address(arg1)]
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(arg1)] <= sub_6f403a7f
                    sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(arg1)]
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(arg1)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
                    sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(msg.sender)] * balanceOf[address(arg1)])
            position[address(msg.sender)] = sub_03b05282
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if not position[address(arg1)]:
        if not sub_03b05282:
            require sub_6f403a7f >= sub_6f403a7f
            require 0 <= sub_6f403a7f
        else:
            require sub_03b05282
            require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
            require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
            require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
            sub_6f403a7f += sub_03b05282 * balanceOf[address(arg1)]
    else:
        require position[address(arg1)]
        require position[address(arg1)] * balanceOf[address(arg1)] / position[address(arg1)] == balanceOf[address(arg1)]
        if not sub_03b05282:
            require sub_6f403a7f >= sub_6f403a7f
            require position[address(arg1)] * balanceOf[address(arg1)] <= sub_6f403a7f
            sub_6f403a7f += -1 * position[address(arg1)] * balanceOf[address(arg1)]
        else:
            require sub_03b05282
            require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
            require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
            require position[address(arg1)] * balanceOf[address(arg1)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
            sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)])
    position[address(msg.sender)] = sub_03b05282
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg1
    require ext_code.size(sub_d5d9ba21Address)
    call sub_d5d9ba21Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(arg1)] <= 0:
        position[address(arg1)] = sub_03b05282
    else:
        if ext_call.return_data[0] <= 0:
            position[address(arg1)] = sub_03b05282
        else:
            if not totalSupply:
                require sub_6f403a7f <= 0
                require position[address(arg1)] <= sub_03b05282
                if not balanceOf[address(arg1)]:
                    require -sub_6f403a7f > 0
                    require -sub_6f403a7f
                    if 0 / -sub_6f403a7f > 0:
                        if position[address(arg1)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / -sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(arg1)]
                    require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == sub_03b05282 - position[address(arg1)]
                    if not (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]):
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if 0 / -sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)])
                        require (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) == ext_call.return_data[0]
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            else:
                require totalSupply
                require totalSupply * sub_03b05282 / totalSupply == sub_03b05282
                require sub_6f403a7f <= totalSupply * sub_03b05282
                require position[address(arg1)] <= sub_03b05282
                if not balanceOf[address(arg1)]:
                    require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                    require (totalSupply * sub_03b05282) - sub_6f403a7f
                    if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                        if position[address(arg1)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(arg1)]
                    require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == sub_03b05282 - position[address(arg1)]
                    if not (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]):
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)])
                        require (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) == ext_call.return_data[0]
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            if not position[address(msg.sender)]:
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require 0 <= sub_6f403a7f
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
                    require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
                    sub_6f403a7f += sub_03b05282 * balanceOf[address(arg1)]
            else:
                require position[address(msg.sender)]
                require position[address(msg.sender)] * balanceOf[address(arg1)] / position[address(msg.sender)] == balanceOf[address(arg1)]
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(arg1)] <= sub_6f403a7f
                    sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(arg1)]
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(arg1)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
                    sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(msg.sender)] * balanceOf[address(arg1)])
            position[address(msg.sender)] = sub_03b05282
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    if not position[address(arg1)]:
        if not sub_03b05282:
            require sub_6f403a7f >= sub_6f403a7f
            require 0 <= sub_6f403a7f
        else:
            require sub_03b05282
            require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
            require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
            require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
            sub_6f403a7f += sub_03b05282 * balanceOf[address(arg1)]
    else:
        require position[address(arg1)]
        require position[address(arg1)] * balanceOf[address(arg1)] / position[address(arg1)] == balanceOf[address(arg1)]
        if not sub_03b05282:
            require sub_6f403a7f >= sub_6f403a7f
            require position[address(arg1)] * balanceOf[address(arg1)] <= sub_6f403a7f
            sub_6f403a7f += -1 * position[address(arg1)] * balanceOf[address(arg1)]
        else:
            require sub_03b05282
            require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
            require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
            require position[address(arg1)] * balanceOf[address(arg1)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
            sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)])
    position[address(msg.sender)] = sub_03b05282
    emit Transfer(arg2, arg1, 0);
}

function burn(uint256 arg1) {
    require msg.sender
    require ext_code.size(sub_d5d9ba21Address)
    call sub_d5d9ba21Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(msg.sender)] > 0:
        if ext_call.return_data[0] > 0:
            if not totalSupply:
                require sub_6f403a7f <= 0
                require position[address(msg.sender)] <= sub_03b05282
                if not balanceOf[address(msg.sender)]:
                    require -sub_6f403a7f > 0
                    require -sub_6f403a7f
                    if 0 / -sub_6f403a7f > 0:
                        if position[address(msg.sender)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / -sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(msg.sender)]
                    require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == sub_03b05282 - position[address(msg.sender)]
                    if not (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]):
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if 0 / -sub_6f403a7f > 0:
                            if position[address(msg.sender)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
                        require (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) == ext_call.return_data[0]
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f > 0:
                            if position[address(msg.sender)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            else:
                require totalSupply
                require totalSupply * sub_03b05282 / totalSupply == sub_03b05282
                require sub_6f403a7f <= totalSupply * sub_03b05282
                require position[address(msg.sender)] <= sub_03b05282
                if not balanceOf[address(msg.sender)]:
                    require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                    require (totalSupply * sub_03b05282) - sub_6f403a7f
                    if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                        if position[address(msg.sender)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(msg.sender)]
                    require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == sub_03b05282 - position[address(msg.sender)]
                    if not (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]):
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(msg.sender)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
                        require (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) == ext_call.return_data[0]
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(msg.sender)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            if not position[address(msg.sender)]:
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require 0 <= sub_6f403a7f
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                    require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                    sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
            else:
                require position[address(msg.sender)]
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
                    sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                    sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
    position[address(msg.sender)] = sub_03b05282
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    if not position[address(msg.sender)]:
        if not sub_03b05282:
            require sub_6f403a7f >= sub_6f403a7f
            require 0 <= sub_6f403a7f
        else:
            require sub_03b05282
            require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
            require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
            require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
            sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
    else:
        require position[address(msg.sender)]
        require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
        if not sub_03b05282:
            require sub_6f403a7f >= sub_6f403a7f
            require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
            sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
        else:
            require sub_03b05282
            require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
            require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
            require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
            sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
    position[address(msg.sender)] = sub_03b05282
    emit Transfer(arg1, msg.sender, 0);
}

function sub_48ccbc2e(?) {
    if stor12 != 1:
        revert with 0, 'Unifi: LOCKED'
    stor12 = 0
    require ext_code.size(sub_d5d9ba21Address)
    call sub_d5d9ba21Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(msg.sender)] <= 0:
        position[address(msg.sender)] = sub_03b05282
        stor12 = 1
        return 0
    if ext_call.return_data[0] <= 0:
        position[address(msg.sender)] = sub_03b05282
        stor12 = 1
        return 0
    if not totalSupply:
        require sub_6f403a7f <= 0
        require position[address(msg.sender)] <= sub_03b05282
        if not balanceOf[address(msg.sender)]:
            require -sub_6f403a7f > 0
            require -sub_6f403a7f
            if 0 / -sub_6f403a7f > 0:
                if position[address(msg.sender)] > 0:
                    require ext_code.size(sub_d5d9ba21Address)
                    call sub_d5d9ba21Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / -sub_6f403a7f
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
            if not position[address(msg.sender)]:
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require 0 <= sub_6f403a7f
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                    require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                    sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
            else:
                require position[address(msg.sender)]
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
                    sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                    sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
            position[address(msg.sender)] = sub_03b05282
            stor12 = 1
            return (0 / -sub_6f403a7f)
        require balanceOf[address(msg.sender)]
        require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == sub_03b05282 - position[address(msg.sender)]
        if not (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]):
            require -sub_6f403a7f > 0
            require -sub_6f403a7f
            if 0 / -sub_6f403a7f > 0:
                if position[address(msg.sender)] > 0:
                    require ext_code.size(sub_d5d9ba21Address)
                    call sub_d5d9ba21Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / -sub_6f403a7f
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
            if not position[address(msg.sender)]:
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require 0 <= sub_6f403a7f
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                    require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                    sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
            else:
                require position[address(msg.sender)]
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
                    sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                    sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
            position[address(msg.sender)] = sub_03b05282
            stor12 = 1
            return (0 / -sub_6f403a7f)
        require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
        require (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) == ext_call.return_data[0]
        require -sub_6f403a7f > 0
        require -sub_6f403a7f
        if (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f > 0:
            if position[address(msg.sender)] > 0:
                require ext_code.size(sub_d5d9ba21Address)
                call sub_d5d9ba21Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f
        if not position[address(msg.sender)]:
            if not sub_03b05282:
                require sub_6f403a7f >= sub_6f403a7f
                require 0 <= sub_6f403a7f
            else:
                require sub_03b05282
                require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
        else:
            require position[address(msg.sender)]
            require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
            if not sub_03b05282:
                require sub_6f403a7f >= sub_6f403a7f
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
                sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
            else:
                require sub_03b05282
                require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
        position[address(msg.sender)] = sub_03b05282
        stor12 = 1
        return ((sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f)
    require totalSupply
    require totalSupply * sub_03b05282 / totalSupply == sub_03b05282
    require sub_6f403a7f <= totalSupply * sub_03b05282
    require position[address(msg.sender)] <= sub_03b05282
    if not balanceOf[address(msg.sender)]:
        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
        require (totalSupply * sub_03b05282) - sub_6f403a7f
        if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
            if position[address(msg.sender)] > 0:
                require ext_code.size(sub_d5d9ba21Address)
                call sub_d5d9ba21Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
        if not position[address(msg.sender)]:
            if not sub_03b05282:
                require sub_6f403a7f >= sub_6f403a7f
                require 0 <= sub_6f403a7f
            else:
                require sub_03b05282
                require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
        else:
            require position[address(msg.sender)]
            require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
            if not sub_03b05282:
                require sub_6f403a7f >= sub_6f403a7f
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
                sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
            else:
                require sub_03b05282
                require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
        position[address(msg.sender)] = sub_03b05282
        stor12 = 1
        return (0 / (totalSupply * sub_03b05282) - sub_6f403a7f)
    require balanceOf[address(msg.sender)]
    require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == sub_03b05282 - position[address(msg.sender)]
    if not (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]):
        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
        require (totalSupply * sub_03b05282) - sub_6f403a7f
        if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
            if position[address(msg.sender)] > 0:
                require ext_code.size(sub_d5d9ba21Address)
                call sub_d5d9ba21Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
        if not position[address(msg.sender)]:
            if not sub_03b05282:
                require sub_6f403a7f >= sub_6f403a7f
                require 0 <= sub_6f403a7f
            else:
                require sub_03b05282
                require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
        else:
            require position[address(msg.sender)]
            require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
            if not sub_03b05282:
                require sub_6f403a7f >= sub_6f403a7f
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
                sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
            else:
                require sub_03b05282
                require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
        position[address(msg.sender)] = sub_03b05282
        stor12 = 1
        return (0 / (totalSupply * sub_03b05282) - sub_6f403a7f)
    require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
    require (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) == ext_call.return_data[0]
    require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
    require (totalSupply * sub_03b05282) - sub_6f403a7f
    if (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
        if position[address(msg.sender)] > 0:
            require ext_code.size(sub_d5d9ba21Address)
            call sub_d5d9ba21Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
    if not position[address(msg.sender)]:
        if not sub_03b05282:
            require sub_6f403a7f >= sub_6f403a7f
            require 0 <= sub_6f403a7f
        else:
            require sub_03b05282
            require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
            require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
            require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
            sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
    else:
        require position[address(msg.sender)]
        require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
        if not sub_03b05282:
            require sub_6f403a7f >= sub_6f403a7f
            require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
            sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
        else:
            require sub_03b05282
            require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
            require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
            require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
            sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
    position[address(msg.sender)] = sub_03b05282
    stor12 = 1
    return ((sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f)
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= sub_6679e5de[address(msg.sender)]
    sub_6679e5de[address(msg.sender)] -= arg2
    require arg1
    require ext_code.size(sub_d5d9ba21Address)
    call sub_d5d9ba21Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(msg.sender)] > 0:
        if ext_call.return_data[0] > 0:
            if not totalSupply:
                require sub_6f403a7f <= 0
                require position[address(msg.sender)] <= sub_03b05282
                if not balanceOf[address(msg.sender)]:
                    require -sub_6f403a7f > 0
                    require -sub_6f403a7f
                    if 0 / -sub_6f403a7f > 0:
                        if position[address(msg.sender)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / -sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(msg.sender)]
                    require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == sub_03b05282 - position[address(msg.sender)]
                    if not (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]):
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if 0 / -sub_6f403a7f > 0:
                            if position[address(msg.sender)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
                        require (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) == ext_call.return_data[0]
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f > 0:
                            if position[address(msg.sender)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            else:
                require totalSupply
                require totalSupply * sub_03b05282 / totalSupply == sub_03b05282
                require sub_6f403a7f <= totalSupply * sub_03b05282
                require position[address(msg.sender)] <= sub_03b05282
                if not balanceOf[address(msg.sender)]:
                    require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                    require (totalSupply * sub_03b05282) - sub_6f403a7f
                    if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                        if position[address(msg.sender)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(msg.sender)]
                    require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == sub_03b05282 - position[address(msg.sender)]
                    if not (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]):
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(msg.sender)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
                        require (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)]) == ext_call.return_data[0]
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(msg.sender)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (sub_03b05282 * balanceOf[address(msg.sender)] * ext_call.return_data[0]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            if not position[address(msg.sender)]:
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require 0 <= sub_6f403a7f
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                    require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                    sub_6f403a7f += sub_03b05282 * balanceOf[address(msg.sender)]
            else:
                require position[address(msg.sender)]
                require position[address(msg.sender)] * balanceOf[address(msg.sender)] / position[address(msg.sender)] == balanceOf[address(msg.sender)]
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f
                    sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(msg.sender)]
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(msg.sender)] / sub_03b05282 == balanceOf[address(msg.sender)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(msg.sender)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)])
                    sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(msg.sender)]) - (position[address(msg.sender)] * balanceOf[address(msg.sender)])
    position[address(msg.sender)] = sub_03b05282
    require ext_code.size(sub_d5d9ba21Address)
    call sub_d5d9ba21Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(arg1)] <= 0:
        position[address(arg1)] = sub_03b05282
    else:
        if ext_call.return_data[0] <= 0:
            position[address(arg1)] = sub_03b05282
        else:
            if not totalSupply:
                require sub_6f403a7f <= 0
                require position[address(arg1)] <= sub_03b05282
                if not balanceOf[address(arg1)]:
                    require -sub_6f403a7f > 0
                    require -sub_6f403a7f
                    if 0 / -sub_6f403a7f > 0:
                        if position[address(arg1)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / -sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(arg1)]
                    require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == sub_03b05282 - position[address(arg1)]
                    if not (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]):
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if 0 / -sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)])
                        require (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) == ext_call.return_data[0]
                        require -sub_6f403a7f > 0
                        require -sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / -sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            else:
                require totalSupply
                require totalSupply * sub_03b05282 / totalSupply == sub_03b05282
                require sub_6f403a7f <= totalSupply * sub_03b05282
                require position[address(arg1)] <= sub_03b05282
                if not balanceOf[address(arg1)]:
                    require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                    require (totalSupply * sub_03b05282) - sub_6f403a7f
                    if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                        if position[address(arg1)] > 0:
                            emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            require ext_code.size(sub_d5d9ba21Address)
                            call sub_d5d9ba21Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                else:
                    require balanceOf[address(arg1)]
                    require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == sub_03b05282 - position[address(arg1)]
                    if not (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]):
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if 0 / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), 0 / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                    else:
                        require (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)])
                        require (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(arg1)] * balanceOf[address(arg1)]) == ext_call.return_data[0]
                        require (totalSupply * sub_03b05282) - sub_6f403a7f > 0
                        require (totalSupply * sub_03b05282) - sub_6f403a7f
                        if (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f > 0:
                            if position[address(arg1)] > 0:
                                emit 0x3aef95db: msg.sender, (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                require ext_code.size(sub_d5d9ba21Address)
                                call sub_d5d9ba21Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), (sub_03b05282 * balanceOf[address(arg1)] * ext_call.return_data[0]) - (position[address(arg1)] * balanceOf[address(arg1)] * ext_call.return_data[0]) / (totalSupply * sub_03b05282) - sub_6f403a7f
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
            if not position[address(msg.sender)]:
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require 0 <= sub_6f403a7f
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
                    require 0 <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
                    sub_6f403a7f += sub_03b05282 * balanceOf[address(arg1)]
            else:
                require position[address(msg.sender)]
                require position[address(msg.sender)] * balanceOf[address(arg1)] / position[address(msg.sender)] == balanceOf[address(arg1)]
                if not sub_03b05282:
                    require sub_6f403a7f >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(arg1)] <= sub_6f403a7f
                    sub_6f403a7f += -1 * position[address(msg.sender)] * balanceOf[address(arg1)]
                else:
                    require sub_03b05282
                    require sub_03b05282 * balanceOf[address(arg1)] / sub_03b05282 == balanceOf[address(arg1)]
                    require sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) >= sub_6f403a7f
                    require position[address(msg.sender)] * balanceOf[address(arg1)] <= sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)])
                    sub_6f403a7f = sub_6f403a7f + (sub_03b05282 * balanceOf[address(arg1)]) - (position[address(msg.sender)] * balanceOf[address(arg1)])
            position[address(msg.sender)] = sub_03b05282
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
