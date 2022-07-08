contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
address tokenAddress;
mapping of uint256 checkBalance;

function checkBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return checkBalance[address(arg1)]
}

function owner() {
    return owner
}

function geUnlockTime() {
    return geUnlockTime
}

function token() {
    return tokenAddress
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xfe8be007: owner, 0
    owner = 0
}

function updateToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    geUnlockTime = block.timestamp + arg1
    emit 0xfe8be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit 0xfe8be007: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0xfe8be007: owner, arg1
    owner = arg1
}

function sendToAddress(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x5fa625f3: arg2, arg1
}

function ownerWithdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Insufficient amount'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 < ext_call.return_data[0]:
        revert with 0, 'Please approve us to spend the amount of token.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if checkBalance[msg.sender] > !arg1:
        revert with 0, 17
    if checkBalance[msg.sender] + arg1 < checkBalance[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    checkBalance[msg.sender] += arg1
    emit Deposit(arg1, msg.sender, this.address);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0xa69df4b5(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3debd2d8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0x5fa625f3: arg2, address(arg1)
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x4311de8f(?????):
                    if unknown_0x5f515226(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return checkBalance[address(arg1)]
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        emit 0xfe8be007: owner, 0
                        owner = 0
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x7ad3def2(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        tokenAddress = address(arg1)
                else:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if eth.balance(this.address):
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > 0:
                        require ext_code.size(tokenAddress)
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0xa69df4b5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if stor1 != msg.sender:
                    revert with 0, 'You don't have permission to unlock'
                if block.timestamp <= geUnlockTime:
                    revert with 0, 'Contract is locked until 7 days'
                emit 0xfe8be007: owner, stor1
                owner = stor1
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xb6b55f25(?????):
                    if unknown_0xb6c52324(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return geUnlockTime
                    if unknown_0xdd467064(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        if block.timestamp > !arg1:
                            revert with 0, 17
                        geUnlockTime = block.timestamp + arg1
                        emit 0xfe8be007: owner, 0
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                            require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return tokenAddress
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit 0xfe8be007: owner, address(arg1)
                        owner = address(arg1)
                else:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 > ext_call.return_data[0]:
                        revert with 0, 'Insufficient amount'
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args msg.sender, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1 < ext_call.return_data[0]:
                        revert with 0, 'Please approve us to spend the amount of token.'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if checkBalance[msg.sender] > !arg1:
                        revert with 0, 17
                    if checkBalance[msg.sender] + arg1 < checkBalance[msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    checkBalance[msg.sender] += arg1
                    emit Deposit(arg1, msg.sender, this.address);
}



}
