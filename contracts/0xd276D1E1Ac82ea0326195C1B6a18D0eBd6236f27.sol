contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
mapping of struct stor2;

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function setWin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    stor2[msg.sender].field_256 = arg1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Your balance is not enough.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor2[msg.sender].field_0 = arg1
    stor2[msg.sender].field_256 = 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Contract balance is not enough.'
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9732981a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2[address(arg1)].field_256 == 1:
        if stor2[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 2 * stor2[address(arg1)].field_0:
            revert with 0, 'Your balance is not enough.'
        if stor2[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), 2 * stor2[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor2[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg1), 2 * stor2[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if stor2[address(arg1)].field_256 == 2:
            if stor2[address(arg1)].field_0 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 3 * stor2[address(arg1)].field_0:
                revert with 0, 'Your balance is not enough.'
            if stor2[address(arg1)].field_0 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), 3 * stor2[address(arg1)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor2[address(arg1)].field_0 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                revert with 0, 17
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), address(arg1), 3 * stor2[address(arg1)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor2[address(arg1)].field_0 = 0
    stor2[address(arg1)].field_256 = 0
}



}
