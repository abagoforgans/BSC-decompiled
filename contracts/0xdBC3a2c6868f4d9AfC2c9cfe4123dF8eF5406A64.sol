contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_97cf87a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (ext_code.size(address(arg1)) > 0)
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ext_code.hash(arg1):
        return not not ext_code.hash(arg1)
    return ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470
}

function sub_6a2cbda6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if ext_code.size(address(arg1)) <= 0:
        return (ext_code.size(address(arg1)) > 0)
    if not ext_code.hash(arg1):
        return not not ext_code.hash(arg1)
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        return ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470
    if ext_code.size(address(arg2)) <= 0:
        return (ext_code.size(address(arg2)) > 0)
    if not ext_code.hash(arg2):
        return not not ext_code.hash(arg2)
    return ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470
}



}
