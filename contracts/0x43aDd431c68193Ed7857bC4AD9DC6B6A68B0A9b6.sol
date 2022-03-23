contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of struct stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function canJoin() {
    return bool(stor2)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == stor0)
}

function openJoin() {
    if stor0 != msg.sender:
        revert with 0, '401'
    stor2 = 1
}

function closeJoin() {
    if stor0 != msg.sender:
        revert with 0, '401'
    stor2 = 0
}

function myStats() {
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor1[address(msg.sender)].field_0, ext_call.return_data[0]
}

function join(uint256 arg1) {
    if not stor2:
        revert with 0, 'Farm closed'
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer bsc error'
    if stor1[address(msg.sender)].field_256:
        revert with 0, 'Please leave the farm first'
    stor1[address(msg.sender)].field_0 = arg1
    stor1[address(msg.sender)].field_256 = block.timestamp
    stor1[address(msg.sender)].field_512 = block.number
    emit Joined(arg1, msg.sender);
}

function leave() {
    if stor1[address(msg.sender)].field_0 <= 0:
        revert with 0, 'Please join the farm fist'
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor1[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= stor1[address(msg.sender)].field_512:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if not stor1[address(msg.sender)].field_0:
            if stor3 <= 0:
                revert with 0, 'SafeMath div error'
            require stor3
            if stor4 <= 0:
                revert with 0, 'SafeMath div error'
            require stor4
            if not 0 / stor3 / stor4:
                require ext_code.size(stor5)
                call stor5.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                if 0 < ext_call.return_data[0]:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                require 0 / stor3 / stor4
                if 3 * 0 / stor3 / stor4 / 0 / stor3 / stor4 != 3:
                    revert with 0, 'SafeMath mul error'
                require ext_code.size(stor5)
                call stor5.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                if 3 * 0 / stor3 / stor4 < ext_call.return_data[0]:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 3 * 0 / stor3 / stor4
                else:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
        else:
            require stor1[address(msg.sender)].field_0
            if (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor1[address(msg.sender)].field_0 != block.number - stor1[address(msg.sender)].field_512:
                revert with 0, 'SafeMath mul error'
            if stor3 <= 0:
                revert with 0, 'SafeMath div error'
            require stor3
            if stor4 <= 0:
                revert with 0, 'SafeMath div error'
            require stor4
            if not (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4:
                require ext_code.size(stor5)
                call stor5.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                if 0 < ext_call.return_data[0]:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                else:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                require (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4
                if 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 / (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 != 3:
                    revert with 0, 'SafeMath mul error'
                require ext_code.size(stor5)
                call stor5.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor5)
                if 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 < ext_call.return_data[0]:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4
                else:
                    call stor5.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[address(msg.sender)].field_0 = 0
    stor1[address(msg.sender)].field_256 = 0
    stor1[address(msg.sender)].field_512 = 0
    emit Leave(stor1[address(msg.sender)].field_0, msg.sender);
}

function claim() {
    if stor1[address(msg.sender)].field_512 <= 0:
        revert with 0, 'Please join the farm fist'
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if block.number <= stor1[address(msg.sender)].field_512:
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor1[address(msg.sender)].field_512 = block.number
            emit Claimed(0, msg.sender);
        else:
            if not stor1[address(msg.sender)].field_0:
                if stor3 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor3
                if stor4 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor4
                if not 0 / stor3 / stor4:
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    if 0 < ext_call.return_data[0]:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1[address(msg.sender)].field_512 = block.number
                        emit Claimed(0, msg.sender);
                    else:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1[address(msg.sender)].field_512 = block.number
                        emit Claimed(ext_call.return_data[0], msg.sender);
                else:
                    require 0 / stor3 / stor4
                    if 3 * 0 / stor3 / stor4 / 0 / stor3 / stor4 != 3:
                        revert with 0, 'SafeMath mul error'
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    if 3 * 0 / stor3 / stor4 < ext_call.return_data[0]:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 3 * 0 / stor3 / stor4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1[address(msg.sender)].field_512 = block.number
                        emit Claimed((3 * 0 / stor3 / stor4), msg.sender);
                    else:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1[address(msg.sender)].field_512 = block.number
                        emit Claimed(ext_call.return_data[0], msg.sender);
            else:
                require stor1[address(msg.sender)].field_0
                if (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor1[address(msg.sender)].field_0 != block.number - stor1[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath mul error'
                if stor3 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor3
                if stor4 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor4
                if not (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4:
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    if 0 < ext_call.return_data[0]:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1[address(msg.sender)].field_512 = block.number
                        emit Claimed(0, msg.sender);
                    else:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1[address(msg.sender)].field_512 = block.number
                        emit Claimed(ext_call.return_data[0], msg.sender);
                else:
                    require (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4
                    if 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 / (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 != 3:
                        revert with 0, 'SafeMath mul error'
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    if 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 < ext_call.return_data[0]:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1[address(msg.sender)].field_512 = block.number
                        emit Claimed((3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4), msg.sender);
                    else:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor1[address(msg.sender)].field_512 = block.number
                        emit Claimed(ext_call.return_data[0], msg.sender);
    else:
        if stor1[address(msg.sender)].field_0 <= 0:
            revert with 0, 'Please join the farm fist'
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor1[address(msg.sender)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.number <= stor1[address(msg.sender)].field_512:
            require ext_code.size(stor5)
            call stor5.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            if not stor1[address(msg.sender)].field_0:
                if stor3 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor3
                if stor4 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor4
                if not 0 / stor3 / stor4:
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    if 0 < ext_call.return_data[0]:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    require 0 / stor3 / stor4
                    if 3 * 0 / stor3 / stor4 / 0 / stor3 / stor4 != 3:
                        revert with 0, 'SafeMath mul error'
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    if 3 * 0 / stor3 / stor4 < ext_call.return_data[0]:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 3 * 0 / stor3 / stor4
                    else:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
            else:
                require stor1[address(msg.sender)].field_0
                if (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor1[address(msg.sender)].field_0 != block.number - stor1[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath mul error'
                if stor3 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor3
                if stor4 <= 0:
                    revert with 0, 'SafeMath div error'
                require stor4
                if not (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4:
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    if 0 < ext_call.return_data[0]:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                    else:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                else:
                    require (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4
                    if 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 / (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 != 3:
                        revert with 0, 'SafeMath mul error'
                    require ext_code.size(stor5)
                    call stor5.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor5)
                    if 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4 < ext_call.return_data[0]:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 3 * (block.number * stor1[address(msg.sender)].field_0) - (stor1[address(msg.sender)].field_512 * stor1[address(msg.sender)].field_0) / stor3 / stor4
                    else:
                        call stor5.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor1[address(msg.sender)].field_0 = 0
        stor1[address(msg.sender)].field_256 = 0
        stor1[address(msg.sender)].field_512 = 0
        emit Leave(stor1[address(msg.sender)].field_0, msg.sender);
}



}
