contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
array of struct sub_82ef1838;
address sub_d876d1b3Address;
address sub_5b571eaeAddress;

function sub_22523a94(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 3
    return bool(stor('array', ('div', 0.03125, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'stor0', 0)))[uint8(arg2)])
}

function sub_5b571eae(?) payable {
    return sub_5b571eaeAddress
}

function sub_82ef1838(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_82ef1838.length
    return sub_82ef1838[arg1].field_0, sub_82ef1838[arg1].field_256
}

function sub_d876d1b3(?) payable {
    return sub_d876d1b3Address
}

function _fallback() payable {
    revert
}

function sub_fd4cb733(?) payable {
    require calldata.size - 4 >= 64
    if arg2:
        if arg2 != 1:
            if arg2 != 2:
                if arg2 != 3:
                    if arg2 != 4:
                        revert with 0, 'params error, need 0, 1, 2, 3, 4'
    require ext_code.size(sub_5b571eaeAddress)
    staticcall sub_5b571eaeAddress.score(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 < sub_82ef1838.length
    if ext_call.return_data[0] < sub_82ef1838[2 * uint8(arg2)].field_256:
        return 0
    require arg2 < 3
    return not bool(stor('array', ('mask_shl', 3, 5, -5, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor0', 0)))[uint8(arg2)])
}

function claim(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1:
        if arg1 != 1:
            if arg1 != 2:
                if arg1 != 3:
                    if arg1 != 4:
                        revert with 0, 'params error, need 0, 1, 2, 3, 4'
        if arg1:
            if arg1 != 1:
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            revert with 0, 'params error, need 0, 1, 2, 3, 4'
    require ext_code.size(sub_5b571eaeAddress)
    staticcall sub_5b571eaeAddress.score(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < sub_82ef1838.length
    if ext_call.return_data[0] < sub_82ef1838[2 * uint8(arg1)].field_256:
        revert with 0, 'does not meet the requirements'
    require arg1 < 3
    if stor('array', ('mask_shl', 3, 5, -5, ('param', 'arg1')), ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor0', 0)))[uint8(arg1)]:
        revert with 0, 'does not meet the requirements'
    require arg1 < sub_82ef1838.length
    require arg1 < 3
    stor0[msg.sender][uint8(arg1) / 32] = stor0[msg.sender][uint8(arg1) / 32] and !(255 * 256^(arg1 % 32)) or 256^(arg1 % 32)
    require ext_code.size(sub_d876d1b3Address)
    call sub_d876d1b3Address.0x731133e9 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), sub_82ef1838[2 * uint8(arg1)].field_0, 1, 128, 0, mem[260]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
