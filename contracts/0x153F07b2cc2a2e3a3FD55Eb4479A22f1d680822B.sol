contract main {




// =====================  Runtime code  =====================


mapping of address referrer;
mapping of uint256 score;
mapping of uint8 stor2;

function referrer(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrer[arg1]
}

function admin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function score(address arg1) payable {
    require calldata.size - 4 >= 32
    return score[arg1]
}

function _fallback() payable {
    revert
}

function set_admin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'You 're not admin'
    stor2[address(arg1)] = 1
}

function add_score(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'You 're not admin'
    score[stor0[tx.origin]] += arg1
    emit ScoreAdded(arg1, tx.origin, referrer[tx.origin]);
}

function set_referrer(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2[msg.sender]:
        revert with 0, 'You 're not admin'
    if not referrer[tx.origin]:
        referrer[tx.origin] = arg1
        emit ReferrerSet(tx.origin, arg1);
}



}
