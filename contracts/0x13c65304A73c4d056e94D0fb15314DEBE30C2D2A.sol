contract main {




// =====================  Runtime code  =====================


address stakeTokenAddress;
uint256 sub_9257b8f4;
uint256 sub_636a8fa3;
uint256 sub_f13d7ab1;
mapping of uint256 sub_2360080a;
mapping of uint256 stake;

function sub_2360080a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2360080a[arg1]
}

function stakeToken() payable {
    return stakeTokenAddress
}

function sub_636a8fa3(?) payable {
    return sub_636a8fa3
}

function Stake(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stake[arg1]
}

function sub_9257b8f4(?) payable {
    return sub_9257b8f4
}

function sub_f13d7ab1(?) payable {
    return sub_f13d7ab1
}

function _fallback() payable {
    revert
}

function SetReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    sub_f13d7ab1 = arg1
}

function Deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stake[address(msg.sender)] = arg1
    sub_2360080a[address(msg.sender)] = sub_636a8fa3
    if sub_9257b8f4 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_9257b8f4 += arg1
}

function Distribute() payable {
    require sub_9257b8f4
    if sub_f13d7ab1 and 10^18 > -1 / sub_f13d7ab1:
        revert with 'NH{q', 17
    if not sub_9257b8f4:
        revert with 'NH{q', 18
    if sub_636a8fa3 > -(10^18 * sub_f13d7ab1 / sub_9257b8f4) - 1:
        revert with 'NH{q', 17
    sub_636a8fa3 += 10^18 * sub_f13d7ab1 / sub_9257b8f4
    sub_f13d7ab1 = 0
}

function reward() payable {
    if sub_636a8fa3 < sub_2360080a[address(msg.sender)]:
        revert with 'NH{q', 17
    if stake[address(msg.sender)] and sub_636a8fa3 - sub_2360080a[address(msg.sender)] > -1 / stake[address(msg.sender)]:
        revert with 'NH{q', 17
    return ((sub_636a8fa3 * stake[address(msg.sender)]) - (sub_2360080a[address(msg.sender)] * stake[address(msg.sender)]) / 10^18)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    call stakeTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function Balance() payable {
    if sub_636a8fa3 < sub_2360080a[address(msg.sender)]:
        revert with 'NH{q', 17
    if stake[address(msg.sender)] and sub_636a8fa3 - sub_2360080a[address(msg.sender)] > -1 / stake[address(msg.sender)]:
        revert with 'NH{q', 17
    if stake[address(msg.sender)] > -((sub_636a8fa3 * stake[address(msg.sender)]) - (sub_2360080a[address(msg.sender)] * stake[address(msg.sender)]) / 10^18) - 1:
        revert with 'NH{q', 17
    return (stake[address(msg.sender)] + ((sub_636a8fa3 * stake[address(msg.sender)]) - (sub_2360080a[address(msg.sender)] * stake[address(msg.sender)]) / 10^18))
}



}
