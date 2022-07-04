contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_9dcb511a;
array of struct whitelisted;

function owner() payable {
    return owner
}

function sub_9dcb511a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9dcb511a[arg1]
}

function whitelistedAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < whitelisted.length
    return whitelisted[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_c91935fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return 10^18
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addToWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    whitelisted.length++
    whitelisted[whitelisted.length].field_0 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removePriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        idx = 0
        while idx < whitelisted.length:
            mem[0] = 2
            if whitelisted[idx].field_0 != msg.sender:
                idx = idx + 1
                continue 
            sub_9dcb511a[address(arg1)] = 0
        revert with 0, 'Not Allowed'
    sub_9dcb511a[address(arg1)] = 0
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if whitelisted.length:
        mem[128] = address(whitelisted.field_0)
        idx = 128
        s = 0
        while (32 * whitelisted.length) + 96 > idx:
            mem[idx + 32] = whitelisted[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < whitelisted.length:
        require idx < whitelisted.length
        if arg1 != mem[(32 * idx) + 140 len 20]:
            idx = idx + 1
            continue 
        require idx < whitelisted.length
        whitelisted[idx].field_0 = 0
}

function sub_8dd21798(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 36).length
        if address(cd[4]) != mem[(32 * idx) + 140 len 20]:
            idx = idx + 1
            continue 
        return idx, 1
    return 0
}

function addPriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        idx = 0
        while idx < whitelisted.length:
            mem[0] = 2
            if whitelisted[idx].field_0 != msg.sender:
                idx = idx + 1
                continue 
            require ext_code.size(arg1)
            staticcall arg1.tokenAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            sub_9dcb511a[ext_call.return_data[12 len 20]] = arg1
        revert with 0, 'Not Allowed'
    require ext_code.size(arg1)
    staticcall arg1.tokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_9dcb511a[ext_call.return_data[12 len 20]] = arg1
}

function getWhiteList() payable {
    mem[64] = (32 * whitelisted.length) + 128
    mem[96] = whitelisted.length
    if not whitelisted.length:
        mem[(32 * whitelisted.length) + 128] = 32
        mem[(32 * whitelisted.length) + 160] = whitelisted.length
        idx = 0
        s = (32 * whitelisted.length) + 192
        t = 128
        while idx < whitelisted.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * whitelisted.length) + 128
           len (96 * whitelisted.length) + 64
    mem[128] = address(whitelisted.field_0)
    idx = 128
    s = 0
    while (32 * whitelisted.length) + 96 > idx:
        mem[idx + 32] = whitelisted[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * whitelisted.length) + 128] = 32
    mem[(32 * whitelisted.length) + 160] = whitelisted.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < whitelisted.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * whitelisted.length) + -mem[64] + 192
}



}
