contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function destroy() {
    require msg.sender == owner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function isActive() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function tokensAvailable() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sendTokensSingleValue(address[] arg1, uint256 arg2) {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        idx = idx + 1
        continue 
}

function sendTokens(address[] arg1, uint256[] arg2) {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        if address(cd[((32 * idx) + arg1 + 36)]):
            mem[100] = this.address
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 10^16 * cd[((32 * idx) + arg2 + 36)]:
                mem[100] = address(cd[((32 * idx) + arg1 + 36)])
                mem[132] = 10^16 * cd[((32 * idx) + arg2 + 36)]
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg1 + 36)]), 10^16 * cd[((32 * idx) + arg2 + 36)]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        s = 10^16 * cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
}



}
