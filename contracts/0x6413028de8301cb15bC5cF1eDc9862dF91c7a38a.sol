contract main {




// =====================  Runtime code  =====================


address owner;
address tokenINNBCAddress;

function owner() {
    return owner
}

function tokenINNBCAddress() {
    return tokenINNBCAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setINNBCTokenAddress(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Token address cannot be null'
    tokenINNBCAddress = arg1
}

function airdropTokens(address[] arg1, uint256[] arg2) {
    require msg.sender == owner
    if arg1.length > 100:
        revert with 0, 'Recipients list is too long'
    if arg2.length != arg1.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Arrays do not have the same length'
    if not tokenINNBCAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'INNBC token contract address cannot be null'
    mem[100] = msg.sender
    require ext_code.size(tokenINNBCAddress)
    call tokenINNBCAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require mem[(32 * idx) + 128] + s >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = mem[(32 * idx) + 128] + s
        continue 
    if _32 * arg2.length > ext_call.return_data[0]:
        revert with 0, 'Sender does not have enough tokens'
    mem[(32 * arg2.length) + 132] = msg.sender
    mem[(32 * arg2.length) + 164] = this.address
    require ext_code.size(tokenINNBCAddress)
    call tokenINNBCAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        _50 = mem[(32 * idx) + (32 * arg2.length) + 160]
        require mem[(32 * idx) + (32 * arg2.length) + 160] + s >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = mem[(32 * idx) + (32 * arg2.length) + 160] + s
        continue 
    if _50 * arg2.length > ext_call.return_data[0]:
        revert with 0, 'This contract is not allowed to handle this amount'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[(64 * arg2.length) + 164] = msg.sender
        mem[(64 * arg2.length) + 196] = address(cd[((32 * idx) + arg1 + 36)])
        mem[(64 * arg2.length) + 228] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(tokenINNBCAddress)
        call tokenINNBCAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
        mem[(64 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
