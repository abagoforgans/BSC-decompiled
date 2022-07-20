contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function cloneNewWallet(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    idx = 0
    while idx < arg2:
        mem[116] = stor0
        mem[136] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, stor0, 0x5af43d82803e903d91602b57fd5bf3
        mem[100] = arg1
        require ext_code.size(address(create.new_address))
        call address(create.new_address).init(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = address(create.new_address)
        emit Created(address(create.new_address));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
