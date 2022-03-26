contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 sub_1fad6d6e;
mapping of uint8 stor2;
address registryAddress;

function sub_1fad6d6e(?) payable {
    require calldata.size - 4 >= 64
    return sub_1fad6d6e[address(arg1)][address(arg2)]
}

function sub_38c68d8c(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function registry() payable {
    return registryAddress
}

function balanceOf(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return balanceOf[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function issueToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor2[address(msg.sender)]:
        revert with 0, 'already issued'
    stor2[address(msg.sender)] = 1
    emit 0x669e17a9: msg.sender
    balanceOf[address(msg.sender)][address(arg1)] = 10^18
    emit Transfer(10^18, msg.sender, msg.sender, arg1);
}

function lockToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not balanceOf[address(arg1)][address(msg.sender)]:
        revert with 0, 'no token owned'
    balanceOf[address(arg1)][address(msg.sender)] = 0
    sub_1fad6d6e[address(arg1)][address(msg.sender)] += balanceOf[address(arg1)][address(msg.sender)]
    emit Lock(balanceOf[address(arg1)][address(msg.sender)], arg1, msg.sender);
}

function transferToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 <= 0:
        revert with 0, 'zero amount'
    if balanceOf[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'not enough balance'
    balanceOf[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)][address(arg2)] += arg3
    require ext_code.size(registryAddress)
    call registryAddress.0xe909ebfa with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, arg1, msg.sender, arg2);
}



}
