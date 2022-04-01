contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function findCreate2Address(bytes32 arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    if ext_code.size(sha3(0, this.address, arg1, arg2)) <= 0:
        return address(sha3(0, this.address, arg1, arg2))
    else:
        return 0
}

function sub_37fd8aef(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    create2 contract with callvalue wei
                    salt: arg1
                    code: arg2[all]
    if not address(create2.new_address):
        revert with 0, 'Failed to deploy contract using provided salt and initialization code.'
    mem[ceil32(arg2.length) + 128] = address(create2.new_address)
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}



}
