contract main {




// =====================  Runtime code  =====================


address configAddress;
address owner;

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setupConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWNER FORBIDDEN'
    configAddress = arg1
    require ext_code.size(configAddress)
    staticcall configAddress.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
}



}
