contract main {




// =====================  Runtime code  =====================


address owner;
uint256 last_completed_migration;

function last_completed_migration() payable {
    return last_completed_migration
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setCompleted(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        last_completed_migration = arg1
}



}
