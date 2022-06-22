contract main {




// =====================  Runtime code  =====================


#
#  - sub_76d6fe16(?)
#  - sub_98b629c0(?)
#
const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


address owner;
address stor1;
address stor2;
uint64 stor3;
uint128 stor3; offset 64
address stor3;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6ac4b7da(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint64(stor3.field_0) = arg1
    Mask(96, 0, stor3.field_64) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_98b62d30(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(arg2 - stor1))
    staticcall address(arg2 - stor1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1 - stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1 - stor1))
    staticcall address(arg1 - stor1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= ext_call.return_data[50 len 14]:
        revert with 0, ',-'
    if ext_call.return_data[0] - ext_call.return_data[50 len 14] <= 0:
        revert with 0, '-,'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, '-,'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, '-,'
    if (9975 * ext_call.return_data[0]) - (9975 * ext_call.return_data[50 len 14]) / 9975 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[18 len 14]:
        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (25 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (25 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0])
        call address(arg1 - stor1).0x80 with:
             gas gas_remaining wei
            args 0, mem[484 len 4]
    else:
        require ext_call.return_data[18 len 14]
        if (9975 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (9975 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (9975 * ext_call.return_data[0]) - (9975 * ext_call.return_data[50 len 14]):
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * ext_call.return_data[50 len 14] / 10000 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (25 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (25 * ext_call.return_data[50 len 14]) + (9975 * ext_call.return_data[0])
        call address(arg1 - stor1).0x80 with:
             gas gas_remaining wei
            args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9975 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (25 * Mask(112, 0, ext_call.return_data[32])) + (9975 * ext_call.return_data[0]), 0, address(stor3.field_0), 128, 0) << 1024, mem[484 len 4]
    if not ext_call.success:
        revert with 0, ',-'
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c360104f(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(arg2 - stor2))
    staticcall address(arg2 - stor2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1 - stor2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1 - stor2))
    staticcall address(arg1 - stor2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= ext_call.return_data[18 len 14]:
        revert with 0, ',-'
    if ext_call.return_data[0] - ext_call.return_data[18 len 14] <= 0:
        revert with 0, '-,'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, '-,'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, '-,'
    if (998 * ext_call.return_data[0]) - (998 * ext_call.return_data[18 len 14]) / 998 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[50 len 14]:
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
        call address(arg1 - stor2).0x80 with:
             gas gas_remaining wei
            args 0, mem[484 len 4]
    else:
        require ext_call.return_data[50 len 14]
        if (998 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (998 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (998 * ext_call.return_data[0]) - (998 * ext_call.return_data[18 len 14]):
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0])
        call address(arg1 - stor2).0x80 with:
             gas gas_remaining wei
            args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0, 0, (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (998 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (2 * Mask(112, 0, ext_call.return_data[0])) + (998 * ext_call.return_data[0]), address(stor3.field_0), 128, 0) << 1024, mem[484 len 4]
    if not ext_call.success:
        revert with 0, ',-'
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_20a38fce(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(arg2 - stor2))
    staticcall address(arg2 - stor2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1 - stor2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1 - stor2))
    staticcall address(arg1 - stor2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= ext_call.return_data[50 len 14]:
        revert with 0, ',-'
    if ext_call.return_data[0] - ext_call.return_data[50 len 14] <= 0:
        revert with 0, '-,'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, '-,'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, '-,'
    if (998 * ext_call.return_data[0]) - (998 * ext_call.return_data[50 len 14]) / 998 != ext_call.return_data[0] - ext_call.return_data[50 len 14]:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[18 len 14]:
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
        call address(arg1 - stor2).0x80 with:
             gas gas_remaining wei
            args 0, mem[484 len 4]
    else:
        require ext_call.return_data[18 len 14]
        if (998 * ext_call.return_data[0] * ext_call.return_data[18 len 14]) - (998 * ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) / ext_call.return_data[18 len 14] != (998 * ext_call.return_data[0]) - (998 * ext_call.return_data[50 len 14]):
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0])
        call address(arg1 - stor2).0x80 with:
             gas gas_remaining wei
            args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), (998 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (998 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (2 * Mask(112, 0, ext_call.return_data[32])) + (998 * ext_call.return_data[0]), 0, address(stor3.field_0), 128, 0) << 1024, mem[484 len 4]
    if not ext_call.success:
        revert with 0, ',-'
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e1788bcc(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(arg2 - stor1))
    staticcall address(arg2 - stor1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1 - stor1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1 - stor1))
    staticcall address(arg1 - stor1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= ext_call.return_data[18 len 14]:
        revert with 0, ',-'
    if ext_call.return_data[0] - ext_call.return_data[18 len 14] <= 0:
        revert with 0, '-,'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, '-,'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, '-,'
    if (9975 * ext_call.return_data[0]) - (9975 * ext_call.return_data[18 len 14]) / 9975 != ext_call.return_data[0] - ext_call.return_data[18 len 14]:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[50 len 14]:
        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (25 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (25 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0])
        call address(arg1 - stor1).0x80 with:
             gas gas_remaining wei
            args 0, mem[484 len 4]
    else:
        require ext_call.return_data[50 len 14]
        if (9975 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) - (9975 * ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) / ext_call.return_data[50 len 14] != (9975 * ext_call.return_data[0]) - (9975 * ext_call.return_data[18 len 14]):
            revert with 0, 'ds-math-mul-overflow'
        if 10000 * ext_call.return_data[18 len 14] / 10000 != ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (25 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0]) < 10000 * ext_call.return_data[18 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (25 * ext_call.return_data[18 len 14]) + (9975 * ext_call.return_data[0])
        call address(arg1 - stor1).0x80 with:
             gas gas_remaining wei
            args Mask(1248, -1024, swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4), 0, 0, (9975 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9975 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (25 * Mask(112, 0, ext_call.return_data[0])) + (9975 * ext_call.return_data[0]), address(stor3.field_0), 128, 0) << 1024, mem[484 len 4]
    if not ext_call.success:
        revert with 0, ',-'
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
