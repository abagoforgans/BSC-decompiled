contract main {




// =====================  Runtime code  =====================


address owner;
address woolAddress;
address woolControllerAddress;
address cryptoAlpacaAddress;

function cryptoAlpaca() payable {
    return cryptoAlpacaAddress
}

function owner() payable {
    return owner
}

function wool() payable {
    return woolAddress
}

function woolController() payable {
    return woolControllerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_0ca7b73e(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    require ext_code.size(arg1)
    call arg1.0x10f9bee1 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f9b029e3(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    require ext_code.size(arg1)
    call arg1.0x8a409c5c with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fb7de428(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    require ext_code.size(arg1)
    call arg1.0x25a875fb with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_14ad2732(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    require ext_code.size(arg1)
    call arg1.setExchangePrice(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1bf15447(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    require ext_code.size(arg1)
    call arg1.setSecondsPerBlock(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_507fb1ea(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    require ext_code.size(arg1)
    call arg1.setExchangeWoolPrice(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[10809 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    require ext_code.size(arg1)
    call arg1.withdraw(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0d37ac49(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    create contract with 0 wei
                    code: code.data[3058 len 7751], woolAddress, cryptoAlpacaAddress, woolControllerAddress, arg1, arg2, arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function sub_5b8a4f2a(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[10847 len 32]
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.recall(uint256[] rg1, address rg2) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)]), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
