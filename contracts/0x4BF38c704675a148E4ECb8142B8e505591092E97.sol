contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_13e367bc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[4017 len 8699]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2242ae19: address(create.new_address)
    return address(create.new_address)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[21682 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_4625ca21(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    create contract with 0 wei
                    code: code.data[12716 len 8966]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2242ae19: address(create.new_address)
    return address(create.new_address)
}

function sub_64ac79c7(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.initialize(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function airdrop(address arg1, uint256 arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        mem[(32 * arg3.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg3.length) + 164] = arg2
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[(32 * arg3.length) + 132], arg2
        mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_e4a2b8c1(?) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.initialize(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    s = arg4
    t = 0
    while idx < arg6:
        idx = idx + 1
        s = 110 * s / 100
        t = t + s
        continue 
    require ext_code.size(arg2)
    call arg2.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), t * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6 * arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
