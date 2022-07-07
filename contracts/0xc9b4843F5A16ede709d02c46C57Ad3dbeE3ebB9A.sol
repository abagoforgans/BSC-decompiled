contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
address sub_0c344f9eAddress;

function sub_0c344f9e(?) payable {
    return sub_0c344f9eAddress
}

function _fallback() payable {
    revert
}

function updateGateway(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the dao can execute this function'
    stor2 = arg1
}

function sub_1c41162c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the dao can execute this function'
    stor1 = address(arg1)
}

function sub_2065f2c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the dao can execute this function'
    address(stor0.field_0) = address(arg1)
    uint8(stor0.field_160) = 1
}

function sub_ba9ddfbc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the dao can execute this function'
    address(stor0.field_0) = address(arg1)
    sub_0c344f9eAddress = address(arg1)
}

function sub_5fa420a9(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not uint8(stor0.field_160):
        revert with 0, 'Bridge has not been initialized'
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only gateway can execute this function'
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xba3809a2: arg2, block.timestamp, address(arg1), arg3
}

function sub_7a062791(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if not uint8(stor0.field_160):
        revert with 0, 'Bridge has not been initialized'
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only gateway can execute this function'
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8dc81f24: arg2, block.timestamp, address(arg1), arg3
}



}
