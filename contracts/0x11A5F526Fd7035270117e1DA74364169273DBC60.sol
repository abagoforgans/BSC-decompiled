contract main {




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function getDeploymentAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return uint64(sha3(0, this.address, sha3(arg1, arg2), stor0))
}

function deploy(uint256 arg1, address arg2, address arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    create2 contract with 0 wei
                    salt: sha3(arg1, msg.sender)
                    code: code.data[3980 len 3373]
    require ext_code.size(create2.new_address)
    emit ProxyCreated(address(create2.new_address));
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).initialize(address rg1, address rg2, bytes rg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}

function getSigner(uint256 arg1, address arg2, address arg3, bytes arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg4.length + 92
    if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] == 65:
        if mem[ceil32(arg4.length) + 192] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            return 0
        else:
            return 0
    else:
        return 0
}

function deploySigned(uint256 arg1, address arg2, address arg3, bytes arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg4.length) + arg5.length + 160] = 0
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg4.length + 92
    if Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] != 65:
        revert with 0, 'Invalid signature'
    else:
        if mem[ceil32(arg4.length) + 192] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'Invalid signature'
        else:
            revert with 0, 'Invalid signature'
}

function deployMinimal(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 148] = address(arg1)
    mem[ceil32(arg2.length) + 168] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
    create contract with 0 wei
                    code: 0, arg1, 0x5af43d82803e903d91602b57fd5bf3
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    emit ProxyCreated(0);
    if arg2.length <= 0:
        return 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    call address(create.new_address) with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    require ext_call.success
    if not return_data.size:
        return 0
    return address(create.new_address)
}



}
