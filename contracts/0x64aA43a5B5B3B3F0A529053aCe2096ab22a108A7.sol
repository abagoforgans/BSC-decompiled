contract main {




// =====================  Runtime code  =====================


array of address user;
address holderAddress;
address sub_2c99c539Address;
mapping of uint256 sub_1c10bfaa;
mapping of uint256 sub_8b6962b4;
uint256 sub_e90cde12;
uint256 sub_63f5003e;

function sub_1c10bfaa(?) payable {
    require calldata.size - 4 >= 32
    return sub_1c10bfaa[arg1]
}

function sub_2c99c539(?) payable {
    return sub_2c99c539Address
}

function sub_63f5003e(?) payable {
    return sub_63f5003e
}

function sub_6e68948d(?) payable {
    return user.length
}

function sub_8b6962b4(?) payable {
    require calldata.size - 4 >= 32
    return sub_8b6962b4[arg1]
}

function userAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < user.length
    return address(user[arg1])
}

function holder() payable {
    return holderAddress
}

function sub_e90cde12(?) payable {
    return sub_e90cde12
}

function _fallback() payable {
    revert
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    sub_2c99c539Address = arg1
}

function sub_4d3aac03(?) payable {
    require calldata.size - 4 >= 32
    if sub_8b6962b4[address(arg1)] <= 0:
        return sub_63f5003e
    return sub_8b6962b4[address(arg1)]
}

function sub_902e27ac(?) payable {
    require calldata.size - 4 >= 32
    if sub_1c10bfaa[address(arg1)] <= 0:
        return sub_e90cde12
    return sub_1c10bfaa[address(arg1)]
}

function sub_f0168593(?) payable {
    if holderAddress != msg.sender:
        revert with 0, 'forbident'
    user.length = 0
    idx = 0
    while user.length > idx:
        uint256(user[idx]) = 0
        idx = idx + 1
        continue 
}

function sub_fa491d42(?) payable {
    require calldata.size - 4 >= 32
    if holderAddress != msg.sender:
        revert with 0, 'forbident'
    sub_e90cde12 = arg1
    require ext_code.size(sub_2c99c539Address)
    staticcall sub_2c99c539Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_63f5003e = arg1 * 10^ext_call.return_data[31 len 1]
}

function sub_055abb53(?) payable {
    require calldata.size - 4 >= 32
    if holderAddress != msg.sender:
        revert with 0, 'forbident'
    sub_63f5003e = arg1
    require ext_code.size(sub_2c99c539Address)
    staticcall sub_2c99c539Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[31 len 1]
    sub_e90cde12 = arg1 / 10^ext_call.return_data[31 len 1]
}

function sub_988b3b90(?) payable {
    require calldata.size - 4 >= 64
    if holderAddress != msg.sender:
        revert with 0, 'forbident'
    user.length++
    address(user[user.length]) = arg1
    sub_8b6962b4[address(arg1)] = arg2
    require ext_code.size(sub_2c99c539Address)
    staticcall sub_2c99c539Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[31 len 1]
    sub_1c10bfaa[address(arg1)] = arg2 / 10^uint8(ext_call.return_data[0])
}



}
