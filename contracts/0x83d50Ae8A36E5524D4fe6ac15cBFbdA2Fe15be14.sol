contract main {




// =====================  Runtime code  =====================


address owner;
address sub_57a2fe93Address;

function sub_57a2fe93(?) payable {
    return sub_57a2fe93Address
}

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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[3917 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f3b74ac5(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96 len 2483] = code.data[1434 len 2483]
    mem[2579] = sub_57a2fe93Address
    mem[2611] = arg7
    mem[2643] = 96
    mem[2675] = 0
    create contract with 0 wei
                    code: code.data[1434 len 2483], sub_57a2fe93Address, address(arg7), 96, 0, mem[2707]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 324] = arg2.length
    mem[ceil32(arg1.length) + 356 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 356] = 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(string rg1, string rg2, uint8 rg3, uint256 rg4, bool rg5, address rg6) with:
         gas gas_remaining wei
        args 0, 192, ceil32(arg1.length) + 224, arg3 << 248, arg4, arg5, address(arg6), arg1.length, arg1[all], 0, mem[arg1.length + 356 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenCreated(address(create.new_address));
    return address(create.new_address)
}



}
