contract main {




// =====================  Runtime code  =====================


#
#  - protect(address arg1, address arg2, uint256 arg3)
#
uint8 enableAntiBot;
uint8 sub_e73dd423; offset 8
address tokenAddress; offset 16
uint256 stor0; offset 8
address pairAddress;
address ownerAddress;
mapping of uint8 stor7;

function enableAntiBot() payable {
    return bool(enableAntiBot)
}

function ownerAddress() payable {
    return ownerAddress
}

function tokenAddress() payable {
    return tokenAddress
}

function pairAddress() payable {
    return pairAddress
}

function sub_e73dd423(?) payable {
    return bool(sub_e73dd423)
}

function _fallback() payable {
    revert
}

function isBot(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor7[address(arg1)]) != 1:
        return 0
    return 1
}

function sub_b656ff2c(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'FORBID'
    stor7[address(arg1)] = 1
}

function sub_d1ff75bd(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'FORBID'
    stor7[address(arg1)] = 0
}

function sub_874208af(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'FORBID'
    stor0 = Mask(248, 0, arg1)
}

function sub_a3f5a4bf(?) payable {
    require calldata.size - 4 >= 32
    if ownerAddress != msg.sender:
        revert with 0, 'FORBID'
    enableAntiBot = uint8(arg1)
}

function renounceOwnership() payable {
    if ownerAddress != msg.sender:
        revert with 0, 'FORBID'
    emit OwnershipTransferred(ownerAddress, 0);
    ownerAddress = 0
}

function sub_66dc4596(?) payable {
    require calldata.size - 4 >= 64
    if ownerAddress != msg.sender:
        revert with 0, 'FORBID'
    tokenAddress = arg1
    pairAddress = arg2
}



}
