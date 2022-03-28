contract main {




// =====================  Runtime code  =====================


address stor0;
address feeToAddress;
address tokenV1Address;
address tokenV2Address;
uint256 totalSupply;
uint256 stakingPeriod;
uint256 APY;
mapping of uint256 stor7;
mapping of uint256 paid;
mapping of uint256 lastAction;

function feeTo() payable {
    return feeToAddress
}

function tokenV2() payable {
    return tokenV2Address
}

function totalSupply() payable {
    return totalSupply
}

function lastAction(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastAction[arg1]
}

function tokenV1() payable {
    return tokenV1Address
}

function paid(address arg1) payable {
    require calldata.size - 4 >= 32
    return paid[arg1]
}

function stakingPeriod() payable {
    return stakingPeriod
}

function APY() payable {
    return APY
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return (stor7[address(arg1)] - paid[address(arg1)])
}

function setAPY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor0 == msg.sender
    APY = arg1
    return 1
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require stor0 == msg.sender
    feeToAddress = arg1
    return 1
}

function sub_f5a69297(?) payable {
    require calldata.size - 4 >= 32
    require stor0 == msg.sender
    stakingPeriod = 24 * 3600 * arg1
    return 1
}

function setTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require stor0 == msg.sender
    require arg1
    require arg2
    require not tokenV1Address
    require not tokenV2Address
    tokenV1Address = arg1
    tokenV2Address = arg2
    return 1
}

function stakeBehalf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if lastAction[address(arg1)]:
        revert with 0, 'Only first stake allowed'
    require ext_code.size(tokenV1Address)
    call tokenV1Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, feeToAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    lastAction[address(arg1)] = block.timestamp
    stor7[address(arg1)] += arg2
    return 1
}

function readyToWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require stakingPeriod
    if (block.timestamp * stor7[address(arg1)]) - (lastAction[address(arg1)] * stor7[address(arg1)]) / stakingPeriod <= stor7[address(arg1)] - paid[address(arg1)]:
        return (block.timestamp * stor7[address(arg1)]) - (lastAction[address(arg1)] * stor7[address(arg1)]) / stakingPeriod, 
               (block.timestamp * stor7[address(arg1)] * APY) - (lastAction[address(arg1)] * stor7[address(arg1)] * APY) - (block.timestamp * paid[address(arg1)] * APY) + (lastAction[address(arg1)] * paid[address(arg1)] * APY) / 87600000 * 24 * 3600
    return stor7[address(arg1)] - paid[address(arg1)], 
           (block.timestamp * stor7[address(arg1)] * APY) - (lastAction[address(arg1)] * stor7[address(arg1)] * APY) - (block.timestamp * paid[address(arg1)] * APY) + (lastAction[address(arg1)] * paid[address(arg1)] * APY) / 87600000 * 24 * 3600
}

function withdraw() payable {
    if not stor7[address(msg.sender)] - paid[address(msg.sender)]:
        revert with 0, 'Zero balance'
    require stakingPeriod
    if (block.timestamp * stor7[address(msg.sender)]) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)]) / stakingPeriod <= stor7[address(msg.sender)] - paid[address(msg.sender)]:
        paid[address(msg.sender)] += (block.timestamp * stor7[address(msg.sender)]) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)]) / stakingPeriod
        lastAction[address(msg.sender)] = block.timestamp
        require ext_code.size(tokenV2Address)
        call tokenV2Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, ((block.timestamp * stor7[address(msg.sender)]) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)]) / stakingPeriod) + ((block.timestamp * stor7[address(msg.sender)] * APY) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)] * APY) - (block.timestamp * paid[address(msg.sender)] * APY) + (lastAction[address(msg.sender)] * paid[address(msg.sender)] * APY) / 87600000 * 24 * 3600)
    else:
        paid[address(msg.sender)] = stor7[address(msg.sender)]
        lastAction[address(msg.sender)] = block.timestamp
        require ext_code.size(tokenV2Address)
        call tokenV2Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, stor7[address(msg.sender)] - paid[address(msg.sender)] + ((block.timestamp * stor7[address(msg.sender)] * APY) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)] * APY) - (block.timestamp * paid[address(msg.sender)] * APY) + (lastAction[address(msg.sender)] * paid[address(msg.sender)] * APY) / 87600000 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_89f30a6d(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenV1Address)
    call tokenV1Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, feeToAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if lastAction[address(msg.sender)]:
        require stakingPeriod
        if (block.timestamp * stor7[address(msg.sender)]) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)]) / stakingPeriod <= stor7[address(msg.sender)] - paid[address(msg.sender)]:
            paid[address(msg.sender)] += (block.timestamp * stor7[address(msg.sender)]) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)]) / stakingPeriod
            lastAction[address(msg.sender)] = block.timestamp
            require ext_code.size(tokenV2Address)
            call tokenV2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, ((block.timestamp * stor7[address(msg.sender)]) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)]) / stakingPeriod) + ((block.timestamp * stor7[address(msg.sender)] * APY) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)] * APY) - (block.timestamp * paid[address(msg.sender)] * APY) + (lastAction[address(msg.sender)] * paid[address(msg.sender)] * APY) / 87600000 * 24 * 3600)
        else:
            paid[address(msg.sender)] = stor7[address(msg.sender)]
            lastAction[address(msg.sender)] = block.timestamp
            require ext_code.size(tokenV2Address)
            call tokenV2Address.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, stor7[address(msg.sender)] - paid[address(msg.sender)] + ((block.timestamp * stor7[address(msg.sender)] * APY) - (lastAction[address(msg.sender)] * stor7[address(msg.sender)] * APY) - (block.timestamp * paid[address(msg.sender)] * APY) + (lastAction[address(msg.sender)] * paid[address(msg.sender)] * APY) / 87600000 * 24 * 3600)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    lastAction[address(msg.sender)] = block.timestamp
    stor7[address(msg.sender)] += arg1
    return 1
}



}
