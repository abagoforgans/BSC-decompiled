contract main {




// =====================  Runtime code  =====================


mapping of address referrers;
mapping of uint256 referredCount;
address owner;
address stor3;
mapping of uint8 stor4;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function referredCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referredCount[arg1]
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[arg1]
}

function getReferrer(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[address(arg1)]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function acceptNextOwner() payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e43616e206f6e6c792061636365707420707265617070726f766564206e6577206f776e6572,
                    mem[202 len 26]
    owner = stor3
}

function setAdminStatus(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    stor4[address(arg1)] = uint8(arg2)
}

function approveNextOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    if owner == arg1:
        revert with 0, 'Cannot approve current owner.'
    stor3 = arg1
}

function setReferrer(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor4[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f6e6c7941646d696e206d6574686f64732063616c6c6564206279206e6f6e2d61646d696e,
                    mem[202 len 26]
    if not referrers[address(arg1)]:
        if arg2:
            referrers[address(arg1)] = arg2
            referredCount[address(arg2)]++
            emit Referral(arg2, arg1);
}

function emergencyBEP20Drain(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f6e6c794f776e6572206d6574686f64732063616c6c6564206279206e6f6e2d6f776e6572,
                    mem[202 len 26]
    emit EmergencyBEP20Drain(address(arg1), owner, arg2);
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
