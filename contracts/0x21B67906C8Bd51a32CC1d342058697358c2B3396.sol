contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function clone(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, arg1) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    return address(create.new_address)
}

function cloneDeterministic(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    create2 contract with 0 wei
                    salt: arg2
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, arg1) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create2.new_address):
        revert with 0, 'ERC1167: create2 failed'
    return address(create2.new_address)
}



}
