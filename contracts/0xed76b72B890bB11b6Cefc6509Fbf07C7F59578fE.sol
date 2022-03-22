contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct schedules;
mapping of address addressChangeRequests;
address stor3;

function schedules(address arg1) payable {
    require calldata.size - 4 >= 32
    return schedules[arg1].field_0, 
           schedules[arg1].field_256,
           schedules[arg1].field_512,
           schedules[arg1].field_768,
           schedules[arg1].field_1024,
           schedules[arg1].field_1280,
           bool(schedules[arg1].field_1440)
}

function owner() payable {
    return owner
}

function addressChangeRequests(address arg1) payable {
    require calldata.size - 4 >= 32
    return addressChangeRequests[arg1]
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    owner = arg1
    emit NewOwner(arg1, arg1);
}

function requestAddressChange(address arg1) payable {
    require calldata.size - 4 >= 32
    require schedules[msg.sender].field_1440
    require not schedules[address(arg1)].field_1280
    require arg1
    addressChangeRequests[msg.sender] = arg1
    emit AddressChangeRequested(msg.sender, arg1);
}

function registerVestingSchedule(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    require arg2
    require not schedules[address(arg1)].field_1440
    require arg4 >= arg3
    require arg5 >= arg4
    schedules[address(arg1)].field_0 = arg3
    schedules[address(arg1)].field_256 = arg4
    schedules[address(arg1)].field_512 = arg5
    schedules[address(arg1)].field_768 = arg6
    schedules[address(arg1)].field_1024 = 0
    schedules[address(arg1)].field_1280 = arg2
    schedules[address(arg1)].field_1440 = 0
    emit VestingScheduleRegistered(address(arg2), arg3, arg4, arg5, arg6, arg1);
}

function confirmVestingSchedule(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require schedules[msg.sender].field_1280
    require not schedules[msg.sender].field_1440
    require arg1 == schedules[msg.sender].field_0
    require schedules[msg.sender].field_256 == arg2
    require schedules[msg.sender].field_512 == arg3
    require schedules[msg.sender].field_768 == arg4
    schedules[msg.sender].field_1440 = 1
    require ext_code.size(stor3)
    call stor3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args 0, schedules[msg.sender].field_1280, this.address, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit VestingScheduleConfirmed(schedules[msg.sender].field_1280, arg1, arg2, arg3, arg4, msg.sender);
}

function confirmAddressChange(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require addressChangeRequests[address(arg1)]
    require not schedules[address(arg2)].field_1280
    require addressChangeRequests[address(arg1)] == arg2
    schedules[stor2[address(arg1)]].field_0 = schedules[address(arg1)].field_0
    schedules[stor2[address(arg1)]].field_256 = schedules[address(arg1)].field_256
    schedules[stor2[address(arg1)]].field_512 = schedules[address(arg1)].field_512
    schedules[stor2[address(arg1)]].field_768 = schedules[address(arg1)].field_768
    schedules[stor2[address(arg1)]].field_1024 = schedules[address(arg1)].field_1024
    schedules[stor2[address(arg1)]].field_1280 = schedules[address(arg1)].field_1280
    schedules[stor2[address(arg1)]].field_1440 = Mask(96, 0, bool(schedules[address(arg1)].field_1440))
    schedules[address(arg1)].field_0 = 0
    schedules[address(arg1)].field_256 = 0
    schedules[address(arg1)].field_512 = 0
    schedules[address(arg1)].field_768 = 0
    schedules[address(arg1)].field_1024 = 0
    schedules[address(arg1)].field_1280 = 0
    schedules[address(arg1)].field_1440 = 0
    addressChangeRequests[address(arg1)] = 0
    emit AddressChangeConfirmed(arg1, arg2);
}

function withdraw() payable {
    require schedules[msg.sender].field_1440
    require block.timestamp > schedules[msg.sender].field_256
    if block.timestamp >= schedules[msg.sender].field_512:
        if schedules[msg.sender].field_1024 > schedules[msg.sender].field_768:
            revert with 0, 'UINT256_UNDERFLOW'
        schedules[msg.sender].field_1024 = schedules[msg.sender].field_768
        if schedules[msg.sender].field_768 - schedules[msg.sender].field_1024:
            require ext_code.size(stor3)
            call stor3.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, schedules[msg.sender].field_768 - schedules[msg.sender].field_1024
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit Withdrawal((schedules[msg.sender].field_768 - schedules[msg.sender].field_1024), msg.sender);
    else:
        if schedules[msg.sender].field_0 > block.timestamp:
            revert with 0, 'UINT256_UNDERFLOW'
        if schedules[msg.sender].field_0 > schedules[msg.sender].field_512:
            revert with 0, 'UINT256_UNDERFLOW'
        if not block.timestamp - schedules[msg.sender].field_0:
            require schedules[msg.sender].field_512 - schedules[msg.sender].field_0
            if schedules[msg.sender].field_1024 > 0 / schedules[msg.sender].field_512 - schedules[msg.sender].field_0:
                revert with 0, 'UINT256_UNDERFLOW'
            schedules[msg.sender].field_1024 = 0 / schedules[msg.sender].field_512 - schedules[msg.sender].field_0
            if (0 / schedules[msg.sender].field_512 - schedules[msg.sender].field_0) - schedules[msg.sender].field_1024:
                require ext_code.size(stor3)
                call stor3.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, (0 / schedules[msg.sender].field_512 - schedules[msg.sender].field_0) - schedules[msg.sender].field_1024
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit Withdrawal(((0 / schedules[msg.sender].field_512 - schedules[msg.sender].field_0) - schedules[msg.sender].field_1024), msg.sender);
        else:
            if (block.timestamp * schedules[msg.sender].field_768) - (schedules[msg.sender].field_0 * schedules[msg.sender].field_768) / block.timestamp - schedules[msg.sender].field_0 != schedules[msg.sender].field_768:
                revert with 0, 'UINT256_OVERFLOW'
            require schedules[msg.sender].field_512 - schedules[msg.sender].field_0
            if schedules[msg.sender].field_1024 > (block.timestamp * schedules[msg.sender].field_768) - (schedules[msg.sender].field_0 * schedules[msg.sender].field_768) / schedules[msg.sender].field_512 - schedules[msg.sender].field_0:
                revert with 0, 'UINT256_UNDERFLOW'
            schedules[msg.sender].field_1024 = (block.timestamp * schedules[msg.sender].field_768) - (schedules[msg.sender].field_0 * schedules[msg.sender].field_768) / schedules[msg.sender].field_512 - schedules[msg.sender].field_0
            if ((block.timestamp * schedules[msg.sender].field_768) - (schedules[msg.sender].field_0 * schedules[msg.sender].field_768) / schedules[msg.sender].field_512 - schedules[msg.sender].field_0) - schedules[msg.sender].field_1024:
                require ext_code.size(stor3)
                call stor3.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ((block.timestamp * schedules[msg.sender].field_768) - (schedules[msg.sender].field_0 * schedules[msg.sender].field_768) / schedules[msg.sender].field_512 - schedules[msg.sender].field_0) - schedules[msg.sender].field_1024
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit Withdrawal((((block.timestamp * schedules[msg.sender].field_768) - (schedules[msg.sender].field_0 * schedules[msg.sender].field_768) / schedules[msg.sender].field_512 - schedules[msg.sender].field_0) - schedules[msg.sender].field_1024), msg.sender);
}



}
