contract main {




// =====================  Runtime code  =====================


address owner;
uint256 start;
uint256 end;
uint8 stor3;
address stor3; offset 8
array of address options;
uint256 length;
uint256 total;
mapping of uint256 sub_713cdaa8;
mapping of uint256 sub_e91ac699;

function length() payable {
    return length
}

function sub_2d14c593(?) payable {
    return bool(uint8(stor3.field_0))
}

function total() payable {
    return total
}

function options(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < options.length
    return options[arg1]
}

function sub_713cdaa8(?) payable {
    require calldata.size - 4 >= 32
    return sub_713cdaa8[arg1]
}

function owner() payable {
    return owner
}

function start() payable {
    return start
}

function sub_e91ac699(?) payable {
    require calldata.size - 4 >= 32
    return sub_e91ac699[arg1]
}

function end() payable {
    return end
}

function _fallback() payable {
    revert
}

function stop() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_0) = 1
    return 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_159e7064(?) payable {
    if uint8(stor3.field_0):
        return not bool(uint8(stor3.field_0))
    if start > block.timestamp:
        return start <= block.timestamp
    return block.timestamp <= end
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function exit() payable {
    if not uint8(stor3.field_0):
        if block.timestamp < end:
            revert with 0, 'NOT END'
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_713cdaa8[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'REQUIRE TRANSFER SUCCESS'
    sub_713cdaa8[address(msg.sender)] = 0
    return 1
}

function vote(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor3.field_0):
        revert with 0, 'NOT START'
    if start > block.timestamp:
        revert with 0, 'NOT START'
    if block.timestamp > end:
        revert with 0, 'NOT START'
    if arg1 >= length:
        revert with 0, 'INVALID OPTION'
    require ext_code.size(address(stor3.field_8))
    call address(stor3.field_8).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'REQUIRE TRANSFER SUCCESS'
    if sub_713cdaa8[address(msg.sender)] + arg2 < sub_713cdaa8[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_713cdaa8[address(msg.sender)] += arg2
    if sub_e91ac699[arg1] + arg2 < sub_e91ac699[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    sub_e91ac699[arg1] += arg2
    if total + arg2 < total:
        revert with 0, 'SafeMath: addition overflow'
    total += arg2
    return 1
}



}
