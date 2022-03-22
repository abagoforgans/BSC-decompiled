contract main {




// =====================  Runtime code  =====================


mapping of uint256 stakeOf;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
uint256 totalStake;
uint256 stor9;
uint256 stor10;
uint8 stor11;
uint256 stor12;
address stor13;
address stor14;
address stor15;

function stakeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakeOf[address(arg1)]
}

function totalStake() payable {
    return totalStake
}

function _fallback() payable {
    revert
}

function rewardOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if stakeOf[address(arg1)]:
        return (stor1[address(arg1)] + ((block.timestamp * stakeOf[address(arg1)]) - (stor2[address(arg1)] * stakeOf[address(arg1)]) / 30000))
    else:
        return 0
}

function harvest() payable {
    require stakeOf[address(msg.sender)] > 0
    if stor10 >= stor12:
        revert with 0, ' Farm: Max '
    stor2[address(msg.sender)] = block.timestamp
    stor1[address(msg.sender)] = 0
    require ext_code.size(stor14)
    call stor14.0xae2fe633 with:
         gas gas_remaining wei
        args msg.sender, stor1[address(msg.sender)] + ((block.timestamp * stakeOf[address(msg.sender)]) - (stor2[address(msg.sender)] * stakeOf[address(msg.sender)]) / 30000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_80dbd3f2(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor13
    require ext_code.size(stor15)
    if arg2 != 1:
        call stor15.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), stor13, arg2
    else:
        staticcall stor15.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor15)
        call stor15.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), stor13, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function unStake() payable {
    require stakeOf[address(msg.sender)] <= totalStake
    require stakeOf[address(msg.sender)] > 0
    require stor11 > 0
    if stor11 == 2:
        require stakeOf[address(msg.sender)] < 15 * 10^18
    require ext_code.size(stor15)
    call stor15.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stakeOf[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stakeOf[address(msg.sender)] > totalStake:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStake -= stakeOf[address(msg.sender)]
    if stakeOf[address(msg.sender)] > stor9:
        revert with 0, 'SafeMath: subtraction overflow'
    stor9 -= stakeOf[address(msg.sender)]
    if stakeOf[address(msg.sender)] > stakeOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    stakeOf[address(msg.sender)] = 0
    stor1[address(msg.sender)] = 0
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 > 0
    if stor10 >= stor12:
        revert with 0, ' Farm: Max '
    require ext_code.size(stor15)
    call stor15.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stakeOf[address(msg.sender)] > 0:
        stor1[address(msg.sender)] += (block.timestamp * stakeOf[address(msg.sender)]) - (stor2[address(msg.sender)] * stakeOf[address(msg.sender)]) / 30000
    if stakeOf[address(msg.sender)] + arg1 < stakeOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stakeOf[address(msg.sender)] += arg1
    stor2[address(msg.sender)] = block.timestamp
    if not stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = block.timestamp
    if totalStake + arg1 < totalStake:
        revert with 0, 'SafeMath: addition overflow'
    totalStake += arg1
    if stor9 + arg1 < stor9:
        revert with 0, 'SafeMath: addition overflow'
    stor9 += arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor13
    if not arg1:
        stor11 = 0
    else:
        if arg1 == 1:
            require ext_code.size(stor15)
            call stor15.0xa9059cbb with:
                 gas gas_remaining wei
                args stor13, stor9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if stor9 > stor9:
                revert with 0, 'SafeMath: subtraction overflow'
            stor9 = 0
        else:
            if arg1 == 2:
                if stor11 != 2:
                    stor11 = 2
                else:
                    stor11 = 1
            else:
                require ext_code.size(stor15)
                call stor15.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor13, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 > stor9:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor9 -= arg1
}



}
