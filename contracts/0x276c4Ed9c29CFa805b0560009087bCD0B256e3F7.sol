contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address mmAddress;

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor1[arg1]))
}

function mm() payable {
    return mmAddress
}

function _fallback() payable {
    revert
}

function toggleWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8112 len 32]
    uint256(stor1[address(arg1)]) = not uint8(stor1[address(arg1)]) or Mask(248, 8, uint256(stor1[address(arg1)]))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8112 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[8074 len 38], mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_d0a00795(?) payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8112 len 32]
    create contract with 0 wei
                    code: code.data[1576 len 6498], mmAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mmAddress = address(create.new_address)
    emit 0x916f35ba: address(create.new_address)
}

function sub_45a96e17(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8112 len 32]
    require ext_code.size(arg1)
    call arg1.0xc6fb092b with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_e48012cd(?) payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[8112 len 32]
    create contract with 0 wei
                    code: code.data[1576 len 6498], mmAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mmAddress = address(create.new_address)
    emit 0x916f35ba: address(create.new_address)
    require ext_code.size(mmAddress)
    call mmAddress.0x3e24d518 with:
         gas gas_remaining wei
        args mmAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
