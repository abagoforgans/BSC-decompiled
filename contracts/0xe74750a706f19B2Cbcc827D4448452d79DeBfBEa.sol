contract main {




// =====================  Runtime code  =====================


address owner;
address sub_53a10665Address;
address sub_3e62a4efAddress;
address bank_address;
address sub_6985b443Address;

function bank_address() payable {
    return bank_address
}

function sub_3e62a4ef(?) payable {
    return sub_3e62a4efAddress
}

function sub_53a10665(?) payable {
    return sub_53a10665Address
}

function sub_6985b443(?) payable {
    return sub_6985b443Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_42208ee8(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'EOWNERCALL'
    call sub_53a10665Address.offers(uint256 arg1) with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) >> 32, mem[196 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'EGETOFFER'
        revert with 0, 'EOFFERDATALEN'
    mem[196 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'EGETOFFER'
    if return_data.size <= 224:
        revert with 0, 'EOFFERDATALEN'
    require return_data.size >= 256
    if mem[388]:
        revert with 0, 'EOFFERCLOSED'
    if mem[420]:
        revert with 0, 'EOFFERFORBUY'
    if arg2 != mem[196 len 28], uint32(arg1):
        revert with 0, 'ENID'
    if arg3 != mem[304 len 20]:
        revert with 0, 'ECONTRACTADDR'
    if arg4 != mem[272 len 20]:
        revert with 0, 'EDEALTOKEN'
    if arg5 != mem[228]:
        revert with 0, 'EPRICE'
    require ext_code.size(arg4)
    call arg4.0x23b872dd with:
         gas gas_remaining wei
        args bank_address, owner, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
