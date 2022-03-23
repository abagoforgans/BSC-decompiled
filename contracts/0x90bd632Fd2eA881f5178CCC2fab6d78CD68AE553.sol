contract main {




// =====================  Runtime code  =====================


#
#  - execute(bytes arg1, bytes arg2)
#
address authorityAddress;
address owner;
address cacheAddress;

function cache() {
    return cacheAddress
}

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(arg1)
    call arg1.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setCache(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if not arg1:
        revert with 0, 'ds-proxy-cache-address-required'
    cacheAddress = arg1
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    return 1
}

function approve(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
}

function _execute(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if this.address == msg.sender:
        if not arg1:
            revert with 0, 'ds-proxy-target-address-required'
        delegate arg1 with:
             gas gas_remaining - 5000 wei
            args arg2[all]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if owner == msg.sender:
        if not arg1:
            revert with 0, 'ds-proxy-target-address-required'
        delegate arg1 with:
             gas gas_remaining - 5000 wei
            args arg2[all]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    if not authorityAddress:
        revert with 0, 'ds-auth-unauthorized'
    mem[ceil32(arg2.length) + 196] = call.func_hash
    require ext_code.size(authorityAddress)
    staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
            gas gas_remaining wei
           args msg.sender, address(this.address), call.func_hash
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if not 0, ext_call.return_data[4 len 28]:
        revert with 0, 'ds-auth-unauthorized'
    if not arg1:
        revert with 0, 'ds-proxy-target-address-required'
    delegate arg1 with:
         gas gas_remaining - 5000 wei
        args arg2[all]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 193] = calldata.size
    mem[ceil32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 225 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + ceil32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 225] = 0
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    mem[ceil32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + 193 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256
    if ceil32(return_data.size) > return_data.size:
        mem[ceil32(arg2.length) + ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 193] = 0
    return Array(len=return_data.size, data=Mask(8 * ceil32(return_data.size), -(8 * ceil32(return_data.size)) + 256, ext_call.return_data[0 len return_data.size], Mask(8 * ceil32(return_data.size) - return_data.size, -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256, 32) >> -(8 * ceil32(return_data.size) + -ceil32(return_data.size) + 31) + 256) << (8 * ceil32(return_data.size)) - 256, mem[ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193 len 2 * ceil32(return_data.size)]), 
}

function deploy(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if this.address == msg.sender:
        mem[ceil32(arg1.length) + 128] = 0x8bf4515c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + arg1.length + 196] = 0
        require ext_code.size(cacheAddress)
        staticcall cacheAddress with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 196 len 2 * ceil32(arg1.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    else:
        if owner == msg.sender:
            mem[ceil32(arg1.length) + 128] = 0x8bf4515c00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(arg1.length) + arg1.length + 196] = 0
            require ext_code.size(cacheAddress)
            staticcall cacheAddress with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 196 len 2 * ceil32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
            if not 0, ext_call.return_data[4 len 28]:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 0x8bf4515c00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + ceil32(return_data.size) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(arg1.length) + ceil32(return_data.size) + arg1.length + 196] = 0
            require ext_code.size(cacheAddress)
            staticcall cacheAddress.read(bytes rg1) with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 196 len 2 * ceil32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(cacheAddress)
        call cacheAddress.write(bytes rg1) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function deployAndBurn(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if this.address == msg.sender:
        mem[ceil32(arg1.length) + 128] = 0x8bf4515c00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + arg1.length + 196] = 0
        require ext_code.size(cacheAddress)
        staticcall cacheAddress with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 196 len 2 * ceil32(arg1.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
    else:
        if owner == msg.sender:
            mem[ceil32(arg1.length) + 128] = 0x8bf4515c00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(arg1.length) + arg1.length + 196] = 0
            require ext_code.size(cacheAddress)
            staticcall cacheAddress with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 196 len 2 * ceil32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
        else:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg1.length) + 196] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
            if not 0, ext_call.return_data[4 len 28]:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = 0x8bf4515c00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + ceil32(return_data.size) + 196 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            if ceil32(arg1.length) > arg1.length:
                mem[ceil32(arg1.length) + ceil32(return_data.size) + arg1.length + 196] = 0
            require ext_code.size(cacheAddress)
            staticcall cacheAddress.read(bytes rg1) with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(return_data.size) + 196 len 2 * ceil32(arg1.length)])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        require ext_code.size(cacheAddress)
        call cacheAddress.write(bytes rg1) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_3bf2ccab(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 96
        _101 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_101] = cd[(cd[4] + cd[s] + 36)]
        mem[_101 + 32] = cd[(cd[4] + cd[s] + 68)]
        require cd[(cd[4] + cd[s] + 100)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] <= test266151307()
        _133 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32
        mem[_133] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_133 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]]
        mem[_133 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] + 32] = 0
        mem[_101 + 64] = _133
        mem[t] = _101
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _100 = mem[96]
    require mem[96] <= test266151307()
    _102 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _100) + 32
    if not _100:
        _198 = mem[96]
        idx = 0
        while uint8(idx) < _198:
            require uint8(idx) < mem[96]
            _202 = mem[mem[(32 * uint8(idx)) + 128]]
            require uint8(idx) < mem[96]
            _206 = mem[mem[(32 * uint8(idx)) + 128] + 32]
            require uint8(idx) < mem[96]
            _210 = mem[mem[(32 * uint8(idx)) + 128] + 64]
            _211 = mem[64]
            _214 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
            s = 0
            while s < _214:
                mem[s + _211] = mem[s + _210 + 32]
                _198 = mem[96]
                s = s + 32
                continue 
            if ceil32(_214) <= _214:
                call address(_202).mem[mem[64] len 4] with:
                   value _206 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _214 + _211 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require uint8(idx) < mem[_102]
                        mem[(32 * uint8(idx)) + _102 + 32] = 96
                        _198 = mem[96]
                        idx = idx + 1
                        continue 
                    _319 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _327 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _327:
                        mem[idx + _319 + 68] = mem[idx + 128]
                        _198 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_327) > _327:
                        mem[_319 + _327 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_327) + _319 + -mem[64] + 68
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_311] = return_data.size
                mem[_311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require uint8(idx) < mem[_102]
                    mem[(32 * uint8(idx)) + _102 + 32] = _311
                    _198 = mem[96]
                    idx = idx + 1
                    continue 
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _321 + 68] = mem[idx + _311 + 32]
                    _198 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[_321 + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _321 + -mem[64] + 68
            mem[_211 + _214] = 0
            call address(_202).mem[mem[64] len 4] with:
               value _206 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _214 + _211 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require uint8(idx) < mem[_102]
                    mem[(32 * uint8(idx)) + _102 + 32] = 96
                    _198 = mem[96]
                    idx = idx + 1
                    continue 
                _323 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _330 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _330:
                    mem[idx + _323 + 68] = mem[idx + 128]
                    _198 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_330) > _330:
                    mem[_323 + _330 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_330) + _323 + -mem[64] + 68
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_315] = return_data.size
            mem[_315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require uint8(idx) < mem[_102]
                mem[(32 * uint8(idx)) + _102 + 32] = _315
                _198 = mem[96]
                idx = idx + 1
                continue 
            _325 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _325 + 68] = mem[idx + _315 + 32]
                _198 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_325 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _325 + -mem[64] + 68
        _200 = mem[64]
        mem[mem[64]] = 32
        _204 = mem[_102]
        mem[mem[64] + 32] = mem[_102]
        idx = 0
        s = _102 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _204) + 64
        while idx < _204:
            mem[t] = u + -_200 - 64
            _293 = mem[s]
            _297 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _297:
                mem[v + u + 32] = mem[v + _293 + 32]
                v = v + 32
                continue 
            if ceil32(_297) > _297:
                mem[u + _297 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_297) + u + 32
            continue 
    else:
        mem[_102 + 32] = 96
        s = _102 + 32
        idx = _100
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _292 = mem[96]
        idx = 0
        while uint8(idx) < _292:
            require uint8(idx) < mem[96]
            _300 = mem[mem[(32 * uint8(idx)) + 128]]
            require uint8(idx) < mem[96]
            _304 = mem[mem[(32 * uint8(idx)) + 128] + 32]
            require uint8(idx) < mem[96]
            _308 = mem[mem[(32 * uint8(idx)) + 128] + 64]
            _309 = mem[64]
            _314 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
            s = 0
            while s < _314:
                mem[s + _309] = mem[s + _308 + 32]
                _292 = mem[96]
                s = s + 32
                continue 
            if ceil32(_314) <= _314:
                call address(_300).mem[mem[64] len 4] with:
                   value _304 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _314 + _309 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require uint8(idx) < mem[_102]
                        mem[(32 * uint8(idx)) + _102 + 32] = 96
                        _292 = mem[96]
                        idx = idx + 1
                        continue 
                    _395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _402 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _402:
                        mem[idx + _395 + 68] = mem[idx + 128]
                        _292 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_402) > _402:
                        mem[_395 + _402 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_402) + _395 + -mem[64] + 68
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_387] = return_data.size
                mem[_387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require uint8(idx) < mem[_102]
                    mem[(32 * uint8(idx)) + _102 + 32] = _387
                    _292 = mem[96]
                    idx = idx + 1
                    continue 
                _397 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _397 + 68] = mem[idx + _387 + 32]
                    _292 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[_397 + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _397 + -mem[64] + 68
            mem[_309 + _314] = 0
            call address(_300).mem[mem[64] len 4] with:
               value _304 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _314 + _309 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require uint8(idx) < mem[_102]
                    mem[(32 * uint8(idx)) + _102 + 32] = 96
                    _292 = mem[96]
                    idx = idx + 1
                    continue 
                _399 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _404 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _404:
                    mem[idx + _399 + 68] = mem[idx + 128]
                    _292 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_404) > _404:
                    mem[_399 + _404 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_404) + _399 + -mem[64] + 68
            _393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_393] = return_data.size
            mem[_393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require uint8(idx) < mem[_102]
                mem[(32 * uint8(idx)) + _102 + 32] = _393
                _292 = mem[96]
                idx = idx + 1
                continue 
            _401 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _401 + 68] = mem[idx + _393 + 32]
                _292 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_401 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _401 + -mem[64] + 68
        _298 = mem[64]
        mem[mem[64]] = 32
        _302 = mem[_102]
        mem[mem[64] + 32] = mem[_102]
        idx = 0
        s = _102 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _302) + 64
        while idx < _302:
            mem[t] = u + -_298 - 64
            _377 = mem[s]
            _380 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _380:
                mem[v + u + 32] = mem[v + _377 + 32]
                v = v + 32
                continue 
            if ceil32(_380) > _380:
                mem[u + _380 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_380) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_75d4f370(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 96
        _101 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_101] = cd[(cd[4] + cd[s] + 36)]
        mem[_101 + 32] = cd[(cd[4] + cd[s] + 68)]
        require cd[(cd[4] + cd[s] + 100)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] <= test266151307()
        _133 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]) + 32
        mem[_133] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_133 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)]]
        mem[_133 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 100)] + 36)] + 32] = 0
        mem[_101 + 64] = _133
        mem[t] = _101
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _100 = mem[96]
    require mem[96] <= test266151307()
    _102 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _100) + 32
    if not _100:
        _198 = mem[96]
        idx = 0
        while uint8(idx) < _198:
            require uint8(idx) < mem[96]
            _202 = mem[mem[(32 * uint8(idx)) + 128]]
            require uint8(idx) < mem[96]
            _206 = mem[mem[(32 * uint8(idx)) + 128] + 32]
            require uint8(idx) < mem[96]
            _210 = mem[mem[(32 * uint8(idx)) + 128] + 64]
            _211 = mem[64]
            _214 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
            s = 0
            while s < _214:
                mem[s + _211] = mem[s + _210 + 32]
                _198 = mem[96]
                s = s + 32
                continue 
            if ceil32(_214) <= _214:
                call address(_202).mem[mem[64] len 4] with:
                   value _206 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _214 + _211 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require uint8(idx) < mem[_102]
                        mem[(32 * uint8(idx)) + _102 + 32] = 96
                        _198 = mem[96]
                        idx = idx + 1
                        continue 
                    _319 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _327 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _327:
                        mem[idx + _319 + 68] = mem[idx + 128]
                        _198 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_327) > _327:
                        mem[_319 + _327 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_327) + _319 + -mem[64] + 68
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_311] = return_data.size
                mem[_311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require uint8(idx) < mem[_102]
                    mem[(32 * uint8(idx)) + _102 + 32] = _311
                    _198 = mem[96]
                    idx = idx + 1
                    continue 
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _321 + 68] = mem[idx + _311 + 32]
                    _198 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[_321 + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _321 + -mem[64] + 68
            mem[_211 + _214] = 0
            call address(_202).mem[mem[64] len 4] with:
               value _206 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _214 + _211 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require uint8(idx) < mem[_102]
                    mem[(32 * uint8(idx)) + _102 + 32] = 96
                    _198 = mem[96]
                    idx = idx + 1
                    continue 
                _323 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _330 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _330:
                    mem[idx + _323 + 68] = mem[idx + 128]
                    _198 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_330) > _330:
                    mem[_323 + _330 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_330) + _323 + -mem[64] + 68
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_315] = return_data.size
            mem[_315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require uint8(idx) < mem[_102]
                mem[(32 * uint8(idx)) + _102 + 32] = _315
                _198 = mem[96]
                idx = idx + 1
                continue 
            _325 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _325 + 68] = mem[idx + _315 + 32]
                _198 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_325 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _325 + -mem[64] + 68
        _200 = mem[64]
        mem[mem[64]] = 32
        _204 = mem[_102]
        mem[mem[64] + 32] = mem[_102]
        idx = 0
        s = _102 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _204) + 64
        while idx < _204:
            mem[t] = u + -_200 - 64
            _293 = mem[s]
            _297 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _297:
                mem[v + u + 32] = mem[v + _293 + 32]
                v = v + 32
                continue 
            if ceil32(_297) > _297:
                mem[u + _297 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_297) + u + 32
            continue 
    else:
        mem[_102 + 32] = 96
        s = _102 + 32
        idx = _100
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _292 = mem[96]
        idx = 0
        while uint8(idx) < _292:
            require uint8(idx) < mem[96]
            _300 = mem[mem[(32 * uint8(idx)) + 128]]
            require uint8(idx) < mem[96]
            _304 = mem[mem[(32 * uint8(idx)) + 128] + 32]
            require uint8(idx) < mem[96]
            _308 = mem[mem[(32 * uint8(idx)) + 128] + 64]
            _309 = mem[64]
            _314 = mem[mem[mem[(32 * uint8(idx)) + 128] + 64]]
            s = 0
            while s < _314:
                mem[s + _309] = mem[s + _308 + 32]
                _292 = mem[96]
                s = s + 32
                continue 
            if ceil32(_314) <= _314:
                call address(_300).mem[mem[64] len 4] with:
                   value _304 wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _314 + _309 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require uint8(idx) < mem[_102]
                        mem[(32 * uint8(idx)) + _102 + 32] = 96
                        _292 = mem[96]
                        idx = idx + 1
                        continue 
                    _395 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _402 = mem[96]
                    mem[mem[64] + 36] = mem[96]
                    idx = 0
                    while idx < _402:
                        mem[idx + _395 + 68] = mem[idx + 128]
                        _292 = mem[96]
                        idx = idx + 32
                        continue 
                    if ceil32(_402) > _402:
                        mem[_395 + _402 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_402) + _395 + -mem[64] + 68
                _387 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_387] = return_data.size
                mem[_387 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    require uint8(idx) < mem[_102]
                    mem[(32 * uint8(idx)) + _102 + 32] = _387
                    _292 = mem[96]
                    idx = idx + 1
                    continue 
                _397 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = return_data.size
                idx = 0
                while idx < return_data.size:
                    mem[idx + _397 + 68] = mem[idx + _387 + 32]
                    _292 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(return_data.size) > return_data.size:
                    mem[_397 + return_data.size + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(return_data.size) + _397 + -mem[64] + 68
            mem[_309 + _314] = 0
            call address(_300).mem[mem[64] len 4] with:
               value _304 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _314 + _309 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    require uint8(idx) < mem[_102]
                    mem[(32 * uint8(idx)) + _102 + 32] = 96
                    _292 = mem[96]
                    idx = idx + 1
                    continue 
                _399 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _404 = mem[96]
                mem[mem[64] + 36] = mem[96]
                idx = 0
                while idx < _404:
                    mem[idx + _399 + 68] = mem[idx + 128]
                    _292 = mem[96]
                    idx = idx + 32
                    continue 
                if ceil32(_404) > _404:
                    mem[_399 + _404 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_404) + _399 + -mem[64] + 68
            _393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_393] = return_data.size
            mem[_393 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                require uint8(idx) < mem[_102]
                mem[(32 * uint8(idx)) + _102 + 32] = _393
                _292 = mem[96]
                idx = idx + 1
                continue 
            _401 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = return_data.size
            idx = 0
            while idx < return_data.size:
                mem[idx + _401 + 68] = mem[idx + _393 + 32]
                _292 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(return_data.size) > return_data.size:
                mem[_401 + return_data.size + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(return_data.size) + _401 + -mem[64] + 68
        _298 = mem[64]
        mem[mem[64]] = 32
        _302 = mem[_102]
        mem[mem[64] + 32] = mem[_102]
        idx = 0
        s = _102 + 32
        t = mem[64] + 64
        u = mem[64] + (32 * _302) + 64
        while idx < _302:
            mem[t] = u + -_298 - 64
            _377 = mem[s]
            _380 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _380:
                mem[v + u + 32] = mem[v + _377 + 32]
                v = v + 32
                continue 
            if ceil32(_380) > _380:
                mem[u + _380 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_380) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function executeAndBurn(bytes arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if this.address == msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 228] = 0
        require ext_code.size(cacheAddress)
        staticcall cacheAddress with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 228 len 2 * ceil32(arg1.length)])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            if this.address == msg.sender:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'ds-proxy-target-address-required'
                delegate 0, ext_call.return_data[4 len 28].mem[ceil32(arg1.length) + 160 len 4] with:
                     gas gas_remaining - 5000 wei
                    args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                return address(ext_call.return_data[4 len 28]), 64, return_data.size, ext_call.return_data[0 len return_data.size], 0
            if owner == msg.sender:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'ds-proxy-target-address-required'
                delegate 0, ext_call.return_data[4 len 28].mem[ceil32(arg1.length) + 160 len 4] with:
                     gas gas_remaining - 5000 wei
                    args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                return address(ext_call.return_data[4 len 28]), 64, return_data.size, ext_call.return_data[0 len return_data.size], 0
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 164] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 196] = this.address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 228] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            if not address(ext_call.return_data[4 len 28]):
                revert with 0, 'ds-proxy-target-address-required'
            delegate 0, ext_call.return_data[4 len 28].mem[ceil32(arg1.length) + 160 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[4 len 28])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
            return memory
              from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
               len (4 * ceil32(return_data.size)) + 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 164] = 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + arg1.length + 228] = 0
        require ext_code.size(cacheAddress)
        call cacheAddress.write(bytes rg1) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if this.address == msg.sender:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ds-proxy-target-address-required'
            delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
            return memory
              from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
               len (4 * ceil32(return_data.size)) + 96
        if owner == msg.sender:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ds-proxy-target-address-required'
            delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
            return memory
              from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
               len (4 * ceil32(return_data.size)) + 96
        if not authorityAddress:
            revert with 0, 'ds-auth-unauthorized'
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 164] = msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = this.address
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228] = call.func_hash
        require ext_code.size(authorityAddress)
        staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                gas gas_remaining wei
               args msg.sender, address(this.address), call.func_hash
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ds-auth-unauthorized'
        if not address(ext_call.return_data[0]):
            revert with 0, 'ds-proxy-target-address-required'
        delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
             gas gas_remaining - 5000 wei
            args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) > return_data.size:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
        return memory
          from ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
           len (8 * ceil32(return_data.size)) + 96
    if owner == msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 228] = 0
        require ext_code.size(cacheAddress)
        staticcall cacheAddress with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 228 len 2 * ceil32(arg1.length)])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            if this.address == msg.sender:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'ds-proxy-target-address-required'
                delegate 0, ext_call.return_data[4 len 28].mem[ceil32(arg1.length) + 160 len 4] with:
                     gas gas_remaining - 5000 wei
                    args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                return address(ext_call.return_data[4 len 28]), 64, return_data.size, ext_call.return_data[0 len return_data.size], 0
            if owner == msg.sender:
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'ds-proxy-target-address-required'
                delegate 0, ext_call.return_data[4 len 28].mem[ceil32(arg1.length) + 160 len 4] with:
                     gas gas_remaining - 5000 wei
                    args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                if not delegate.return_code == 1:
                    revert with ext_call.return_data[0 len return_data.size]
                emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
                return address(ext_call.return_data[4 len 28]), 64, return_data.size, ext_call.return_data[0 len return_data.size], 0
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 164] = msg.sender
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 196] = this.address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 228] = call.func_hash
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
            if not address(ext_call.return_data[4 len 28]):
                revert with 0, 'ds-proxy-target-address-required'
            delegate 0, ext_call.return_data[4 len 28].mem[ceil32(arg1.length) + 160 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[4 len 28])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
            return memory
              from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
               len (4 * ceil32(return_data.size)) + 96
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 164] = 32
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + arg1.length + 228] = 0
        require ext_code.size(cacheAddress)
        call cacheAddress.write(bytes rg1) with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=arg1[all])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if this.address == msg.sender:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ds-proxy-target-address-required'
            delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
            return memory
              from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
               len (4 * ceil32(return_data.size)) + 96
        if owner == msg.sender:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ds-proxy-target-address-required'
            delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
            return memory
              from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
               len (4 * ceil32(return_data.size)) + 96
        if not authorityAddress:
            revert with 0, 'ds-auth-unauthorized'
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 164] = msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = this.address
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228] = call.func_hash
        require ext_code.size(authorityAddress)
        staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                gas gas_remaining wei
               args msg.sender, address(this.address), call.func_hash
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ds-auth-unauthorized'
        if not address(ext_call.return_data[0]):
            revert with 0, 'ds-proxy-target-address-required'
        delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
             gas gas_remaining - 5000 wei
            args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) > return_data.size:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
        return memory
          from ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
           len (8 * ceil32(return_data.size)) + 96
    if not authorityAddress:
        revert with 0, 'ds-auth-unauthorized'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = this.address
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = call.func_hash
    require ext_code.size(authorityAddress)
    staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
            gas gas_remaining wei
           args msg.sender, address(this.address), call.func_hash
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    if not 0, ext_call.return_data[4 len 28]:
        revert with 0, 'ds-auth-unauthorized'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 164] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 196] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + arg1.length + 228] = 0
    require ext_code.size(cacheAddress)
    staticcall cacheAddress.read(bytes rg1) with:
            gas gas_remaining wei
           args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(return_data.size) + 228 len 2 * ceil32(arg1.length)])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        if this.address == msg.sender:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ds-proxy-target-address-required'
            delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
            return memory
              from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
               len (4 * ceil32(return_data.size)) + 96
        if owner == msg.sender:
            if not ext_call.return_data[12 len 20]:
                revert with 0, 'ds-proxy-target-address-required'
            delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
                 gas gas_remaining - 5000 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not delegate.return_code == 1:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
            mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
            emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
            if ceil32(return_data.size) > return_data.size:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
            return memory
              from ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
               len (4 * ceil32(return_data.size)) + 96
        if not authorityAddress:
            revert with 0, 'ds-auth-unauthorized'
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 164] = msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = this.address
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228] = call.func_hash
        require ext_code.size(authorityAddress)
        staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                gas gas_remaining wei
               args msg.sender, address(this.address), call.func_hash
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'ds-auth-unauthorized'
        if not address(ext_call.return_data[0]):
            revert with 0, 'ds-proxy-target-address-required'
        delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
             gas gas_remaining - 5000 wei
            args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) > return_data.size:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
        return memory
          from ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
           len (8 * ceil32(return_data.size)) + 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 164] = 32
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 196] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 228 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + arg1.length + 228] = 0
    require ext_code.size(cacheAddress)
    call cacheAddress.write(bytes rg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if this.address == msg.sender:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'ds-proxy-target-address-required'
        delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
             gas gas_remaining - 5000 wei
            args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) > return_data.size:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
        return memory
          from ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
           len (8 * ceil32(return_data.size)) + 96
    if owner == msg.sender:
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'ds-proxy-target-address-required'
        delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
             gas gas_remaining - 5000 wei
            args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code == 1:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257] = 0
        emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = address(ext_call.return_data[0])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 193] = 64
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 225] = return_data.size
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 257 len ceil32(return_data.size)] = ext_call.return_data[0 len return_data.size], mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + return_data.size + 192 len ceil32(return_data.size) - return_data.size]
        if ceil32(return_data.size) > return_data.size:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 257] = 0
        return memory
          from ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161
           len (8 * ceil32(return_data.size)) + 96
    if not authorityAddress:
        revert with 0, 'ds-auth-unauthorized'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 164] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 196] = this.address
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 228] = call.func_hash
    require ext_code.size(authorityAddress)
    staticcall authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
            gas gas_remaining wei
           args msg.sender, address(this.address), call.func_hash
    mem[ceil32(arg1.length) + ceil32(arg2.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'ds-auth-unauthorized'
    if not address(ext_call.return_data[0]):
        revert with 0, 'ds-proxy-target-address-required'
    delegate ext_call.return_data[0].mem[ceil32(arg1.length) + 160 len 4] with:
         gas gas_remaining - 5000 wei
        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not delegate.return_code == 1:
        revert with ext_call.return_data[0 len return_data.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    return address(ext_call.return_data[0]), 64, return_data.size, ext_call.return_data[0 len return_data.size], 0
}



}
