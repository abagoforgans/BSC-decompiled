contract main {




// =====================  Runtime code  =====================


address _OWNER_;
address _NEW_OWNER_;
address sub_9a07cd82Address;
address _CLONE_FACTORY_Address;
address _DEFAULT_SUPERVISOR_Address;
mapping of address dODO;
array of struct sub_fa20e0d9;

function getDODO(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return dODO[address(arg1)][address(arg2)]
}

function _OWNER_() payable {
    return _OWNER_
}

function _DEFAULT_SUPERVISOR_() payable {
    return _DEFAULT_SUPERVISOR_Address
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function sub_9a07cd82(?) payable {
    return sub_9a07cd82Address
}

function _CLONE_FACTORY_() payable {
    return _CLONE_FACTORY_Address
}

function sub_fa20e0d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fa20e0d9.length
    return sub_fa20e0d9[arg1].field_0
}

function _fallback() payable {
    revert
}

function setDODOLogic(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    sub_9a07cd82Address = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0, 'INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function setCloneFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    _CLONE_FACTORY_Address = arg1
}

function setDefaultSupervisor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    _DEFAULT_SUPERVISOR_Address = arg1
}

function isDODORegistered(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if dODO[address(arg1)][address(arg2)]:
        return 1
    if dODO[address(arg2)][address(arg1)]:
        return 1
    else:
        return 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function addDODO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    require ext_code.size(arg1)
    call arg1.0x4a248d2a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.0xd4b97046 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])]:
        revert with 0, 'DODO_REGISTERED'
    if dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])]:
        revert with 0, 'DODO_REGISTERED'
    dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])] = arg1
    sub_fa20e0d9.length++
    sub_fa20e0d9[sub_fa20e0d9.length].field_0 = arg1
}

function getDODOs() payable {
    mem[64] = (32 * sub_fa20e0d9.length) + 128
    mem[96] = sub_fa20e0d9.length
    if not sub_fa20e0d9.length:
        mem[(32 * sub_fa20e0d9.length) + 128] = 32
        mem[(32 * sub_fa20e0d9.length) + 160] = sub_fa20e0d9.length
        idx = 0
        s = (32 * sub_fa20e0d9.length) + 192
        t = 128
        while idx < sub_fa20e0d9.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_fa20e0d9.length) + 128
           len (96 * sub_fa20e0d9.length) + 64
    mem[128] = address(sub_fa20e0d9.field_0)
    idx = 128
    s = 0
    while (32 * sub_fa20e0d9.length) + 96 > idx:
        mem[idx + 32] = sub_fa20e0d9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_fa20e0d9.length) + 128] = 32
    mem[(32 * sub_fa20e0d9.length) + 160] = sub_fa20e0d9.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < sub_fa20e0d9.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_fa20e0d9.length) + -mem[64] + 192
}

function removeDODO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    require ext_code.size(arg1)
    call arg1.0x4a248d2a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.0xd4b97046 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])]:
        if not dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])]:
            revert with 0, 'DODO_NOT_REGISTERED'
    dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])] = 0
    idx = 0
    while idx <= sub_fa20e0d9.length - 1:
        require idx < sub_fa20e0d9.length
        mem[0] = 6
        if sub_fa20e0d9[idx].field_0 != arg1:
            idx = idx + 1
            continue 
        require sub_fa20e0d9.length - 1 < sub_fa20e0d9.length
        require idx < sub_fa20e0d9.length
        sub_fa20e0d9[idx].field_0 = sub_fa20e0d9[sub_fa20e0d9.length].field_0
        require sub_fa20e0d9.length
        sub_fa20e0d9[sub_fa20e0d9.length].field_0 = 0
        sub_fa20e0d9.length--
}

function breedDODO(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    if dODO[address(arg2)][address(arg3)]:
        revert with 0, 'DODO_REGISTERED'
    if dODO[address(arg3)][address(arg2)]:
        revert with 0, 'DODO_REGISTERED'
    require ext_code.size(_CLONE_FACTORY_Address)
    call _CLONE_FACTORY_Address.0x8124b78e with:
         gas gas_remaining wei
        args sub_9a07cd82Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xf00f9a09 with:
         gas gas_remaining wei
        args _OWNER_, _DEFAULT_SUPERVISOR_Address, address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if _OWNER_ != msg.sender:
        revert with 0, 'NOT_OWNER'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x4a248d2a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xd4b97046 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])]:
        revert with 0, 'DODO_REGISTERED'
    if dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])]:
        revert with 0, 'DODO_REGISTERED'
    dODO[address(ext_call.return_data[0])][address(ext_call.return_data[0])] = address(ext_call.return_data[0])
    sub_fa20e0d9.length++
    sub_fa20e0d9[sub_fa20e0d9.length].field_0 = address(ext_call.return_data[0])
    emit DODOBirth(address(ext_call.return_data[0]), address(arg2), arg3);
    return address(ext_call.return_data[0])
}



}
