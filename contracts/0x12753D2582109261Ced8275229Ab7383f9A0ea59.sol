contract main {




// =====================  Runtime code  =====================


address _getOwner;
mapping of uint8 stor1;
address sub_6774d6a7Address;
address reward1Address;
address routerAddress;
address wethAddress;

function routerAddress() payable {
    return routerAddress
}

function wethAddress() payable {
    return wethAddress
}

function sub_6774d6a7(?) payable {
    return sub_6774d6a7Address
}

function reward1() payable {
    return reward1Address
}

function _getOwner() payable {
    return _getOwner
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (_getOwner == arg1)
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _getOwner != msg.sender:
        revert with 0, '!OWNER'
    _getOwner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function dividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_6774d6a7Address)
    call sub_6774d6a7Address.0x91b89fba with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(reward1Address)
    call reward1Address.0x91b89fba with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    return (2 * ext_call.return_data[0])
}

function sub_9840b3b5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_6774d6a7Address)
    call sub_6774d6a7Address.0x91b89fba with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_6774d6a7Address)
        call sub_6774d6a7Address.0x9840b3b5 with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(reward1Address)
    call reward1Address.0x9840b3b5 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_14b93d79(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_6774d6a7Address)
    call sub_6774d6a7Address.0x91b89fba with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_6774d6a7Address)
        call sub_6774d6a7Address.claim(address arg1) with:
             gas gas_remaining wei
            args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(reward1Address)
    call reward1Address.claim(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_02286d6b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(sub_6774d6a7Address)
    call sub_6774d6a7Address.0x91b89fba with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_6774d6a7Address)
        call sub_6774d6a7Address.claimTo(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(reward1Address)
    call reward1Address.claimTo(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c3f9e5b8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 2
    mem[128] = wethAddress
    mem[160] = address(arg2)
    mem[196] = address(arg1)
    require ext_code.size(sub_6774d6a7Address)
    call sub_6774d6a7Address.0x91b89fba with:
         gas gas_remaining wei
        args address(arg1)
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 196] = address(arg1)
    require ext_code.size(reward1Address)
    call reward1Address.0x91b89fba with:
         gas gas_remaining wei
        args address(arg1)
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 2 * ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 292
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(routerAddress)
    staticcall routerAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 2 * ext_call.return_data[0], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _28 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _29 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 31, ext_call.return_data[0]) >> 31 + 192]
    require (32 * _29) + _28 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _29)] = mem[(2 * ceil32(return_data.size)) + _28 + 224 len ceil32(32 * _29)]
    if 1 >= _29:
        revert with 0, 50
    mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}



}
