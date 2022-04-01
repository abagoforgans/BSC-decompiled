contract main {




// =====================  Runtime code  =====================


uint128 stor3608; offset 160
address stor3608;
uint256 stor3608;
uint128 storB531; offset 160
address storB531;

function admin() {
    if msg.sender == address(storB531.field_0):
        return address(storB531.field_0)
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == address(storB531.field_0):
        return address(stor3608.field_0)
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.sender == address(storB531.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                    mem[214 len 14]
    delegate uint256(stor3608.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[223 len 5]
    address(stor3608.field_0) = arg1
    Mask(96, 0, stor3608.field_160) = 0
    emit Upgraded(arg1);
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6e43616e6e6f74206368616e6765207468652061646d696e206f6620612070726f787920746f20746865207a65726f20616464726573,
                    mem[218 len 10]
    emit AdminChanged(address(storB531.field_0), arg1);
    address(storB531.field_0) = arg1
    Mask(96, 0, storB531.field_160) = 0
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(storB531.field_0) != msg.sender:
        delegate uint256(stor3608.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[223 len 5]
    address(stor3608.field_0) = arg1
    Mask(96, 0, stor3608.field_160) = 0
    emit Upgraded(arg1);
    delegate arg1 with:
         gas gas_remaining wei
        args arg2[all]
    require delegate.return_code
}



}
