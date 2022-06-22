contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint16 stor2;
uint16 stor2; offset 16
uint256 stor3;
address stor4;
address stor3608;

function _fallback() payable {
    revert
}

function setup(address arg1, uint16 arg2, address arg3, uint16 arg4, bytes32 arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg6 == arg6
    require arg7 == arg7
    stor0 = arg3
    uint16(stor2.field_0) = arg2
    uint16(stor2.field_16) = arg4
    stor3 = arg5
    stor1 = arg6
    stor4 = arg7
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1967: new implementation is not a contract'
    stor3608 = arg1
    emit Upgraded(arg1);
}



}
