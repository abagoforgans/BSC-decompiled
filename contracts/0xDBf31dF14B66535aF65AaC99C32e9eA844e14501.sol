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

function initialize(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require not address(stor3608.field_0)
    mem[ceil32(arg2.length) + 128] = 'eip1967.proxy.implementation'
    require sha3(Mask(224, -(8 * ceil32(arg2.length) + -arg2.length + 28) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 28) + 256) - 1 == 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc
    if not ext_code.size(arg1):
        revert with 0, 
                    32,
                    59,
                    0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[ceil32(arg2.length) + 255 len 5]
    address(stor3608.field_0) = arg1
    Mask(96, 0, stor3608.field_160) = 0
    if arg2.length:
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
        delegate arg1 with:
           funct (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
        require delegate.return_code
}

function initialize(address arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require not address(stor3608.field_0)
    mem[ceil32(arg3.length) + 128] = 'eip1967.proxy.implementation'
    require sha3(Mask(224, -(8 * ceil32(arg3.length) + -arg3.length + 28) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 28) + 256) - 1 == 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc
    if not ext_code.size(arg1):
        revert with 0, 
                    32,
                    59,
                    0x7343616e6e6f742073657420612070726f787920696d706c656d656e746174696f6e20746f2061206e6f6e2d636f6e747261637420616464726573,
                    mem[ceil32(arg3.length) + 255 len 5]
    address(stor3608.field_0) = arg1
    Mask(96, 0, stor3608.field_160) = 0
    if not arg3.length:
        require sha3(Mask(152, -(8 * ceil32(arg3.length) + -arg3.length + 19) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 19) + 256) - 1 == 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103
    else:
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        delegate arg1 with:
           funct (Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256)
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
        require delegate.return_code
        if not return_data.size:
            require sha3(Mask(152, -(8 * ceil32(arg3.length) + -arg3.length + 19) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 19) + 256) - 1 == 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103
        else:
            require sha3(0x656970313936372e70726f78792e61646d696e) - 1 == 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103
    address(storB531.field_0) = arg2
    Mask(96, 0, storB531.field_160) = 0
}



}
