contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address coreAddress; offset 8
mapping of uint256 sub_ffceaa96;

function paused() payable {
    return bool(stor0)
}

function core() payable {
    return coreAddress
}

function sub_ffceaa96(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_ffceaa96[arg1][arg2]
}

function _fallback() payable {
    revert
}

function getAdmin() payable {
    staticcall coreAddress.0x6e9960c3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function pause() payable {
    staticcall coreAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Restricted to Admin.'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    staticcall coreAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Restricted to Admin.'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function setCore(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall coreAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Restricted to Admin.'
    coreAddress = arg1
    emit CoreUpdate(arg1);
}

function sub_2ff024a8(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    staticcall coreAddress.isManager(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        staticcall coreAddress.isAdmin(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Restricted to Manager.'
    if arg3 > 5:
        revert with 0, 'TokenGrade::setTokenGrade: The grade not exist'
    if arg3 < 1:
        revert with 0, 'TokenGrade::setTokenGrade: The grade not exist'
    sub_ffceaa96[address(arg1)][arg2] = arg3
}

function sub_1211fb26(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(32 * ('cd', 36).length) + 101] = msg.sender
    staticcall coreAddress.isManager(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 101] = msg.sender
        staticcall coreAddress.isAdmin(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Restricted to Manager.'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = sha3(address(cd[4]), 1)
        sub_ffceaa96[address(cd[4])][mem[(32 * idx) + 128]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
