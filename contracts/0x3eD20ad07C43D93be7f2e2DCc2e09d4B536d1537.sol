contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address sub_d060c7c1;
uint256 startTime;
uint256 endTime;
uint256 totalSupply;
uint256 swapLimit;
mapping of uint256 sub_2789cbcc;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function totalSupply() payable {
    return totalSupply
}

function sub_2789cbcc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2789cbcc[arg1]
}

function endTime() payable {
    return endTime
}

function swapLimit() payable {
    return swapLimit
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function sub_d060c7c1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_d060c7c1[arg1 << 248]
}

function _fallback() payable {
    revert
}

function getPrice() payable {
    if not stor8 / 10^18:
        revert with 'NH{q', 18
    return stor7 / stor8 / 10^18, stor8, stor7
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapLimit = arg1
    return 1
}

function sub_eb655591(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10 = arg1
    stor9 = arg2
    return 1
}

function setPrice(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7 = arg1
    stor8 = arg2
    return 1
}

function setTime(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= arg2:
        revert with 0, 'bad time'
    startTime = arg1
    endTime = arg2
    return 1
}

function sub_4cd1be75(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg2):
        revert with 0, 'Zero address'
    sub_d060c7c1[arg1 << 248] = address(arg2)
    emit 0xb1095f39: address(arg2), uint8(arg1)
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function info() payable {
    if block.timestamp >= startTime:
        if block.timestamp <= endTime:
            if not stor8 / 10^18:
                revert with 'NH{q', 18
            return 1, startTime, endTime, totalSupply, stor7 / stor8 / 10^18, stor8, swapLimit, stor10, stor9
    else:
        if block.timestamp <= endTime:
            if not stor8 / 10^18:
                revert with 'NH{q', 18
            return 0, startTime, endTime, totalSupply, stor7 / stor8 / 10^18, stor8, swapLimit, stor10, stor9
    ('gt', 'timestamp', ('stor', ('name', 'endTime', 3)))
    if not stor8 / 10^18:
        revert with 'NH{q', 18
    return 2, startTime, endTime, totalSupply, stor7 / stor8 / 10^18, stor8, swapLimit, stor10, stor9
}

function back() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x40a9a267a84539de661bc7e4e07a64a80b07825b)
    staticcall 0x40a9a267a84539de661bc7e4e07a64a80b07825b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x40a9a267a84539de661bc7e4e07a64a80b07825b)
    call 0x40a9a267a84539de661bc7e4e07a64a80b07825b.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function swap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'one at least'
    if arg1 > stor10:
        revert with 0, 'Sold out'
    if stor7 and arg1 > -1 / stor7:
        revert with 'NH{q', 17
    if stor8 and arg1 > -1 / stor8:
        revert with 'NH{q', 17
    if block.timestamp < startTime:
        revert with 0, 'not start'
    if block.timestamp > endTime:
        revert with 0, 'end'
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor7 * arg1:
        revert with 0, 'Allowance not enough'
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    staticcall 0x55d398326f99059ff775485246999027b3197955.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor7 * arg1:
        revert with 0, 'Balance not enough'
    require ext_code.size(0x40a9a267a84539de661bc7e4e07a64a80b07825b)
    staticcall 0x40a9a267a84539de661bc7e4e07a64a80b07825b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor8 * arg1:
        revert with 0, 'Sold out'
    if sub_2789cbcc[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_2789cbcc[address(msg.sender)] + arg1 > swapLimit:
        revert with 0, 'limit'
    if sub_2789cbcc[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_2789cbcc[address(msg.sender)] += arg1
    if stor10 < arg1:
        revert with 'NH{q', 17
    stor10 -= arg1
    require ext_code.size(0x40a9a267a84539de661bc7e4e07a64a80b07825b)
    call 0x40a9a267a84539de661bc7e4e07a64a80b07825b.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor8 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0x55d398326f99059ff775485246999027b3197955)
    call 0x55d398326f99059ff775485246999027b3197955.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_d060c7c1[1], stor7 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xd5d10250: stor7 * arg1, stor8 * arg1, msg.sender
    return 1
}



}
