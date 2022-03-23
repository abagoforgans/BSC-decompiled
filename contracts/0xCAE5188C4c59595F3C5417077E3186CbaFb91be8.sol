contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of struct stor2;
uint8 stor3;
uint256 stor4;
uint256 sub_90e63c81;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;

function sub_90e63c81(?) {
    return sub_90e63c81
}

function canJoin() {
    return bool(stor3)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor0)
}

function isTrigger() {
    return (msg.sender == stor1)
}

function openJoin() {
    if stor0 != msg.sender:
        revert with 0, '401'
    stor3 = 1
}

function closeJoin() {
    if stor0 != msg.sender:
        revert with 0, '401'
    stor3 = 0
}

function ntrigger(address arg1) {
    if stor0 != msg.sender:
        revert with 0, '401'
    require arg1
    stor1 = arg1
}

function sub_192956f5(?) {
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            revert with 0, '401'
    sub_90e63c81 = arg1
}

function myStats() {
    require ext_code.size(stor9)
    call stor9.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor2[msg.sender].field_0, ext_call.return_data[0], ext_call.return_data[0]
}

function stats(address arg1) {
    require ext_code.size(stor9)
    call stor9.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor8)
    call stor8.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor2[address(arg1)].field_0, ext_call.return_data[0], ext_call.return_data[0]
}

function join(uint256 arg1) {
    if not stor3:
        revert with 0, 'Farm closed'
    require ext_code.size(stor9)
    call stor9.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer usdt error'
    if stor2[msg.sender].field_256:
        revert with 0, 'Please leave the farm first'
    stor2[msg.sender].field_0 = arg1
    stor2[msg.sender].field_256 = block.timestamp
    stor2[msg.sender].field_512 = block.number
    emit Joined(arg1, msg.sender);
}

function leave() {
    if 0 >= stor2[msg.sender].field_0:
        revert with 0, 'Please join the farm fist'
    require ext_code.size(stor9)
    call stor9.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor2[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= stor2[msg.sender].field_512:
        require ext_code.size(stor8)
        call stor8.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if not stor2[msg.sender].field_0:
            if stor6 <= 0:
                revert with 0, 'SafeMath div error'
            require stor6
            if stor7 <= 0:
                revert with 0, 'SafeMath div error'
            require stor7
            if not 0 / stor6 / stor7:
                if sub_90e63c81 <= 0:
                    revert with 0, 'SafeMath div error'
                require sub_90e63c81
                require ext_code.size(stor8)
                call stor8.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor8)
                if 0 / sub_90e63c81 < ext_call.return_data[0]:
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_90e63c81
                else:
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if stor4 * 0 / stor6 / stor7 / 0 / stor6 / stor7 != stor4:
                    revert with 0, 'SafeMath mul error'
                if sub_90e63c81 <= 0:
                    revert with 0, 'SafeMath div error'
                require sub_90e63c81
                require ext_code.size(stor8)
                call stor8.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor8)
                if stor4 * 0 / stor6 / stor7 / sub_90e63c81 < ext_call.return_data[0]:
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor4 * 0 / stor6 / stor7 / sub_90e63c81
                else:
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
        else:
            if (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor2[msg.sender].field_0 != block.number - stor2[msg.sender].field_512:
                revert with 0, 'SafeMath mul error'
            if stor6 <= 0:
                revert with 0, 'SafeMath div error'
            require stor6
            if stor7 <= 0:
                revert with 0, 'SafeMath div error'
            require stor7
            if not (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7:
                if sub_90e63c81 <= 0:
                    revert with 0, 'SafeMath div error'
                require sub_90e63c81
                require ext_code.size(stor8)
                call stor8.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor8)
                if 0 / sub_90e63c81 < ext_call.return_data[0]:
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0 / sub_90e63c81
                else:
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 != stor4:
                    revert with 0, 'SafeMath mul error'
                if sub_90e63c81 <= 0:
                    revert with 0, 'SafeMath div error'
                require sub_90e63c81
                require ext_code.size(stor8)
                call stor8.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor8)
                if stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / sub_90e63c81 < ext_call.return_data[0]:
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / sub_90e63c81
                else:
                    call stor8.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2[msg.sender].field_0 = 0
    stor2[msg.sender].field_256 = 0
    stor2[msg.sender].field_512 = 0
    emit Leave(0, msg.sender);
}

function claim() {
    if 0 >= stor2[msg.sender].field_512:
        revert with 0, 'Please join the farm fist'
    require ext_code.size(stor8)
    call stor8.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if block.number <= stor2[msg.sender].field_512:
            require ext_code.size(stor8)
            call stor8.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor2[msg.sender].field_512 = block.number
            emit Claimed(0, msg.sender);
        else:
            if not stor2[msg.sender].field_0:
                if stor6 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor6
                if stor7 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor7
                if not 0 / stor6 / stor7:
                    if sub_90e63c81 <= 0:
                        revert with 0, 'SafeMath div error'
                    require sub_90e63c81
                    require ext_code.size(stor8)
                    call stor8.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor8)
                    if 0 / sub_90e63c81 < ext_call.return_data[0]:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / sub_90e63c81
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor2[msg.sender].field_512 = block.number
                        emit Claimed((0 / sub_90e63c81), msg.sender);
                    else:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor2[msg.sender].field_512 = block.number
                        emit Claimed(ext_call.return_data[0], msg.sender);
                else:
                    if stor4 * 0 / stor6 / stor7 / 0 / stor6 / stor7 != stor4:
                        revert with 0, 'SafeMath mul error'
                    if sub_90e63c81 <= 0:
                        revert with 0, 'SafeMath div error'
                    require sub_90e63c81
                    require ext_code.size(stor8)
                    call stor8.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor8)
                    if stor4 * 0 / stor6 / stor7 / sub_90e63c81 < ext_call.return_data[0]:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor4 * 0 / stor6 / stor7 / sub_90e63c81
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor2[msg.sender].field_512 = block.number
                        emit Claimed((stor4 * 0 / stor6 / stor7 / sub_90e63c81), msg.sender);
                    else:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor2[msg.sender].field_512 = block.number
                        emit Claimed(ext_call.return_data[0], msg.sender);
            else:
                if (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor2[msg.sender].field_0 != block.number - stor2[msg.sender].field_512:
                    revert with 0, 'SafeMath mul error'
                if stor6 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor6
                if stor7 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor7
                if not (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7:
                    if sub_90e63c81 <= 0:
                        revert with 0, 'SafeMath div error'
                    require sub_90e63c81
                    require ext_code.size(stor8)
                    call stor8.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor8)
                    if 0 / sub_90e63c81 < ext_call.return_data[0]:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / sub_90e63c81
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor2[msg.sender].field_512 = block.number
                        emit Claimed((0 / sub_90e63c81), msg.sender);
                    else:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor2[msg.sender].field_512 = block.number
                        emit Claimed(ext_call.return_data[0], msg.sender);
                else:
                    if stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 != stor4:
                        revert with 0, 'SafeMath mul error'
                    if sub_90e63c81 <= 0:
                        revert with 0, 'SafeMath div error'
                    require sub_90e63c81
                    require ext_code.size(stor8)
                    call stor8.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor8)
                    if stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / sub_90e63c81 < ext_call.return_data[0]:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / sub_90e63c81
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor2[msg.sender].field_512 = block.number
                        emit Claimed((stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / sub_90e63c81), msg.sender);
                    else:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor2[msg.sender].field_512 = block.number
                        emit Claimed(ext_call.return_data[0], msg.sender);
    else:
        if 0 >= stor2[msg.sender].field_0:
            revert with 0, 'Please join the farm fist'
        require ext_code.size(stor9)
        call stor9.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor2[msg.sender].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.number <= stor2[msg.sender].field_512:
            require ext_code.size(stor8)
            call stor8.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if not stor2[msg.sender].field_0:
                if stor6 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor6
                if stor7 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor7
                if not 0 / stor6 / stor7:
                    if sub_90e63c81 <= 0:
                        revert with 0, 'SafeMath div error'
                    require sub_90e63c81
                    require ext_code.size(stor8)
                    call stor8.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor8)
                    if 0 / sub_90e63c81 < ext_call.return_data[0]:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / sub_90e63c81
                    else:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    if stor4 * 0 / stor6 / stor7 / 0 / stor6 / stor7 != stor4:
                        revert with 0, 'SafeMath mul error'
                    if sub_90e63c81 <= 0:
                        revert with 0, 'SafeMath div error'
                    require sub_90e63c81
                    require ext_code.size(stor8)
                    call stor8.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor8)
                    if stor4 * 0 / stor6 / stor7 / sub_90e63c81 < ext_call.return_data[0]:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor4 * 0 / stor6 / stor7 / sub_90e63c81
                    else:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
            else:
                if (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor2[msg.sender].field_0 != block.number - stor2[msg.sender].field_512:
                    revert with 0, 'SafeMath mul error'
                if stor6 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor6
                if stor7 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor7
                if not (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7:
                    if sub_90e63c81 <= 0:
                        revert with 0, 'SafeMath div error'
                    require sub_90e63c81
                    require ext_code.size(stor8)
                    call stor8.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor8)
                    if 0 / sub_90e63c81 < ext_call.return_data[0]:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0 / sub_90e63c81
                    else:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    if stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 != stor4:
                        revert with 0, 'SafeMath mul error'
                    if sub_90e63c81 <= 0:
                        revert with 0, 'SafeMath div error'
                    require sub_90e63c81
                    require ext_code.size(stor8)
                    call stor8.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor8)
                    if stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / sub_90e63c81 < ext_call.return_data[0]:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, stor4 * (block.number * stor2[msg.sender].field_0) - (stor2[msg.sender].field_512 * stor2[msg.sender].field_0) / stor6 / stor7 / sub_90e63c81
                    else:
                        call stor8.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor2[msg.sender].field_0 = 0
        stor2[msg.sender].field_256 = 0
        stor2[msg.sender].field_512 = 0
        emit Leave(0, msg.sender);
}



}
