contract main {




// =====================  Runtime code  =====================


address stor10D6;
uint256 stor10D6;
uint128 stor54AC; offset 160
address stor54AC;
uint256 stor54AC;
uint128 stor7050; offset 160
address dforceSplitImplementationAddress;
uint256 stor7050;

function dforceSplitImplementation() {
    return dforceSplitImplementationAddress
}

function admin() {
    if msg.sender == address(stor10D6):
        return address(stor10D6)
    delegate uint256(stor7050.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function pendingAdmin() {
    if msg.sender == address(stor10D6):
        return address(stor54AC.field_0)
    delegate uint256(stor7050.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == address(stor10D6):
        return dforceSplitImplementationAddress
    delegate uint256(stor7050.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if msg.sender == address(stor10D6):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x2e43616e6e6f742063616c6c2066616c6c6261636b2066756e6374696f6e2066726f6d207468652070726f78792061646d69,
                    mem[214 len 14]
    delegate uint256(stor7050.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function updateAdmin() {
    if not address(stor54AC.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x6e43616e6e6f74206368616e6765207468652061646d696e206f6620612070726f787920746f20746865207a65726f20616464726573,
                    mem[218 len 10]
    if address(stor54AC.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0xfe6d73672e73656e64657220616e64206e657741646d696e206d757374206265207468652073616d6520,
                    mem[206 len 22]
    uint256(stor10D6) = uint256(stor54AC.field_0)
    uint256(stor54AC.field_0) = 0
    emit AdminUpdated(address(stor54AC.field_0));
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor10D6) != msg.sender:
        delegate uint256(stor7050.field_0) with:
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
    dforceSplitImplementationAddress = arg1
    Mask(96, 0, stor7050.field_160) = 0
    emit Upgraded(arg1);
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(stor10D6) != msg.sender:
        delegate uint256(stor7050.field_0) with:
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
    dforceSplitImplementationAddress = arg1
    Mask(96, 0, stor7050.field_160) = 0
    emit Upgraded(arg1);
    call this.address with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
    if not ext_call.success:
        revert with 0, 'upgradeToAndCall-error'
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor10D6) != msg.sender:
        delegate uint256(stor7050.field_0) with:
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
    if arg1 == address(stor10D6):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x735468652063757272656e7420616e64206e65772061646d696e2063616e6e6f74206265207468652073616d6520,
                    mem[210 len 18]
    if arg1 == address(stor54AC.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x2e43616e6e6f742073657420746865206e657741646d696e206f6620612070726f787920746f207468652073616d65206164647265737320,
                    mem[220 len 8]
    address(stor54AC.field_0) = arg1
    Mask(96, 0, stor54AC.field_160) = 0
    emit AdminChanged(address(stor10D6), arg1);
}



}
