contract main {




// =====================  Runtime code  =====================


uint256 sub_ed16eb05;
address OWNER_ADDRESS;
address sub_60aec0f0Address;
address sub_5234e2dcAddress;
address sub_4efeb558Address;
address POOL_ADDRESS;
uint256 contractCodeHash;
mapping of address users;
mapping of uint256 userIds;
mapping of address user;

function OWNER_ADDRESS() payable {
    return OWNER_ADDRESS
}

function userIds(address arg1) payable {
    require calldata.size - 4 >= 32
    return userIds[arg1]
}

function sub_4efeb558(?) payable {
    return sub_4efeb558Address
}

function userAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return user[arg1]
}

function sub_5234e2dc(?) payable {
    return sub_5234e2dcAddress
}

function sub_60aec0f0(?) payable {
    return sub_60aec0f0Address
}

function contractCodeHash() payable {
    return contractCodeHash
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    return users[arg1]
}

function sub_ed16eb05(?) payable {
    return sub_ed16eb05
}

function POOL_ADDRESS() payable {
    return POOL_ADDRESS
}

function _fallback() payable {
    revert
}

function join() payable {
    if sub_ed16eb05 > 0:
        if users[address(msg.sender)]:
            revert with 0, 'CROSSFIN MANAGER: USER_EXIST'
    create contract with 0 wei
                    code: code.data[2454 len 20189], sub_60aec0f0Address, sub_5234e2dcAddress, sub_4efeb558Address, msg.sender, OWNER_ADDRESS, POOL_ADDRESS
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    users[address(msg.sender)] = address(create.new_address)
    userIds[address(msg.sender)] = sub_ed16eb05
    user[stor0] = msg.sender
    sub_ed16eb05++
    return address(create.new_address)
}



}
