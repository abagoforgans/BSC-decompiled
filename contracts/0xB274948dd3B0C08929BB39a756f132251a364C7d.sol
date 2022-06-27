contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function airdrop(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + 128 > test266151307() or (32 * arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if (32 * arg1.length) + (32 * arg2.length) + 160 > test266151307() or (32 * arg2.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 'The number of recipients is not equal to the number of values'
    idx = 0
    while idx < arg2.length:
        if idx >= mem[(32 * arg1.length) + 128]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
            revert with 0, 'Balance less than zero'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[(32 * arg1.length) + 128]:
            revert with 'NH{q', 50
        _68 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if mem[(32 * idx) + (32 * arg1.length) + 160] and 1000 * 10^18 > -1 / mem[(32 * idx) + (32 * arg1.length) + 160]:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = 1000 * 10^18 * _68
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], 1000 * 10^18 * _68
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_72] == bool(mem[_72])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
