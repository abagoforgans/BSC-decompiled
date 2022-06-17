contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f8824518Address;
address sub_84bcf81eAddress;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 sub_b4e26aa4;
uint256 _transferLimit;

function _transferLimit() payable {
    return _transferLimit
}

function sub_84bcf81e(?) payable {
    return sub_84bcf81eAddress
}

function owner() payable {
    return owner
}

function sub_b4e26aa4(?) payable {
    return sub_b4e26aa4
}

function sub_f8824518(?) payable {
    return sub_f8824518Address
}

function _fallback() payable {
    revert
}

function sub_b3f2c368(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function sub_dd2896e9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_25abd2a9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b4e26aa4 = arg1
}

function sub_30ade943(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = address(arg1)
}

function sub_84edbe63(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_84bcf81eAddress = address(arg1)
}

function changeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f8824518Address = arg1
    stor4 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_bac7bd4f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_f8824518Address)
    call sub_f8824518Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claimRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > _transferLimit:
        revert with 0, 'AMOUNT_CANNOT_EXCEED LIMIT'
    if arg2 <= 0:
        revert with 0, 'CANNOT_CLAIM_ZERO'
    if not sub_b4e26aa4:
        if not arg2:
            if not arg2:
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0:
                    revert with 0, 17
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0:
                    revert with 0, 17
                require ext_code.size(sub_f8824518Address)
                staticcall sub_f8824518Address.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_f8824518Address)
                if ext_call.return_data[0] < arg2:
                    staticcall sub_f8824518Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        revert with 0, 'NOT_ENOUGH_ADMC'
                call sub_f8824518Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit ClaimReward(address(arg1), arg2);
            else:
                if arg2 and stor6 > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor6 / arg2 != stor6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < 0:
                    revert with 0, 17
                if arg2 * stor6 / 100 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * stor6 / 100:
                    revert with 0, 17
                require ext_code.size(sub_f8824518Address)
                if arg2 * stor6 / 100:
                    call sub_f8824518Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor5, arg2 * stor6 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall sub_f8824518Address.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_f8824518Address)
                if ext_call.return_data[0] < arg2:
                    staticcall sub_f8824518Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        revert with 0, 'NOT_ENOUGH_ADMC'
                call sub_f8824518Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2 - (arg2 * stor6 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit ClaimReward(address(arg1), arg2 - (arg2 * stor6 / 100));
        else:
            if arg2 and stor7 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if arg2 * stor7 / arg2 != stor7:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not arg2:
                if arg2 * stor7 / 100 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * stor7 / 100:
                    revert with 0, 17
                if 0 > arg2 - (arg2 * stor7 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 - (arg2 * stor7 / 100) < 0:
                    revert with 0, 17
                require ext_code.size(sub_f8824518Address)
                if arg2 * stor7 / 100:
                    call sub_f8824518Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_84bcf81eAddress, arg2 * stor7 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall sub_f8824518Address.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_f8824518Address)
                if ext_call.return_data[0] < arg2:
                    staticcall sub_f8824518Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        revert with 0, 'NOT_ENOUGH_ADMC'
                call sub_f8824518Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2 - (arg2 * stor7 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit ClaimReward(address(arg1), arg2 - (arg2 * stor7 / 100));
            else:
                if arg2 and stor6 > -1 / arg2:
                    revert with 0, 17
                if not arg2:
                    revert with 0, 18
                if arg2 * stor6 / arg2 != stor6:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * stor7 / 100 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 < arg2 * stor7 / 100:
                    revert with 0, 17
                if arg2 * stor6 / 100 > arg2 - (arg2 * stor7 / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 - (arg2 * stor7 / 100) < arg2 * stor6 / 100:
                    revert with 0, 17
                require ext_code.size(sub_f8824518Address)
                if arg2 * stor6 / 100:
                    call sub_f8824518Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor5, arg2 * stor6 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg2 * stor7 / 100:
                    call sub_f8824518Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args sub_84bcf81eAddress, arg2 * stor7 / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall sub_f8824518Address.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_f8824518Address)
                if ext_call.return_data[0] < arg2:
                    staticcall sub_f8824518Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        revert with 0, 'NOT_ENOUGH_ADMC'
                call sub_f8824518Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2 - (arg2 * stor7 / 100) - (arg2 * stor6 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit ClaimReward(address(arg1), arg2 - (arg2 * stor7 / 100) - (arg2 * stor6 / 100));
    else:
        if not sub_b4e26aa4:
            require ext_code.size(sub_f8824518Address)
            staticcall sub_f8824518Address.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_f8824518Address)
            if ext_call.return_data[0] < 0:
                staticcall sub_f8824518Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'NOT_ENOUGH_ADMC'
            call sub_f8824518Address.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit ClaimReward(address(arg1), 0);
        else:
            if sub_b4e26aa4 and arg2 > -1 / sub_b4e26aa4:
                revert with 0, 17
            if not sub_b4e26aa4:
                revert with 0, 18
            if sub_b4e26aa4 * arg2 / sub_b4e26aa4 != arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not sub_b4e26aa4 * arg2:
                if not sub_b4e26aa4 * arg2:
                    if 0 > sub_b4e26aa4 * arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if sub_b4e26aa4 * arg2 < 0:
                        revert with 0, 17
                    if 0 > sub_b4e26aa4 * arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if sub_b4e26aa4 * arg2 < 0:
                        revert with 0, 17
                    require ext_code.size(sub_f8824518Address)
                    staticcall sub_f8824518Address.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_f8824518Address)
                    if ext_call.return_data[0] < sub_b4e26aa4 * arg2:
                        staticcall sub_f8824518Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_b4e26aa4 * arg2:
                            revert with 0, 'NOT_ENOUGH_ADMC'
                    call sub_f8824518Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), sub_b4e26aa4 * arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit ClaimReward(address(arg1), sub_b4e26aa4 * arg2);
                else:
                    if sub_b4e26aa4 * arg2 and stor6 > -1 / sub_b4e26aa4 * arg2:
                        revert with 0, 17
                    if not sub_b4e26aa4 * arg2:
                        revert with 0, 18
                    if sub_b4e26aa4 * arg2 * stor6 / sub_b4e26aa4 * arg2 != stor6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > sub_b4e26aa4 * arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if sub_b4e26aa4 * arg2 < 0:
                        revert with 0, 17
                    if sub_b4e26aa4 * arg2 * stor6 / 100 > sub_b4e26aa4 * arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if sub_b4e26aa4 * arg2 < sub_b4e26aa4 * arg2 * stor6 / 100:
                        revert with 0, 17
                    require ext_code.size(sub_f8824518Address)
                    if sub_b4e26aa4 * arg2 * stor6 / 100:
                        call sub_f8824518Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor5, sub_b4e26aa4 * arg2 * stor6 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall sub_f8824518Address.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_f8824518Address)
                    if ext_call.return_data[0] < sub_b4e26aa4 * arg2:
                        staticcall sub_f8824518Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_b4e26aa4 * arg2:
                            revert with 0, 'NOT_ENOUGH_ADMC'
                    call sub_f8824518Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor6 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit ClaimReward(address(arg1), (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor6 / 100));
            else:
                if sub_b4e26aa4 * arg2 and stor7 > -1 / sub_b4e26aa4 * arg2:
                    revert with 0, 17
                if not sub_b4e26aa4 * arg2:
                    revert with 0, 18
                if sub_b4e26aa4 * arg2 * stor7 / sub_b4e26aa4 * arg2 != stor7:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not sub_b4e26aa4 * arg2:
                    if sub_b4e26aa4 * arg2 * stor7 / 100 > sub_b4e26aa4 * arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if sub_b4e26aa4 * arg2 < sub_b4e26aa4 * arg2 * stor7 / 100:
                        revert with 0, 17
                    if 0 > (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor7 / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor7 / 100) < 0:
                        revert with 0, 17
                    require ext_code.size(sub_f8824518Address)
                    if sub_b4e26aa4 * arg2 * stor7 / 100:
                        call sub_f8824518Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_84bcf81eAddress, sub_b4e26aa4 * arg2 * stor7 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall sub_f8824518Address.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_f8824518Address)
                    if ext_call.return_data[0] < sub_b4e26aa4 * arg2:
                        staticcall sub_f8824518Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_b4e26aa4 * arg2:
                            revert with 0, 'NOT_ENOUGH_ADMC'
                    call sub_f8824518Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor7 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit ClaimReward(address(arg1), (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor7 / 100));
                else:
                    if sub_b4e26aa4 * arg2 and stor6 > -1 / sub_b4e26aa4 * arg2:
                        revert with 0, 17
                    if not sub_b4e26aa4 * arg2:
                        revert with 0, 18
                    if sub_b4e26aa4 * arg2 * stor6 / sub_b4e26aa4 * arg2 != stor6:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if sub_b4e26aa4 * arg2 * stor7 / 100 > sub_b4e26aa4 * arg2:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if sub_b4e26aa4 * arg2 < sub_b4e26aa4 * arg2 * stor7 / 100:
                        revert with 0, 17
                    if sub_b4e26aa4 * arg2 * stor6 / 100 > (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor7 / 100):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor7 / 100) < sub_b4e26aa4 * arg2 * stor6 / 100:
                        revert with 0, 17
                    require ext_code.size(sub_f8824518Address)
                    if sub_b4e26aa4 * arg2 * stor6 / 100:
                        call sub_f8824518Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor5, sub_b4e26aa4 * arg2 * stor6 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if sub_b4e26aa4 * arg2 * stor7 / 100:
                        call sub_f8824518Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args sub_84bcf81eAddress, sub_b4e26aa4 * arg2 * stor7 / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall sub_f8824518Address.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_f8824518Address)
                    if ext_call.return_data[0] < sub_b4e26aa4 * arg2:
                        staticcall sub_f8824518Address.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < sub_b4e26aa4 * arg2:
                            revert with 0, 'NOT_ENOUGH_ADMC'
                    call sub_f8824518Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor7 / 100) - (sub_b4e26aa4 * arg2 * stor6 / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    emit ClaimReward(address(arg1), (sub_b4e26aa4 * arg2) - (sub_b4e26aa4 * arg2 * stor7 / 100) - (sub_b4e26aa4 * arg2 * stor6 / 100));
}



}
