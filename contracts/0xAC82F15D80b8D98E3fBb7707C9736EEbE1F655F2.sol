contract main {




// =====================  Runtime code  =====================


mapping of address sub_a0998a93;

function sub_a0998a93(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_a0998a93[arg1]
}

function _fallback() payable {
    revert
}

function sub_e16cc71e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if arg3:
        return 1
    if not sub_a0998a93[address(arg1)]:
        return 0
    require ext_code.size(sub_a0998a93[address(arg1)])
    staticcall sub_a0998a93[address(arg1)].0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function sub_44fc96c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not address(arg1):
        revert with 0, 'Lock address can not be zero'
    if not address(arg2):
        revert with 0, 'ERC721 address can not be zero'
    require ext_code.size(address(arg1))
    staticcall address(arg1).isLockManager(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Caller does not have the LockManager role'
    sub_a0998a93[address(arg1)] = address(arg2)
}



}
