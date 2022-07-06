contract main {




// =====================  Runtime code  =====================


const getModuleInterfacesVersion = 1, 0, 0


address owner;
address tokenImageAddress;

function owner() payable {
    return owner
}

function tokenImage() payable {
    return tokenImageAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function setTokenImage(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470
    require ext_code.hash(arg1)
    tokenImageAddress = arg1
}

function deploy(string arg1, string arg2, uint8 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 1820] = arg2.length
    mem[ceil32(arg1.length) + 1852 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg1.length) + 1852] = 0
    create contract with 0 wei
                    code: code.data[941 len 1500], tokenImageAddress, 192, ceil32(arg1.length) + 224, arg3 << 248, arg4, address(msg.sender), arg1.length, arg1[all], 0, mem[arg1.length + 1852 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
