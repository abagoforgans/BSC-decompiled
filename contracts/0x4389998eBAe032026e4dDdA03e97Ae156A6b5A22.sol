contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint8 stor1;
mapping of uint8 stor2;
address owner;

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
}

function sub_425c0a9a(?) payable {
    return bool(stor1)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setNftPerAddressLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    stor0 = arg1
}

function setOnlyWhitelisted(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    stor1 = uint8(arg1)
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    stor2[address(arg1)] = 1
    emit AddedToWhitelist(arg1);
}

function removeToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the contract admin owner can call this function'
    stor2[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
}

function sub_cd878d1e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if bool(stor1) == 1:
        if not stor2[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist: User is not whitelisted'
        if arg3 > -arg2 - 1:
            revert with 'NH{q', 17
        if arg3 + arg2 > stor0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelist: Max NFT per address exceeded'
}



}
