contract main {




// =====================  Runtime code  =====================


const sub_56d09089(?) = eth.balance(msg.sender)


mapping of uint256 balance;

function getBalance() {
    return balance[address(msg.sender)]
}

function _fallback() payable {
    revert
}

function _mint() payable {
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'A value is required to send balance'
    if balance[address(msg.sender)] <= 0:
        if 0 > -msg.value - 1:
            revert with 'NH{q', 17
        balance[address(msg.sender)] = msg.value
    else:
        if balance[address(msg.sender)] > -msg.value - 1:
            revert with 'NH{q', 17
        balance[address(msg.sender)] += msg.value
    call 0x8096ec813a3fd508f43906daf549365894614640 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
