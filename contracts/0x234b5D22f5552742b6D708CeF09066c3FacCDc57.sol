contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address controllerAddress;

function governance() payable {
    return governanceAddress
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == controllerAddress)
}

function isGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == governanceAddress)
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x796e657720636f6e74726f6c6c65722073686f756c646e277420626520656d7074,
                    mem[197 len 31]
    controllerAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe6e657720676f7665726e616e63652073686f756c646e277420626520656d7074,
                    mem[197 len 31]
    governanceAddress = arg1
}



}
