contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct authorities;

function authorities(uint256 arg1) {
    require arg1 < authorities.length
    return address(authorities[arg1].field_0)
}

function owner() {
    return owner
}

function authorized(address arg1) {
    return bool(stor1[arg1])
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

function addAuthorizedAddress(address arg1) {
    require msg.sender == owner
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    authorities.length++
    address(authorities[authorities.length].field_0) = arg1
    emit LogAuthorizedAddressAdded(arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require stor1[msg.sender]
    call arg1 with:
       funct Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    require ext_call.success
    if return_data.size:
        require return_data.size == 32
        require ext_call.return_data[0]
    return 1
}

function removeAuthorizedAddress(address arg1) {
    require msg.sender == owner
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    idx = 0
    while idx < authorities.length:
        mem[0] = 2
        if address(authorities[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require authorities.length - 1 < authorities.length
        require idx < authorities.length
        address(authorities[idx].field_0) = address(authorities[authorities.length].field_0)
        authorities.length--
        if authorities.length > authorities.length - 1:
            idx = authorities.length + sha3(2) - 1
            while sha3(2) + authorities.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit LogAuthorizedAddressRemoved(arg1, msg.sender);
    emit LogAuthorizedAddressRemoved(arg1, msg.sender);
}

function getAuthorizedAddresses() {
    if not authorities.length:
        mem[(32 * authorities.length) + 128] = 32
        mem[(32 * authorities.length) + 160] = authorities.length
        mem[(32 * authorities.length) + 192 len floor32(authorities.length)] = mem[128 len floor32(authorities.length)]
        return memory
          from (32 * authorities.length) + 128
           len (96 * authorities.length) + 64
    mem[128] = address(authorities.field_0)
    idx = 128
    s = 0
    while (32 * authorities.length) + 96 > idx:
        mem[idx + 32] = address(authorities[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * authorities.length) + 192 len floor32(authorities.length)] = mem[128 len floor32(authorities.length)]
    return Array(len=authorities.length, data=mem[128 len floor32(authorities.length)], mem[(32 * authorities.length) + floor32(authorities.length) + 192 len (32 * authorities.length) - floor32(authorities.length)]), 
}



}
