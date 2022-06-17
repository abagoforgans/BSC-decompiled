contract main {




// =====================  Runtime code  =====================


address stor3608;
uint256 stor3608;
address storFEB5;
uint256 storFEB5;

function _fallback() payable {
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function admin() {
    if msg.sender == address(storFEB5):
        return address(storFEB5)
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == address(storFEB5):
        return address(stor3608)
    if msg.sender == address(storFEB5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
    delegate uint256(stor3608) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'UpgradeableProxy: new implementation is not a contract'
    uint256(stor3608) = arg1
    emit Upgraded(arg1);
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TransparentUpgradeableProxy: new admin is the zero address'
    emit AdminChanged(address(storFEB5), arg1);
    uint256(storFEB5) = arg1
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if address(storFEB5) != msg.sender:
        if msg.sender == address(storFEB5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'TransparentUpgradeableProxy: admin cannot fallback to proxy target'
        delegate uint256(stor3608) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'UpgradeableProxy: new implementation is not a contract'
    uint256(stor3608) = arg1
    emit Upgraded(arg1);
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = 39
    mem[ceil32(arg2.length) + 160 len 39] = 0x3416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c65
    mem[ceil32(arg2.length) + 224 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(arg2.length) + 224] = 0
    delegate arg1.mem[ceil32(arg2.length) + 224 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 228 len arg2.length - 4]
    if not return_data.size:
        if delegate.return_code:
        if arg2.length:
            revert with arg2[all]
        mem[ceil32(arg2.length) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg2.length) + 228] = 32
        mem[ceil32(arg2.length) + 260] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + 292 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
            mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + 292] = 0
        revert with memory
          from ceil32(arg2.length) + 224
           len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 68
    mem[ceil32(arg2.length) + 224] = return_data.size
    mem[ceil32(arg2.length) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if delegate.return_code:
    if return_data.size:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 225] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 229] = 32
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 261] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(return_data.size) + 293 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + ceil32(arg2.length) + ceil32(return_data.size) + 293] = 0
    revert with memory
      from ceil32(arg2.length) + ceil32(return_data.size) + 225
       len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 68
}



}
