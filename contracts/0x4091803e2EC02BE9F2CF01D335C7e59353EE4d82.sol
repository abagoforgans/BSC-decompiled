contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address referrers;
mapping of uint256 referralsCount;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[arg1]
}

function getReferrer(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[address(arg1)]
}

function referralsCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return referralsCount[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(arg2)
    emit OperatorUpdated(arg1, arg2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recordReferral(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    if arg1:
        if arg2:
            if arg1 != arg2:
                if not referrers[address(arg1)]:
                    referrers[address(arg1)] = arg2
                    referralsCount[address(arg2)]++
                    emit ReferralRecorded(arg1, arg2);
}



}
