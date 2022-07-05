contract main {




// =====================  Runtime code  =====================


address implementationAddress;
uint256 stor3608;

function implementation() {
    return address(implementationAddress)
}

function _fallback() payable {
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgrade() {
    require ext_code.size(this.address)
    staticcall this.address.0x9d16acfd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        revert with 0, 'Upgrade not scheduled'
    if not ext_code.size(ext_call.return_data[32]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x6543616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[223 len 5]
    uint256(stor3608) = ext_call.return_data[32]
    emit Upgraded(ext_call.return_data[44 len 20]);
    delegate this.address with:
       funct (Mask(32, 224, ext_call.return_data[60 len 4]) >> 224 or Mask(32, 192, ext_call.return_data[36 len 28]) >> 192)
         gas gas_remaining wei
        args 
    if not return_data.size:
        if not delegate.return_code:
            revert with 0, 32, 33, 0xfe4973737565207768656e2066696e616c697a696e672074686520757067726164, mem[233 len 31]
    else:
        if not delegate.return_code:
            revert with 0, 
                        32,
                        33,
                        0xfe4973737565207768656e2066696e616c697a696e672074686520757067726164,
                        mem[ceil32(return_data.size) + 234 len 31]
    ('bool', 'delegate.return_code')
}



}
