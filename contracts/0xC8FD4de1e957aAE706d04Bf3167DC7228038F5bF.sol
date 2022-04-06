contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 stor1;
uint256 stor2;

function admin() {
    return adminAddress
}

function _fallback() payable {
    require msg.value > 0
}

function shake(uint256 arg1) {
    stor2 = sha3(arg1)
    emit Shake(msg.sender, 'You changed the algo');
}

function withdrawEth(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    if arg2:
        call arg1 with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    if arg3:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function PlayX100() payable {
    require msg.value >= 1
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 5 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 1) < 100:
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 4, 'x100'
    else:
        if 97 * msg.value >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=4, data='x100'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value 97 * msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=4, data='x100'), msg.value, 1, 95 * msg.value
}

function PlayX5() payable {
    require msg.value >= 1
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 5 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 20) < 100:
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 2, 'x5'
    else:
        if 97 * msg.value / 20 >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=2, data='x5'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value 97 * msg.value / 20 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=2, data='x5'), msg.value, 1, 97 * msg.value / 20
}

function PlayX2() payable {
    require msg.value >= 1
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 5 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 50) < 100:
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 2, 'x2'
    else:
        if 97 * msg.value / 50 >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=2, data='x2'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value 97 * msg.value / 50 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=2, data='x2'), msg.value, 1, 97 * msg.value / 50
}

function PlayX30() payable {
    require msg.value >= 1
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 5 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 3) < 100:
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 3, 'x30'
    else:
        if 97 * msg.value / 3 >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=3, data='x30'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value 97 * msg.value / 3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=3, data='x30'), msg.value, 1, 97 * msg.value / 3
}

function PlayX50() payable {
    require msg.value >= 1
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 5 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 2) < 100:
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 3, 'x50'
    else:
        if 97 * msg.value / 2 >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=3, data='x50'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value 97 * msg.value / 2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=3, data='x50'), msg.value, 1, 97 * msg.value / 2
}

function PlayX3() payable {
    require msg.value >= 1
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 5 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 33) < 100:
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 2, 'x3'
    else:
        if 97 * msg.value / 33 >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=2, data='x3'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value 95 * msg.value / 33 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=2, data='x3'), msg.value, 1, 97 * msg.value / 33
}

function PlayX20() payable {
    require msg.value >= 1
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 5 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 5) < 100:
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 3, 'x20'
    else:
        if 97 * msg.value / 5 >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=3, data='x20'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value 97 * msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=3, data='x20'), msg.value, 1, 97 * msg.value / 5
}

function PlayX10() payable {
    require msg.value >= 1
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 5 * 10^17
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, 5 * 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 10) < 100:
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 3, 'x10'
    else:
        if 97 * msg.value / 10 >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=3, data='x10'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value 97 * msg.value / 10 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=3, data='x10'), msg.value, 1, 97 * msg.value / 10
}

function Playforfreetoken() payable {
    require msg.value >= 10^16
    stor1 = msg.value - 10^16
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 2 * 10^18
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 2 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 50) < 100:
        call msg.sender with:
           value stor1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 9, 'freetoken'
    else:
        if msg.value >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=9, data='freetoken'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=9, data='freetoken'), msg.value, 1, msg.value
}

function Playforbulktoken() payable {
    require msg.value >= 10^18
    stor1 = msg.value - 10^18
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 200 * 10^18
    require ext_code.size(0xabf6fa5823928529ea5440168d13a0e75e1002)
    call 0x00abf6fa5823928529ea5440168d13a0e75e1002.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 200 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8((sha3(block.timestamp, block.difficulty, stor2) % 100) + 50) < 100:
        call msg.sender with:
           value stor1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7fd2d528: msg.sender, 160, msg.value, 0, 0, 9, 'bulktoken'
    else:
        if msg.value >= eth.balance(this.address):
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=9, data='bulktoken'), msg.value, 1, eth.balance(this.address)
        else:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x7fd2d528: msg.sender, Array(len=9, data='bulktoken'), msg.value, 1, msg.value
}



}
