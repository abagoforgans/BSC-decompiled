contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
address tokenAddress;
address walletAddress;
uint256 sub_99a202da;
uint256 sub_1f20b646;
address owner;

function sub_1f20b646(?) payable {
    return sub_1f20b646
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function wallet() payable {
    return walletAddress
}

function owner() payable {
    return owner
}

function sub_99a202da(?) payable {
    return sub_99a202da
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_7052d8c9(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_1f20b646 = arg1
}

function sub_898a95f9(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_99a202da = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenAddress = arg1
}

function setWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    walletAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_99a202da * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c75a0103(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, walletAddress, sub_1f20b646 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
