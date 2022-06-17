contract main {




// =====================  Runtime code  =====================


const getEthBalance = eth.balance(this.address)


uint256 end;
address owner;
address pendingOwner;
uint256 duration;

function duration() {
    return duration
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function end() {
    return end
}

function acceptOwnership() {
    if pendingOwner != msg.sender:
        revert with 0, 'acceptOwnership: !pendingOwner'
    owner = pendingOwner
}

function timeLeft() {
    if end <= block.timestamp:
        return 0
    if end < block.timestamp:
        revert with 0, 17
    return (end - block.timestamp)
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'owner: !owner'
    pendingOwner = arg1
}

function ExtendLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'only owner'
    if end > !arg1:
        revert with 0, 17
    end += arg1
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'only owner'
    if block.timestamp < end:
        revert with 0, 'too early'
    if not arg1:
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x70ed0ada(?????) > uint32(call.func_hash) >> 224:
            if duration() == uint32(call.func_hash) >> 224:
                require not msg.value
                return duration
            if unknown_0x1300a6d1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if end <= block.timestamp:
                    return 0
                if end < block.timestamp:
                    revert with 0, 17
                return (end - block.timestamp)
            if unknown_0x13af4035(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'owner: !owner'
                pendingOwner = address(arg1)
            else:
                if unknown_0x3aecd0e3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x403462f0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'only owner'
                    if end > !arg1:
                        revert with 0, 17
                    end += arg1
                else:
                    require unknown_0x47e7ef24(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x70ed0ada(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return eth.balance(this.address)
                if uint32(call.func_hash) >> 224 != unknown_0x79ba5097(?????):
                    require unknown_0x893d20e8(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                if pendingOwner != msg.sender:
                    revert with 0, 'acceptOwnership: !pendingOwner'
                owner = pendingOwner
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0xe30c3978(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return pendingOwner
                if unknown_0xefbe1c1c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return end
                require unknown_0xf3fef3a3(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'only owner'
                if block.timestamp < end:
                    revert with 0, 'too early'
                if not address(arg1):
                    call owner with:
                       value arg2 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(address(arg1))
                    call address(arg1).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
