contract main {




// =====================  Runtime code  =====================


address owner;
address factoryContractAddress;
address exchangeContractAddress;

function exchangeContract() payable {
    return exchangeContractAddress
}

function owner() payable {
    return owner
}

function factoryContract() payable {
    return factoryContractAddress
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

function setFactoryContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    factoryContractAddress = arg1
}

function setExchangeContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    exchangeContractAddress = arg1
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

function sub_1fcdff3a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = address(arg1)
    mem[132] = address(arg2)
    staticcall factoryContractAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'pool not found'
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg1)
    mem[ceil32(return_data.size) + 160] = address(arg2)
    mem[ceil32(return_data.size) + 196] = exchangeContractAddress
    mem[ceil32(return_data.size) + 228] = arg3
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args exchangeContractAddress, arg3
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall exchangeContractAddress.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _38 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _39 = mem[_38]
    require mem[_38] <= test266151307()
    require _38 + mem[_38] + 31 < _38 + return_data.size
    _40 = mem[_38 + mem[_38]]
    if mem[_38 + mem[_38]] > test266151307():
        revert with 0, 65
    if _38 + ceil32(return_data.size) + ceil32(32 * mem[_38 + mem[_38]]) + 1 > test266151307() or ceil32(32 * mem[_38 + mem[_38]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _38 + ceil32(return_data.size) + ceil32(32 * mem[_38 + mem[_38]]) + 1
    mem[_38 + ceil32(return_data.size)] = _40
    require (32 * _40) + _39 + 32 <= return_data.size
    mem[_38 + ceil32(return_data.size) + 32 len ceil32(32 * _40)] = mem[_38 + _39 + 32 len ceil32(32 * _40)]
    if 1 >= _40:
        revert with 0, 50
    _56 = mem[_38 + ceil32(return_data.size) + 64]
    if block.timestamp > -601:
        revert with 0, 17
    _57 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = _56
    mem[mem[64] + 68] = 160
    _58 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _58:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_57 + 100] = msg.sender
    mem[_57 + 132] = block.timestamp + 600
    call exchangeContractAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _57 + (32 * _58) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _68 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_68] <= test266151307()
    require _68 + mem[_68] + 31 < _68 + return_data.size
    if mem[_68 + mem[_68]] > test266151307():
        revert with 0, 65
    if _68 + ceil32(return_data.size) + ceil32(32 * mem[_68 + mem[_68]]) + 1 > test266151307() or ceil32(32 * mem[_68 + mem[_68]]) + 1 < 0:
        revert with 0, 65
    require (32 * mem[_68 + mem[_68]]) + mem[_68] + 32 <= return_data.size
}



}
