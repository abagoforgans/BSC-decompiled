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
    return address(create.new_address)
}



}
