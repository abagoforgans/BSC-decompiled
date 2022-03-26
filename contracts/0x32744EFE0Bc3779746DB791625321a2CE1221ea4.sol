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

function stakeOf(address arg1) {
    require calldata.size - 4 >= 32
    return stakeOf[address(arg1)]
}

function totalStake() {
    return totalStake
}

function rewardOf(address arg1) {
    require calldata.size - 4 >= 32
    if stakeOf[address(arg1)]:
        return (stor1[address(arg1)] + ((19 * block.timestamp * stakeOf[address(arg1)]) - (19 * stor2[address(arg1)] * stakeOf[address(arg1)]) / 20000))
    else:
        return 0
}

function harvest() {
    require stakeOf[address(msg.sender)] > 0
    if stor10 >= stor12:
        revert with 0, ' Farm: Max '
    stor2[address(msg.sender)] = block.timestamp
    stor1[address(msg.sender)] = 0
    require ext_code.size(stor14)
    call stor14.0xae2fe633 with:
         gas gas_remaining wei
        args msg.sender, stor1[address(msg.sender)] + ((19 * block.timestamp * stakeOf[address(msg.sender)]) - (19 * stor2[address(msg.sender)] * stakeOf[address(msg.sender)]) / 20000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function _fallback() payable {
    require msg.value > 0
    if stakeOf[address(msg.sender)] > 0:
        stor1[address(msg.sender)] += (19 * block.timestamp * stakeOf[address(msg.sender)]) - (19 * stor2[address(msg.sender)] * stakeOf[address(msg.sender)]) / 20000
    if stakeOf[address(msg.sender)] + msg.value < stakeOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    stakeOf[address(msg.sender)] += msg.value
    stor2[address(msg.sender)] = block.timestamp
    if not stor3[address(msg.sender)]:
        stor3[address(msg.sender)] = block.timestamp
    if totalStake + msg.value < totalStake:
        revert with 0, 'SafeMath: addition overflow'
    totalStake += msg.value
    if stor9 + msg.value < stor9:
        revert with 0, 'SafeMath: addition overflow'
    stor9 += msg.value
}

function sub_80dbd3f2(?) {
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
    require stor11 > 0
    if stor11 == 2:
        require stakeOf[address(msg.sender)] < 2 * 10^18
    call msg.sender with:
       value stakeOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor13
    if not arg1:
        stor11 = 0
    else:
        if arg1 == 1:
            call msg.sender with:
               value stor9 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
                call msg.sender with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 > stor9:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor9 -= arg1
}



}
