contract main {




// =====================  Runtime code  =====================


address minterAddress;
mapping of uint256 balances;

function minter() {
    return minterAddress
}

function balances(address arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == minterAddress
    require arg2 < 0x9f4f2726179a224501d762422c946590d91000000000000000
    balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > balances[msg.sender]:
        revert with 0, 'Insufficient balance.'
    balances[msg.sender] -= arg2
    balances[arg1] += arg2
    emit Sent(msg.sender, address(arg1), arg2);
}



}
