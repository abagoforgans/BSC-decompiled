contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 requsestId;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of address requestedBy;
mapping of address requestedToken;
mapping of address sub_b322369a;

function requsestId() payable {
    return requsestId
}

function requestFullFilled(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function requestedBy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return requestedBy[arg1]
}

function isAllowedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
}

function requestedToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return requestedToken[arg1]
}

function sub_b322369a(?) payable {
    require calldata.size - 4 >= 32
    return sub_b322369a[arg1]
}

function newOwner() payable {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() payable {
    if newOwner != msg.sender:
        revert with 0, 'ERR_ONLY_NEW_OWNER'
    owner = newOwner
    emit OwnershipTransferred(owner, newOwner);
    newOwner = 0
    return 1
}

function changeAllowedAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ERR_AUTHORIZED_ADDRESS_ONLY'
    stor3[address(arg1)] = uint8(arg2)
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERR_AUTHORIZED_ADDRESS_ONLY'
    if not arg1:
        revert with 0, 'ERR_ZERO_ADDRESS'
    newOwner = arg1
}

function getBalance(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    requsestId++
    requestedBy[stor2] = msg.sender
    sub_b322369a[stor2] = arg3
    requestedToken[stor2] = arg2
    emit BalanceRequested(requsestId, arg1, address(arg2), arg3);
    return requsestId
}

function oracleCallback(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'ERR_AUTHORIZED_ADDRESS_ONLY'
    if stor4[arg1]:
        revert with 0, 'ERR_REQUESTED_IS_FULLFILLED'
    require ext_code.size(requestedBy[stor2])
    call requestedBy[stor2].0x6e0ee4aa with:
         gas gas_remaining wei
        args requsestId, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x50260174: requsestId, requestedToken[arg1], sub_b322369a[arg1], arg2
    stor4[arg1] = 1
    return 1
}



}
