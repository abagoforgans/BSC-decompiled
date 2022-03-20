contract main {




// =====================  Runtime code  =====================


mapping of address pair;

function getPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return pair[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_56ac12f5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160] = address(arg2)
    mem[ceil32(arg1.length) + 180] = address(arg3)
    mem[ceil32(arg1.length) + 128] = 40
    create2 contract with 0 wei
                    salt: sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
                    code: arg1[all]
    pair[address(arg2)][address(arg3)] = address(create2.new_address)
    return address(create2.new_address)
}



}
