contract main {




// =====================  Runtime code  =====================


address owner;
address operatorManagerAddress;
address cryptoAlpacaAddress;

function cryptoAlpaca() payable {
    return cryptoAlpacaAddress
}

function operatorManager() payable {
    return operatorManagerAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6638 len 32]
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6638 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[6600 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6638 len 32]
    require ext_code.size(arg1)
    call arg1.withdraw(address rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setPayment(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6638 len 32]
    require ext_code.size(arg1)
    call arg1.setPayment(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a88c2717(?) payable {
    require calldata.size - 4 >= 608
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[6638 len 32]
    create contract with 0 wei
                    code: code.data[1734 len 4866], operatorManagerAddress, cryptoAlpacaAddress, arg1, call.data[36 len 192], call.data[228 len 192], call.data[420 len 192]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
