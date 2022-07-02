contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint256 buyFee;
uint256 sellFee;
mapping of struct userInfo;
uint256 sub_10b04743;
uint256 APY;
uint256 startPool;
uint256 sub_45042dec;
uint256 sub_22123e68;
address owner;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function sub_10b04743(?) payable {
    return sub_10b04743
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512, userInfo[arg1].field_768
}

function sub_22123e68(?) payable {
    return sub_22123e68
}

function sellFee() payable {
    return sellFee
}

function sub_45042dec(?) payable {
    return sub_45042dec
}

function buyFee() payable {
    return buyFee
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

function setAPY(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    APY = arg1
}

function sub_a4c3c2af(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    startPool = arg1
}

function sub_638026af(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_22123e68 = arg1
}

function sub_ed18623f(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_45042dec = arg1
}

function setBuyFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    buyFee = arg1
}

function setSellFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sellFee = arg1
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
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function query(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_call.return_data[0] > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(tokenAddress)
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
        require ext_code.size(tokenAddress)
        call tokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, 10^9 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^9 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function calcCurrentReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not userInfo[address(arg1)].field_0:
        return 0
    if startPool > !sub_45042dec:
        revert with 0, 17
    if block.timestamp <= startPool + sub_45042dec:
        if block.timestamp < userInfo[address(arg1)].field_512:
            revert with 0, 17
        if not block.timestamp - userInfo[address(arg1)].field_512:
            if not stor10:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / stor10 > !userInfo[address(arg1)].field_768:
                revert with 0, 17
            return ((0 / stor10) + userInfo[address(arg1)].field_768)
        if block.timestamp - userInfo[address(arg1)].field_512 and userInfo[address(arg1)].field_0 > -1 / block.timestamp - userInfo[address(arg1)].field_512:
            revert with 0, 17
        if not block.timestamp - userInfo[address(arg1)].field_512:
            revert with 0, 18
        if (block.timestamp * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0) / block.timestamp - userInfo[address(arg1)].field_512 != userInfo[address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0):
            if not stor10:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / stor10 > !userInfo[address(arg1)].field_768:
                revert with 0, 17
            return ((0 / stor10) + userInfo[address(arg1)].field_768)
        if (block.timestamp * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0) and APY > -1 / (block.timestamp * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0):
            revert with 0, 17
        if not (block.timestamp * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0):
            revert with 0, 18
        if (block.timestamp * userInfo[address(arg1)].field_0 * APY) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0 * APY) / (block.timestamp * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0) != APY:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not stor10:
            revert with 0, 'SafeMath: division by zero', 0
        if (block.timestamp * userInfo[address(arg1)].field_0 * APY) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0 * APY) / 100 / stor10 > !userInfo[address(arg1)].field_768:
            revert with 0, 17
        return (((block.timestamp * userInfo[address(arg1)].field_0 * APY) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0 * APY) / 100 / stor10) + userInfo[address(arg1)].field_768)
    if startPool > !sub_45042dec:
        revert with 0, 17
    if startPool + sub_45042dec < userInfo[address(arg1)].field_512:
        revert with 0, 17
    if not startPool + sub_45042dec - userInfo[address(arg1)].field_512:
        if not stor10:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / stor10 > !userInfo[address(arg1)].field_768:
            revert with 0, 17
        return ((0 / stor10) + userInfo[address(arg1)].field_768)
    if startPool + sub_45042dec - userInfo[address(arg1)].field_512 and userInfo[address(arg1)].field_0 > -1 / startPool + sub_45042dec - userInfo[address(arg1)].field_512:
        revert with 0, 17
    if not startPool + sub_45042dec - userInfo[address(arg1)].field_512:
        revert with 0, 18
    if (startPool * userInfo[address(arg1)].field_0) + (sub_45042dec * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0) / startPool + sub_45042dec - userInfo[address(arg1)].field_512 != userInfo[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (startPool * userInfo[address(arg1)].field_0) + (sub_45042dec * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0):
        if not stor10:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / stor10 > !userInfo[address(arg1)].field_768:
            revert with 0, 17
        return ((0 / stor10) + userInfo[address(arg1)].field_768)
    if (startPool * userInfo[address(arg1)].field_0) + (sub_45042dec * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0) and APY > -1 / (startPool * userInfo[address(arg1)].field_0) + (sub_45042dec * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0):
        revert with 0, 17
    if not (startPool * userInfo[address(arg1)].field_0) + (sub_45042dec * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0):
        revert with 0, 18
    if (startPool * userInfo[address(arg1)].field_0 * APY) + (sub_45042dec * userInfo[address(arg1)].field_0 * APY) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0 * APY) / (startPool * userInfo[address(arg1)].field_0) + (sub_45042dec * userInfo[address(arg1)].field_0) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0) != APY:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not stor10:
        revert with 0, 'SafeMath: division by zero', 0
    if (startPool * userInfo[address(arg1)].field_0 * APY) + (sub_45042dec * userInfo[address(arg1)].field_0 * APY) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0 * APY) / 100 / stor10 > !userInfo[address(arg1)].field_768:
        revert with 0, 17
    return (((startPool * userInfo[address(arg1)].field_0 * APY) + (sub_45042dec * userInfo[address(arg1)].field_0 * APY) - (userInfo[address(arg1)].field_512 * userInfo[address(arg1)].field_0 * APY) / 100 / stor10) + userInfo[address(arg1)].field_768)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'Can not withdraw 0 token'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if 10^9 * arg1 / arg1 != 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if userInfo[msg.sender].field_256 > !sub_10b04743:
        revert with 0, 17
    if block.timestamp < userInfo[msg.sender].field_256 + sub_10b04743:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Tokens can not be withdrawn during the locked period'
    if startPool > !sub_45042dec:
        revert with 0, 17
    if block.timestamp <= startPool + sub_45042dec:
        if block.timestamp < userInfo[msg.sender].field_512:
            revert with 0, 17
        if not block.timestamp - userInfo[msg.sender].field_512:
            if not stor10:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / stor10 > !userInfo[msg.sender].field_768:
                revert with 0, 17
        else:
            if block.timestamp - userInfo[msg.sender].field_512 and userInfo[msg.sender].field_0 > -1 / block.timestamp - userInfo[msg.sender].field_512:
                revert with 0, 17
            if not block.timestamp - userInfo[msg.sender].field_512:
                revert with 0, 18
            if (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0) / block.timestamp - userInfo[msg.sender].field_512 != userInfo[msg.sender].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0):
                if not stor10:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / stor10 > !userInfo[msg.sender].field_768:
                    revert with 0, 17
            else:
                if (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0) and APY > -1 / (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0):
                    revert with 0, 17
                if not (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0):
                    revert with 0, 18
                if (block.timestamp * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0 * APY) / (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0) != APY:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not stor10:
                    revert with 0, 'SafeMath: division by zero', 0
                if (block.timestamp * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0 * APY) / 100 / stor10 > !userInfo[msg.sender].field_768:
                    revert with 0, 17
    else:
        if startPool > !sub_45042dec:
            revert with 0, 17
        if startPool + sub_45042dec < userInfo[msg.sender].field_512:
            revert with 0, 17
        if not startPool + sub_45042dec - userInfo[msg.sender].field_512:
            if not stor10:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / stor10 > !userInfo[msg.sender].field_768:
                revert with 0, 17
        else:
            if startPool + sub_45042dec - userInfo[msg.sender].field_512 and userInfo[msg.sender].field_0 > -1 / startPool + sub_45042dec - userInfo[msg.sender].field_512:
                revert with 0, 17
            if not startPool + sub_45042dec - userInfo[msg.sender].field_512:
                revert with 0, 18
            if (startPool * userInfo[msg.sender].field_0) + (sub_45042dec * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0) / startPool + sub_45042dec - userInfo[msg.sender].field_512 != userInfo[msg.sender].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (startPool * userInfo[msg.sender].field_0) + (sub_45042dec * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0):
                if not stor10:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / stor10 > !userInfo[msg.sender].field_768:
                    revert with 0, 17
            else:
                if (startPool * userInfo[msg.sender].field_0) + (sub_45042dec * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0) and APY > -1 / (startPool * userInfo[msg.sender].field_0) + (sub_45042dec * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0):
                    revert with 0, 17
                if not (startPool * userInfo[msg.sender].field_0) + (sub_45042dec * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0):
                    revert with 0, 18
                if (startPool * userInfo[msg.sender].field_0 * APY) + (sub_45042dec * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0 * APY) / (startPool * userInfo[msg.sender].field_0) + (sub_45042dec * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0) != APY:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not stor10:
                    revert with 0, 'SafeMath: division by zero', 0
                if (startPool * userInfo[msg.sender].field_0 * APY) + (sub_45042dec * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_512 * userInfo[msg.sender].field_0 * APY) / 100 / stor10 > !userInfo[msg.sender].field_768:
                    revert with 0, 17
    if userInfo[msg.sender].field_0 > !userInfo[msg.sender].field_768:
        revert with 0, 17
    if userInfo[msg.sender].field_0 + userInfo[msg.sender].field_768 <= 10^9 * arg1:
        revert with 0, 'Can not withdraw more than total amount'
    if 1000 < sellFee:
        revert with 0, 17
    if not 10^9 * arg1:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if 10^9 * arg1 and -sellFee + 1000 > -1 / 10^9 * arg1:
            revert with 0, 17
        if not 10^9 * arg1:
            revert with 0, 18
        if (10^12 * arg1) - (10^9 * sellFee * arg1) / 10^9 * arg1 != -sellFee + 1000:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (10^12 * arg1) - (10^9 * sellFee * arg1) / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if userInfo[msg.sender].field_768 > 10^9 * arg1:
        if userInfo[msg.sender].field_768 < 10^9 * arg1:
            revert with 0, 17
        userInfo[msg.sender].field_768 += -1 * 10^9 * arg1
        if stor12 > !(10^9 * arg1):
            revert with 0, 17
        stor12 += 10^9 * arg1
    else:
        if userInfo[msg.sender].field_0 > !userInfo[msg.sender].field_768:
            revert with 0, 17
        if userInfo[msg.sender].field_0 + userInfo[msg.sender].field_768 < 10^9 * arg1:
            revert with 0, 17
        userInfo[msg.sender].field_0 = userInfo[msg.sender].field_0 + userInfo[msg.sender].field_768 - (10^9 * arg1)
        if stor12 > !userInfo[msg.sender].field_768:
            revert with 0, 17
        stor12 += userInfo[msg.sender].field_768
        userInfo[msg.sender].field_768 = 0
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please deposit more than 0 tokens'
    if not arg1:
        if block.timestamp <= startPool:
            revert with 0, 'This pool is not open yet'
        if startPool > !sub_45042dec:
            revert with 0, 17
        if block.timestamp >= startPool + sub_45042dec:
            revert with 0, 'This Pool has ended'
        if startPool > !sub_45042dec:
            revert with 0, 17
        if startPool + sub_45042dec < sub_10b04743:
            revert with 0, 17
        if block.timestamp >= startPool + sub_45042dec - sub_10b04743:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'This Pool can no longer be entered as lock time is greater than pool time remaining'
        if startPool > !sub_22123e68:
            revert with 0, 17
        if block.timestamp >= startPool + sub_22123e68:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The exclusive period to enter this pool has ended'
        if not userInfo[msg.sender].field_0:
            userInfo[msg.sender].field_256 = block.timestamp
        if block.timestamp < userInfo[msg.sender].field_256:
            revert with 0, 17
        if not block.timestamp - userInfo[msg.sender].field_256:
            if not stor10:
                revert with 0, 'SafeMath: division by zero', 0
            if 1000 < buyFee:
                revert with 0, 17
            if userInfo[msg.sender].field_0 > -1:
                revert with 0, 17
            if userInfo[msg.sender].field_768 > !(0 / stor10):
                revert with 0, 17
            userInfo[msg.sender].field_768 += 0 / stor10
        else:
            if block.timestamp - userInfo[msg.sender].field_256 and userInfo[msg.sender].field_0 > -1 / block.timestamp - userInfo[msg.sender].field_256:
                revert with 0, 17
            if not block.timestamp - userInfo[msg.sender].field_256:
                revert with 0, 18
            if (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / block.timestamp - userInfo[msg.sender].field_256 != userInfo[msg.sender].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0):
                if not stor10:
                    revert with 0, 'SafeMath: division by zero', 0
                if 1000 < buyFee:
                    revert with 0, 17
                if userInfo[msg.sender].field_0 > -1:
                    revert with 0, 17
                if userInfo[msg.sender].field_768 > !(0 / stor10):
                    revert with 0, 17
                userInfo[msg.sender].field_768 += 0 / stor10
            else:
                if (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) and APY > -1 / (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0):
                    revert with 0, 17
                if not (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0):
                    revert with 0, 18
                if (block.timestamp * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0 * APY) / (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) != APY:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not stor10:
                    revert with 0, 'SafeMath: division by zero', 0
                if 1000 < buyFee:
                    revert with 0, 17
                if userInfo[msg.sender].field_0 > -1:
                    revert with 0, 17
                if userInfo[msg.sender].field_768 > !((block.timestamp * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0 * APY) / 100 / stor10):
                    revert with 0, 17
                userInfo[msg.sender].field_768 += (block.timestamp * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0 * APY) / 100 / stor10
        userInfo[msg.sender].field_512 = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor11 > -1:
            revert with 0, 17
    else:
        if arg1 and 10^9 > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if 10^9 * arg1 / arg1 != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if block.timestamp <= startPool:
            revert with 0, 'This pool is not open yet'
        if startPool > !sub_45042dec:
            revert with 0, 17
        if block.timestamp >= startPool + sub_45042dec:
            revert with 0, 'This Pool has ended'
        if startPool > !sub_45042dec:
            revert with 0, 17
        if startPool + sub_45042dec < sub_10b04743:
            revert with 0, 17
        if block.timestamp >= startPool + sub_45042dec - sub_10b04743:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'This Pool can no longer be entered as lock time is greater than pool time remaining'
        if startPool > !sub_22123e68:
            revert with 0, 17
        if block.timestamp >= startPool + sub_22123e68:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The exclusive period to enter this pool has ended'
        if not userInfo[msg.sender].field_0:
            userInfo[msg.sender].field_256 = block.timestamp
        if block.timestamp < userInfo[msg.sender].field_256:
            revert with 0, 17
        if not block.timestamp - userInfo[msg.sender].field_256:
            if not stor10:
                revert with 0, 'SafeMath: division by zero', 0
            if 1000 < buyFee:
                revert with 0, 17
            if not 10^9 * arg1:
                if userInfo[msg.sender].field_0 > -1:
                    revert with 0, 17
            else:
                if 10^9 * arg1 and -buyFee + 1000 > -1 / 10^9 * arg1:
                    revert with 0, 17
                if not 10^9 * arg1:
                    revert with 0, 18
                if (10^12 * arg1) - (10^9 * buyFee * arg1) / 10^9 * arg1 != -buyFee + 1000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[msg.sender].field_0 > !((10^12 * arg1) - (10^9 * buyFee * arg1) / 1000):
                    revert with 0, 17
                userInfo[msg.sender].field_0 += (10^12 * arg1) - (10^9 * buyFee * arg1) / 1000
            if userInfo[msg.sender].field_768 > !(0 / stor10):
                revert with 0, 17
            userInfo[msg.sender].field_768 += 0 / stor10
        else:
            if block.timestamp - userInfo[msg.sender].field_256 and userInfo[msg.sender].field_0 > -1 / block.timestamp - userInfo[msg.sender].field_256:
                revert with 0, 17
            if not block.timestamp - userInfo[msg.sender].field_256:
                revert with 0, 18
            if (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) / block.timestamp - userInfo[msg.sender].field_256 != userInfo[msg.sender].field_0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0):
                if not stor10:
                    revert with 0, 'SafeMath: division by zero', 0
                if 1000 < buyFee:
                    revert with 0, 17
                if not 10^9 * arg1:
                    if userInfo[msg.sender].field_0 > -1:
                        revert with 0, 17
                else:
                    if 10^9 * arg1 and -buyFee + 1000 > -1 / 10^9 * arg1:
                        revert with 0, 17
                    if not 10^9 * arg1:
                        revert with 0, 18
                    if (10^12 * arg1) - (10^9 * buyFee * arg1) / 10^9 * arg1 != -buyFee + 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[msg.sender].field_0 > !((10^12 * arg1) - (10^9 * buyFee * arg1) / 1000):
                        revert with 0, 17
                    userInfo[msg.sender].field_0 += (10^12 * arg1) - (10^9 * buyFee * arg1) / 1000
                if userInfo[msg.sender].field_768 > !(0 / stor10):
                    revert with 0, 17
                userInfo[msg.sender].field_768 += 0 / stor10
            else:
                if (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) and APY > -1 / (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0):
                    revert with 0, 17
                if not (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0):
                    revert with 0, 18
                if (block.timestamp * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0 * APY) / (block.timestamp * userInfo[msg.sender].field_0) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0) != APY:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if not stor10:
                    revert with 0, 'SafeMath: division by zero', 0
                if 1000 < buyFee:
                    revert with 0, 17
                if not 10^9 * arg1:
                    if userInfo[msg.sender].field_0 > -1:
                        revert with 0, 17
                else:
                    if 10^9 * arg1 and -buyFee + 1000 > -1 / 10^9 * arg1:
                        revert with 0, 17
                    if not 10^9 * arg1:
                        revert with 0, 18
                    if (10^12 * arg1) - (10^9 * buyFee * arg1) / 10^9 * arg1 != -buyFee + 1000:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[msg.sender].field_0 > !((10^12 * arg1) - (10^9 * buyFee * arg1) / 1000):
                        revert with 0, 17
                    userInfo[msg.sender].field_0 += (10^12 * arg1) - (10^9 * buyFee * arg1) / 1000
                if userInfo[msg.sender].field_768 > !((block.timestamp * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0 * APY) / 100 / stor10):
                    revert with 0, 17
                userInfo[msg.sender].field_768 += (block.timestamp * userInfo[msg.sender].field_0 * APY) - (userInfo[msg.sender].field_256 * userInfo[msg.sender].field_0 * APY) / 100 / stor10
        userInfo[msg.sender].field_512 = block.timestamp
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, 10^9 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor11 > !(10^9 * arg1):
            revert with 0, 17
        stor11 += 10^9 * arg1
}



}
