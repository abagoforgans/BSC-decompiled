contract main {




// =====================  Runtime code  =====================


mapping of address proxies;
address stor1;

function proxies(address arg1) {
    return proxies[arg1]
}

function _fallback() payable {
    revert
}

function build(address arg1) {
    if proxies[address(arg1)]:
        require ext_code.size(proxies[address(arg1)])
        call proxies[address(arg1)].0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] != arg1
    require ext_code.size(stor1)
    call stor1.0xf3701da2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    proxies[address(arg1)] = address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}

function build() {
    if proxies[address(msg.sender)]:
        require ext_code.size(proxies[address(msg.sender)])
        call proxies[address(msg.sender)].0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] != msg.sender
    require ext_code.size(stor1)
    call stor1.0xf3701da2 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    proxies[address(msg.sender)] = address(ext_call.return_data[0])
    return address(ext_call.return_data[0])
}



}
