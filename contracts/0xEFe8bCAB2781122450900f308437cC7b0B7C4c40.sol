contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    revert
}

function send(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor4 < stor6:
        revert with 'NH{q', 17
    if not stor4 - stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Buyback: The buyback has ended as the total buyback limit has been reached!'
    if arg1 > stor4 - stor6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Buyback: You are exceeding the remaining total buyback limit!'
    if stor6 > -arg1 - 1:
        revert with 'NH{q', 17
    stor6 += arg1
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and stor5 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(stor3)
    call stor3.0x23b872dd with:
         gas gas_remaining wei
        args stor1, msg.sender, arg1 * stor5 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor0 = 1
    return 1
}



}
