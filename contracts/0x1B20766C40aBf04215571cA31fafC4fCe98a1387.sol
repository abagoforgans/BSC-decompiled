contract main {




// =====================  Runtime code  =====================


mapping of struct lockedAmount;

function lockedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockedAmount[address(msg.sender)][address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function unlockableTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    if lockedAmount[address(msg.sender)][address(arg1)].field_512 <= 0:
        return 0
    if not lockedAmount[address(msg.sender)][address(arg1)].field_256:
        if lockedAmount[address(msg.sender)][address(arg1)].field_512 < lockedAmount[address(msg.sender)][address(arg1)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        return lockedAmount[address(msg.sender)][address(arg1)].field_512
    require lockedAmount[address(msg.sender)][address(arg1)].field_256
    if 60 * lockedAmount[address(msg.sender)][address(arg1)].field_256 / lockedAmount[address(msg.sender)][address(arg1)].field_256 != 60:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if lockedAmount[address(msg.sender)][address(arg1)].field_512 + (60 * lockedAmount[address(msg.sender)][address(arg1)].field_256) < lockedAmount[address(msg.sender)][address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (lockedAmount[address(msg.sender)][address(arg1)].field_512 + (60 * lockedAmount[address(msg.sender)][address(arg1)].field_256))
}

function lock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe4c6f636b3a20746865206c6f636b20616d6f756e742065786365656473207468652062616c616e63,
                    mem[205 len 23]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if lockedAmount[address(msg.sender)][address(arg1)].field_0 < lockedAmount[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    lockedAmount[address(msg.sender)][address(arg1)].field_256 = arg3
    lockedAmount[address(msg.sender)][address(arg1)].field_512 = block.timestamp
    emit Locked(msg.sender, address(arg1), lockedAmount[address(msg.sender)][address(arg1)].field_0, arg3);
    return 0
}

function unlock(address arg1) payable {
    require calldata.size - 4 >= 32
    if not lockedAmount[address(msg.sender)][address(arg1)].field_256:
        if lockedAmount[address(msg.sender)][address(arg1)].field_512 < lockedAmount[address(msg.sender)][address(arg1)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if lockedAmount[address(msg.sender)][address(arg1)].field_512 > block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x77556e6c6f636b3a20796f7520636f756c64206e6f7420756e6c6f636b206e6f77,
                        mem[197 len 31]
    else:
        require lockedAmount[address(msg.sender)][address(arg1)].field_256
        if 60 * lockedAmount[address(msg.sender)][address(arg1)].field_256 / lockedAmount[address(msg.sender)][address(arg1)].field_256 != 60:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if lockedAmount[address(msg.sender)][address(arg1)].field_512 + (60 * lockedAmount[address(msg.sender)][address(arg1)].field_256) < lockedAmount[address(msg.sender)][address(arg1)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if lockedAmount[address(msg.sender)][address(arg1)].field_512 + (60 * lockedAmount[address(msg.sender)][address(arg1)].field_256) > block.timestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x77556e6c6f636b3a20796f7520636f756c64206e6f7420756e6c6f636b206e6f77,
                        mem[197 len 31]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, lockedAmount[address(msg.sender)][address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lockedAmount[address(msg.sender)][address(arg1)].field_0 = 0
    lockedAmount[address(msg.sender)][address(arg1)].field_512 = 0
    emit Unlocked(msg.sender, address(arg1), lockedAmount[address(msg.sender)][address(arg1)].field_0);
    return 0
}



}
