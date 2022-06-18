contract main {




// =====================  Runtime code  =====================


address owner;
uint256 tokenPrice;
uint8 stor2;

function tokenPrice() payable {
    return tokenPrice
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function getTokenPrice() payable {
    if stor2:
        return 66 * 10^6
    return tokenPrice
}

function updateTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    tokenPrice = arg1
}



}
