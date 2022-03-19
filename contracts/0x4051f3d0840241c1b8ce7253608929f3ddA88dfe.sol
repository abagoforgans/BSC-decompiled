contract main {




// =====================  Runtime code  =====================


address stor2;
address stor3;
address owner;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 investment;
mapping of uint256 interest;
mapping of uint256 lastInterestTime;
mapping of uint256 totalearnedInterest;

function investment(address arg1) payable {
    require calldata.size - 4 >= 32
    return investment[arg1]
}

function lastInterestTime(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastInterestTime[arg1]
}

function totalearnedInterest(address arg1) payable {
    require calldata.size - 4 >= 32
    return totalearnedInterest[arg1]
}

function getOwner() payable {
    return owner
}

function interest(address arg1) payable {
    require calldata.size - 4 >= 32
    return interest[arg1]
}

function kill() payable {
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function vars() payable {
    return stor5, stor6, stor7, stor8, stor9
}

function sub_cb959dd2(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor5 = arg1
}

function setAPY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor6 = arg1
}

function setClaimTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    stor7 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require arg1
    require arg1 != owner
    owner = arg1
}

function getContractBalance() payable {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferFund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'exceed contract balance'
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function calculateInterest(address arg1) payable {
    require calldata.size - 4 >= 32
    require lastInterestTime[address(arg1)]
    require lastInterestTime[address(arg1)] < block.timestamp
    require lastInterestTime[address(arg1)] <= block.timestamp
    if investment[address(arg1)]:
        require investment[address(arg1)]
        require (block.timestamp * investment[address(arg1)]) - (lastInterestTime[address(arg1)] * investment[address(arg1)]) / investment[address(arg1)] == block.timestamp - lastInterestTime[address(arg1)]
    if (block.timestamp * investment[address(arg1)]) - (lastInterestTime[address(arg1)] * investment[address(arg1)]):
        require (block.timestamp * investment[address(arg1)]) - (lastInterestTime[address(arg1)] * investment[address(arg1)])
        require (block.timestamp * investment[address(arg1)] * stor6) - (lastInterestTime[address(arg1)] * investment[address(arg1)] * stor6) / (block.timestamp * investment[address(arg1)]) - (lastInterestTime[address(arg1)] * investment[address(arg1)]) == stor6
    return ((block.timestamp * investment[address(arg1)] * stor6) - (lastInterestTime[address(arg1)] * investment[address(arg1)] * stor6) / 87600000 * 24 * 3600)
}

function Unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require lastInterestTime[address(msg.sender)]
    if arg1 > investment[address(msg.sender)]:
        revert with 0, 'not enough fund'
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer Token Error'
    require lastInterestTime[address(msg.sender)]
    require lastInterestTime[address(msg.sender)] < block.timestamp
    require lastInterestTime[address(msg.sender)] <= block.timestamp
    if investment[address(msg.sender)]:
        require investment[address(msg.sender)]
        require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) / investment[address(msg.sender)] == block.timestamp - lastInterestTime[address(msg.sender)]
    if (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]):
        require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)])
        require (block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) == stor6
    require interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600) >= interest[address(msg.sender)]
    interest[address(msg.sender)] += (block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600
    lastInterestTime[address(msg.sender)] = block.timestamp
    require arg1 <= investment[address(msg.sender)]
    investment[address(msg.sender)] -= arg1
    require arg1 <= stor8
    stor8 -= arg1
    emit 0x14fb3646: msg.sender, arg1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < stor5:
        revert with 0, 'not min Investment'
    require ext_code.size(stor2)
    call stor2.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'allowance error'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer Token Error'
    if lastInterestTime[address(msg.sender)]:
        require lastInterestTime[address(msg.sender)]
        require lastInterestTime[address(msg.sender)] < block.timestamp
        require lastInterestTime[address(msg.sender)] <= block.timestamp
        if investment[address(msg.sender)]:
            require investment[address(msg.sender)]
            require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) / investment[address(msg.sender)] == block.timestamp - lastInterestTime[address(msg.sender)]
        if (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]):
            require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)])
            require (block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) == stor6
        require interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600) >= interest[address(msg.sender)]
        interest[address(msg.sender)] += (block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600
    lastInterestTime[address(msg.sender)] = block.timestamp
    require investment[address(msg.sender)] + arg1 >= investment[address(msg.sender)]
    investment[address(msg.sender)] += arg1
    require stor8 + arg1 >= stor8
    stor8 += arg1
    emit Invested(msg.sender, arg1);
}

function claimRewards() payable {
    require lastInterestTime[address(msg.sender)]
    require lastInterestTime[address(msg.sender)] < block.timestamp
    require lastInterestTime[address(msg.sender)]
    require lastInterestTime[address(msg.sender)] < block.timestamp
    require lastInterestTime[address(msg.sender)] <= block.timestamp
    if investment[address(msg.sender)]:
        require investment[address(msg.sender)]
        require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) / investment[address(msg.sender)] == block.timestamp - lastInterestTime[address(msg.sender)]
    if (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]):
        require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)])
        require (block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) == stor6
    require ext_code.size(stor3)
    call stor3.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x27c0c8f8: msg.sender, interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600)
    require stor9 + interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600) >= stor9
    stor9 = stor9 + interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600)
    require totalearnedInterest[address(msg.sender)] + interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600) >= totalearnedInterest[address(msg.sender)]
    totalearnedInterest[address(msg.sender)] = totalearnedInterest[address(msg.sender)] + interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600)
    interest[address(msg.sender)] = 0
    lastInterestTime[address(msg.sender)] = block.timestamp
}

function exit() payable {
    require investment[address(msg.sender)] > 0
    require lastInterestTime[address(msg.sender)]
    require lastInterestTime[address(msg.sender)] < block.timestamp
    require lastInterestTime[address(msg.sender)]
    require lastInterestTime[address(msg.sender)] < block.timestamp
    require lastInterestTime[address(msg.sender)] <= block.timestamp
    if investment[address(msg.sender)]:
        require investment[address(msg.sender)]
        require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) / investment[address(msg.sender)] == block.timestamp - lastInterestTime[address(msg.sender)]
    if (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]):
        require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)])
        require (block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) == stor6
    require ext_code.size(stor3)
    call stor3.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x27c0c8f8: msg.sender, interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600)
    require stor9 + interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600) >= stor9
    stor9 = stor9 + interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600)
    require totalearnedInterest[address(msg.sender)] + interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600) >= totalearnedInterest[address(msg.sender)]
    totalearnedInterest[address(msg.sender)] = totalearnedInterest[address(msg.sender)] + interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600)
    interest[address(msg.sender)] = 0
    lastInterestTime[address(msg.sender)] = block.timestamp
    require lastInterestTime[address(msg.sender)]
    if investment[address(msg.sender)] > investment[address(msg.sender)]:
        revert with 0, 'not enough fund'
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, investment[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer Token Error'
    require lastInterestTime[address(msg.sender)]
    require lastInterestTime[address(msg.sender)] < block.timestamp
    require lastInterestTime[address(msg.sender)] <= block.timestamp
    if investment[address(msg.sender)]:
        require investment[address(msg.sender)]
        require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) / investment[address(msg.sender)] == block.timestamp - lastInterestTime[address(msg.sender)]
    if (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]):
        require (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)])
        require (block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / (block.timestamp * investment[address(msg.sender)]) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)]) == stor6
    require interest[address(msg.sender)] + ((block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600) >= interest[address(msg.sender)]
    interest[address(msg.sender)] += (block.timestamp * investment[address(msg.sender)] * stor6) - (lastInterestTime[address(msg.sender)] * investment[address(msg.sender)] * stor6) / 87600000 * 24 * 3600
    lastInterestTime[address(msg.sender)] = block.timestamp
    require investment[address(msg.sender)] <= investment[address(msg.sender)]
    investment[address(msg.sender)] = 0
    require investment[address(msg.sender)] <= stor8
    stor8 -= investment[address(msg.sender)]
    emit 0x14fb3646: msg.sender, investment[address(msg.sender)]
}



}
