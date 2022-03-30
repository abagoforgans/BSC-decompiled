contract main {




// =====================  Runtime code  =====================


address owner;
uint256 lastCompletedMigration;

function owner() payable {
    return owner
}

function lastCompletedMigration() payable {
    return lastCompletedMigration
}

function _fallback() payable {
    revert
}

function setCompleted(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        lastCompletedMigration = arg1
}

function upgrade(address arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        require ext_code.size(arg1)
        call arg1.0xfdacd576 with:
             gas gas_remaining wei
            args lastCompletedMigration
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
