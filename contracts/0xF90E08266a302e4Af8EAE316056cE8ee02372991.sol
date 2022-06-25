contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
mapping of uint256 votes;

function active() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function voters(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function votes(address arg1) payable {
    require calldata.size - 4 >= 32
    return votes[arg1]
}

function _fallback() payable {
    revert
}

function addVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    stor1[address(arg1)] = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function flipActive() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not bool(uint8(stor0.field_160)))
}

function vote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_160):
        revert with 0, 'Whitelist must be active'
    if votes[address(msg.sender)]:
        revert with 0, 'Already voted'
    votes[address(msg.sender)] = arg1
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



}
