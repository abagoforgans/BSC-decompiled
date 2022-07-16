contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_a335736cAddress;
address sub_41bcee0fAddress;
address sub_f1450c58Address;
address sub_6101a9b6Address;

function sub_41bcee0f(?) {
    return sub_41bcee0fAddress
}

function sub_6101a9b6(?) {
    return sub_6101a9b6Address
}

function sub_a335736c(?) {
    return sub_a335736cAddress
}

function sub_f1450c58(?) {
    return sub_f1450c58Address
}

function _fallback() payable {
    revert
}

function approve() {
    require ext_code.size(sub_6101a9b6Address)
    call sub_6101a9b6Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_a335736cAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8fb27b48(?) {
    require msg.sender == stor0
    idx = 0
    while idx < 10:
        mem[96] = 0x7589cf2f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_f1450c58Address)
        call sub_f1450c58Address.emergencyUnstake() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_ec8386b8(?) {
    require msg.sender == stor0
    require ext_code.size(sub_6101a9b6Address)
    staticcall sub_6101a9b6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_6101a9b6Address)
    call sub_6101a9b6Address.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake() {
    require msg.sender == stor0
    mem[100] = this.address
    require ext_code.size(sub_6101a9b6Address)
    staticcall sub_6101a9b6Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0xb7f1ef1e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 196 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
    require ext_code.size(sub_f1450c58Address)
    call sub_f1450c58Address.0xb7f1ef1e with:
         gas gas_remaining wei
        args ext_call.return_data[0], Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 196 len 32 * ext_call.return_data[0]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
