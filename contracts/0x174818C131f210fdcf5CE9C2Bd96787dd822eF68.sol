contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address oracleAddress;
address rewardsContractAddress;
address tokenAddress;
address sub_c0be1f72Address;
address sub_41b64452Address;
uint256 sub_d7c31cd2;
uint256 sub_8f9318fc;

function rewardsContract() payable {
    return rewardsContractAddress
}

function sub_41b64452(?) payable {
    return sub_41b64452Address
}

function oracle() payable {
    return oracleAddress
}

function sub_8f9318fc(?) payable {
    return sub_8f9318fc
}

function isSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function sub_b837b358(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function sub_c0be1f72(?) payable {
    return sub_c0be1f72Address
}

function sub_d7c31cd2(?) payable {
    return sub_d7c31cd2
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_101dbe55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[address(msg.sender)]
    sub_8f9318fc = arg1
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[address(msg.sender)]
    tokenAddress = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[address(msg.sender)]
    oracleAddress = arg1
}

function setTimeToClaim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[address(msg.sender)]
    sub_d7c31cd2 = arg1
}

function sub_fc440083(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 0
}

function sub_4586884b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[address(msg.sender)]
    sub_41b64452Address = address(arg1)
}

function sub_4ad15851(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[address(msg.sender)]
    sub_c0be1f72Address = address(arg1)
}

function setRewardContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[address(msg.sender)]
    rewardsContractAddress = arg1
}

function sub_80d8a1fc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require stor0[address(msg.sender)]
    require ext_code.size(sub_41b64452Address)
    call sub_41b64452Address.0x80d8a1fc with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a6faf525(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require stor0[address(msg.sender)]
    require ext_code.size(sub_41b64452Address)
    call sub_41b64452Address.0xa6faf525 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cdb31913(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require stor0[address(msg.sender)]
    require ext_code.size(sub_41b64452Address)
    call sub_41b64452Address.0xcdb31913 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addRewards(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0[address(msg.sender)]
    require ext_code.size(sub_41b64452Address)
    call sub_41b64452Address.0xa9fc507b with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1634d87c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_41b64452Address)
    staticcall sub_41b64452Address.0x22e13a11 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_799cb3b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_41b64452Address)
    staticcall sub_41b64452Address.0x9129e2e4 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_8c8e965f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_41b64452Address)
    staticcall sub_41b64452Address.0x22e13a11 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and sub_8f9318fc > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (ext_call.return_data[0] * sub_8f9318fc / 100)
}

function sub_14096841(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_41b64452Address)
    staticcall sub_41b64452Address.0x9129e2e4 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[0] >= sub_d7c31cd2:
        return 0
    if sub_d7c31cd2 < block.timestamp - ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (sub_d7c31cd2 - block.timestamp + ext_call.return_data[0])
}

function sub_1cf8a065(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require stor0[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_fddbbbe4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, rewardsContractAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.priceToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_41b64452Address)
    call sub_41b64452Address.0xa9fc507b with:
         gas gas_remaining wei
        args msg.sender, arg1 * ext_call.return_data[0] / 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_62a8f7c3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_41b64452Address)
    staticcall sub_41b64452Address.0x22e13a11 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and sub_8f9318fc > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg1 > ext_call.return_data[0] * sub_8f9318fc / 100:
        revert with 0, 'Error.'
    require ext_code.size(sub_41b64452Address)
    staticcall sub_41b64452Address.0x9129e2e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[0] < sub_d7c31cd2:
        revert with 0, 'Retry Later.'
    require ext_code.size(sub_41b64452Address)
    call sub_41b64452Address.0x80d8a1fc with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_41b64452Address)
    call sub_41b64452Address.0xa6faf525 with:
         gas gas_remaining wei
        args msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x6ef75880 with:
            gas gas_remaining wei
           args sub_c0be1f72Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(rewardsContractAddress)
    call rewardsContractAddress.0x9ffdb8a6 with:
         gas gas_remaining wei
        args tokenAddress, msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
