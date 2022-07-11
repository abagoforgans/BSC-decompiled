contract main {




// =====================  Runtime code  =====================


#
#  - sub_27ab686e(?)
#  - sub_43cc1386(?)
#  - sub_8483c4a5(?)
#
address stor0;
uint256 approve_amounts;
uint256 deadline;
array of struct stor3;
mapping of uint256 stor4;
mapping of uint8 stor5;
address stor9;

function baseTokensContains(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function deadline() {
    return deadline
}

function approve_amounts() {
    return approve_amounts
}

function myWallets(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function _fallback() payable {
    revert
}

function addBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor4[address(arg1)]:
        stor3.length++
        stor3[stor3.length].field_0 = arg1
        stor3[stor3.length].field_160 = 0
        stor4[address(arg1)] = stor3.length
}

function sub_ebcd753d(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor9, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getBaseTokens() {
    require stor3.length <= test266151307()
    if stor3.length:
        mem[128 len 32 * stor3.length] = call.data[calldata.size len 32 * stor3.length]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        require idx < stor3.length
        mem[(32 * idx) + 128] = stor3[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor3.length) + 192 len floor32(stor3.length)] = mem[128 len floor32(stor3.length)]
    return Array(len=stor3.length, data=mem[128 len floor32(stor3.length)], mem[(32 * stor3.length) + floor32(stor3.length) + 192 len (32 * stor3.length) - floor32(stor3.length)]), 
}

function sub_a5ff692b(?) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor9, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function removeBaseToken(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if stor4[address(arg1)]:
        if stor4[address(arg1)] - 1 != stor3.length - 1:
            require stor3.length - 1 < stor3.length
            require stor4[address(arg1)] - 1 < stor3.length
            stor3[stor4[address(arg1)]].field_0 = stor3[stor3.length].field_0
            stor4[stor3[stor3.length].field_0] = stor4[address(arg1)]
        require stor3.length
        stor3[stor3.length].field_0 = 0
        stor3.length--
        stor4[address(arg1)] = 0
}



}
