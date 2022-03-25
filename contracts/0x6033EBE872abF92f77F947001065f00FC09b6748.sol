contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function performCreate(uint256 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    create contract with ('param', 'arg1') wei
                    code: arg2[all]
    if not address(create.new_address):
        revert with 0, 'Could not deploy contract'
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    emit ContractCreation(address rg1):
                          Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                          mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)],
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function performCreate2(uint256 arg1, bytes arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    create2 contract with ('param', 'arg1') wei
                    salt: arg3
                    code: arg2[all]
    if not address(create2.new_address):
        revert with 0, 'Could not deploy contract'
    mem[ceil32(arg2.length) + 128] = address(create2.new_address)
    emit ContractCreation(address rg1):
                          Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                          mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)],
    mem[ceil32(arg2.length) + 128] = address(create2.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}



}
