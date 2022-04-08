contract main {




// =====================  Runtime code  =====================


const proxyCreationCode = Array(len=487, data=code.data[3246 len 487], mem[615 len 25] >> 3584, mem[633 len 7])

const proxyRuntimeCode = Array(len=170, data=code.data[3733 len 170], mem[298 len 22] >> 1024, mem[374 len 10])


function _fallback() payable {
    revert
}

function calculateCreateProxyWithNonceAddress(address arg1, bytes arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160] = sha3(arg2[all])
    mem[ceil32(arg2.length) + 192] = arg3
    mem[ceil32(arg2.length) + 128] = 64
    create2 contract with 0 wei
                    salt: sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                    code: code.data[3246 len 480], mem[floor32(ceil32(arg2.length) + 774) + 512 len 7], address(arg1)
    if not address(create2.new_address):
        revert with 0, 'Create2 call failed'
    revert with 0, 32, 20, address(address(create2.new_address), 0, 0)
}

function createProxyWithNonce(address arg1, bytes arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160] = sha3(arg2[all])
    mem[ceil32(arg2.length) + 192] = arg3
    mem[ceil32(arg2.length) + 128] = 64
    create2 contract with 0 wei
                    salt: sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
                    code: code.data[3246 len 480], mem[floor32(ceil32(arg2.length) + 774) + 512 len 7], address(arg1)
    if not address(create2.new_address):
        revert with 0, 'Create2 call failed'
    if arg2.length > 0:
        call create2.new_address with:
             gas gas_remaining wei
            args arg2[all]
        require ext_call.success
    emit ProxyCreation(address(create2.new_address));
    return address(create2.new_address)
}

function createProxy(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128 len 487] = code.data[3246 len 487]
    create contract with 0 wei
                    code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 3278 len -arg2.length + ceil32(arg2.length) + 455], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2.length > 0:
        call create.new_address with:
             gas gas_remaining wei
            args arg2[all]
        require ext_call.success
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    emit ProxyCreation(address rg1):
                       Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                       mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)],
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function createProxyWithCallback(address arg1, bytes arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 160] = arg3
    mem[ceil32(arg2.length) + 192] = address(arg4)
    mem[ceil32(arg2.length) + 128] = 52
    create2 contract with 0 wei
                    salt: sha3(sha3(arg2[all]), sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]))
                    code: code.data[3246 len 480], mem[floor32(ceil32(arg2.length) + 858) + 512 len 7], address(arg1)
    if not address(create2.new_address):
        revert with 0, 'Create2 call failed'
    if arg2.length > 0:
        call create2.new_address with:
             gas gas_remaining wei
            args arg2[all]
        require ext_call.success
    emit ProxyCreation(address(create2.new_address));
    if arg4:
        require ext_code.size(arg4)
        call arg4.0x1e52b518 with:
             gas gas_remaining wei
            args address(create2.new_address), address(arg1), Array(len=arg2.length, data=arg2[all]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}



}
