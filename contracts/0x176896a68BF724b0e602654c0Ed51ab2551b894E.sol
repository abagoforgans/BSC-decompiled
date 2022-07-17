contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - set(uint256 arg1, uint256 arg2, uint16 arg3, bool arg4)
#  - deposit(uint256 arg1, uint256 arg2)
#
const MAXIMUM_DEPOSIT_FEE_BP = 1000


address owner;
address sub_ae62161eAddress;
address devaddr;
uint256 sub_c8986cee;
address feeAddress;
address buyBackAddress;
uint256 stor7;
uint256 stor8;
uint256 stor9;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint8 stor12;
uint256 totalAllocPoint;
uint256 startBlock;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726057;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726058;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726059;
array of uint16 stor89717814153306320011181716697424560163256864414616650038987186496166826726060;
array of uint256 stor89717814153306320011181716697424560163256864414616650038987186496166826726061;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
}

function startBlock() payable {
    return startBlock
}

function buyBackAddress() payable {
    return buyBackAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_ae62161e(?) payable {
    return sub_ae62161eAddress
}

function sub_c8986cee(?) payable {
    return sub_c8986cee
}

function poolExistence(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    devaddr = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 < arg1:
        revert with 0, 17
    return (arg2 - arg1)
}

function sub_be5011a1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeAddress = address(arg1)
    buyBackAddress = address(arg2)
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

function updateStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startBlock <= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'updateStartBlock: cannot update when farming has started'
    startBlock = arg1
    emit UpdateStartBlock(arg1, arg1, msg.sender);
}

function sub_8906e3bb(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SUM must be equal to _depositFeeDenominator'
    stor7 = arg1
    stor8 = arg2
    stor9 = arg3
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_ae62161eAddress != poolInfo[arg1].field_0:
            if ext_call.return_data[0]:
                if poolInfo[arg1].field_256:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if block.number < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(sub_ae62161eAddress)
                        call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_ae62161eAddress)
                        call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.number - poolInfo[arg1].field_512 and sub_c8986cee > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 0, 17
                        if not block.number - poolInfo[arg1].field_512:
                            revert with 0, 18
                        if (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) / block.number - poolInfo[arg1].field_512 != sub_c8986cee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_ae62161eAddress)
                            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_ae62161eAddress)
                            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) and poolInfo[arg1].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
                                revert with 0, 17
                            if not (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
                                revert with 0, 18
                            if (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_ae62161eAddress)
                            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_ae62161eAddress)
                            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        else:
            if poolInfo[arg1].field_1280:
                if poolInfo[arg1].field_256:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if block.number < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if not block.number - poolInfo[arg1].field_512:
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(sub_ae62161eAddress)
                        call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_ae62161eAddress)
                        call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not poolInfo[arg1].field_1280:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                    else:
                        if block.number - poolInfo[arg1].field_512 and sub_c8986cee > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 0, 17
                        if not block.number - poolInfo[arg1].field_512:
                            revert with 0, 18
                        if (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) / block.number - poolInfo[arg1].field_512 != sub_c8986cee:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_ae62161eAddress)
                            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_ae62161eAddress)
                            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not 0 / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280
                        else:
                            if (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) and poolInfo[arg1].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
                                revert with 0, 17
                            if not (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
                                revert with 0, 18
                            if (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero', 0
                            require ext_code.size(sub_ae62161eAddress)
                            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(sub_ae62161eAddress)
                            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args this.address, (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1280
                            else:
                                if (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 0, 18
                                if 10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not poolInfo[arg1].field_1280:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
                                    revert with 0, 17
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
        if block.number <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _204 = mem[_203]
        if sub_ae62161eAddress != poolInfo[idx].field_0:
            if not mem[_203]:
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _205 = mem[64]
            mem[64] = mem[64] + 64
            mem[_205] = 30
            mem[_205 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _207 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _207 + 68] = mem[idx + _205 + 32]
                    idx = idx + 32
                    continue 
                mem[_207 + 98] = 0
                revert with memory
                  from mem[64]
                   len _207 + -mem[64] + 100
            if block.number < poolInfo[idx].field_512:
                revert with 0, 17
            if not block.number - poolInfo[idx].field_512:
                _218 = mem[64]
                mem[64] = mem[64] + 64
                mem[_218] = 26
                mem[_218 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _222 + 68] = mem[idx + _218 + 32]
                        idx = idx + 32
                        continue 
                    mem[_222 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _222 + -mem[64] + 100
                _235 = mem[64]
                mem[64] = mem[64] + 64
                mem[_235] = 26
                mem[_235 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _281 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_281] = 26
                    mem[_281 + 32] = 'SafeMath: division by zero'
                    if _204:
                        if poolInfo[idx].field_768 > !(0 / _204):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _204) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _204
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _285 + 68] = mem[idx + _281 + 32]
                        idx = idx + 32
                        continue 
                    mem[_285 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _285 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_301] = 26
                mem[_301 + 32] = 'SafeMath: division by zero'
                if _204:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _204):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _204) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _204
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _308 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _308 + 68] = mem[idx + _301 + 32]
                    idx = idx + 32
                    continue 
                mem[_308 + 94] = 0
                revert with memory
                  from mem[64]
                   len _308 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 and sub_c8986cee > -1 / block.number - poolInfo[idx].field_512:
                revert with 0, 17
            if not block.number - poolInfo[idx].field_512:
                revert with 0, 18
            if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) / block.number - poolInfo[idx].field_512 != sub_c8986cee:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                _228 = mem[64]
                mem[64] = mem[64] + 64
                mem[_228] = 26
                mem[_228 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _231 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _231 + 68] = mem[idx + _228 + 32]
                        idx = idx + 32
                        continue 
                    mem[_231 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _231 + -mem[64] + 100
                _253 = mem[64]
                mem[64] = mem[64] + 64
                mem[_253] = 26
                mem[_253 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_300] = 26
                    mem[_300 + 32] = 'SafeMath: division by zero'
                    if _204:
                        if poolInfo[idx].field_768 > !(0 / _204):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _204) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _204
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _307 + 68] = mem[idx + _300 + 32]
                        idx = idx + 32
                        continue 
                    mem[_307 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _307 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_326] = 26
                mem[_326 + 32] = 'SafeMath: division by zero'
                if _204:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _204):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _204) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _204
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _335 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _335 + 68] = mem[idx + _326 + 32]
                    idx = idx + 32
                    continue 
                mem[_335 + 94] = 0
                revert with memory
                  from mem[64]
                   len _335 + -mem[64] + 100
            if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) and poolInfo[idx].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                revert with 0, 17
            if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                revert with 0, 18
            if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_246] = 26
            mem[_246 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _249 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _249 + 68] = mem[idx + _246 + 32]
                    idx = idx + 32
                    continue 
                mem[_249 + 94] = 0
                revert with memory
                  from mem[64]
                   len _249 + -mem[64] + 100
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 26
            mem[_271 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                _325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_325] = 26
                mem[_325 + 32] = 'SafeMath: division by zero'
                if _204:
                    if poolInfo[idx].field_768 > !(0 / _204):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _204) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _204
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _334 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _334 + 68] = mem[idx + _325 + 32]
                    idx = idx + 32
                    continue 
                mem[_334 + 94] = 0
                revert with memory
                  from mem[64]
                   len _334 + -mem[64] + 100
            if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _357 = mem[64]
            mem[64] = mem[64] + 64
            mem[_357] = 26
            mem[_357 + 32] = 'SafeMath: division by zero'
            if _204:
                if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _204):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _204) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _204
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _367 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _367 + 68] = mem[idx + _357 + 32]
                idx = idx + 32
                continue 
            mem[_367 + 94] = 0
            revert with memory
              from mem[64]
               len _367 + -mem[64] + 100
        if not poolInfo[idx].field_1280:
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _206 = mem[64]
        mem[64] = mem[64] + 64
        mem[_206] = 30
        mem[_206 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _209 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _209 + 68] = mem[idx + _206 + 32]
                idx = idx + 32
                continue 
            mem[_209 + 98] = 0
            revert with memory
              from mem[64]
               len _209 + -mem[64] + 100
        if block.number < poolInfo[idx].field_512:
            revert with 0, 17
        if not block.number - poolInfo[idx].field_512:
            _221 = mem[64]
            mem[64] = mem[64] + 64
            mem[_221] = 26
            mem[_221 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _225 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _225 + 68] = mem[idx + _221 + 32]
                    idx = idx + 32
                    continue 
                mem[_225 + 94] = 0
                revert with memory
                  from mem[64]
                   len _225 + -mem[64] + 100
            _241 = mem[64]
            mem[64] = mem[64] + 64
            mem[_241] = 26
            mem[_241 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_284] = 26
                mem[_284 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _287 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _287 + 68] = mem[idx + _284 + 32]
                    idx = idx + 32
                    continue 
                mem[_287 + 94] = 0
                revert with memory
                  from mem[64]
                   len _287 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_306] = 26
            mem[_306 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _314 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _314 + 68] = mem[idx + _306 + 32]
                idx = idx + 32
                continue 
            mem[_314 + 94] = 0
            revert with memory
              from mem[64]
               len _314 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 and sub_c8986cee > -1 / block.number - poolInfo[idx].field_512:
            revert with 0, 17
        if not block.number - poolInfo[idx].field_512:
            revert with 0, 18
        if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) / block.number - poolInfo[idx].field_512 != sub_c8986cee:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
            _230 = mem[64]
            mem[64] = mem[64] + 64
            mem[_230] = 26
            mem[_230 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _236 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _236 + 68] = mem[idx + _230 + 32]
                    idx = idx + 32
                    continue 
                mem[_236 + 94] = 0
                revert with memory
                  from mem[64]
                   len _236 + -mem[64] + 100
            _258 = mem[64]
            mem[64] = mem[64] + 64
            mem[_258] = 26
            mem[_258 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _305 = mem[64]
                mem[64] = mem[64] + 64
                mem[_305] = 26
                mem[_305 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _313 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _313 + 68] = mem[idx + _305 + 32]
                    idx = idx + 32
                    continue 
                mem[_313 + 94] = 0
                revert with memory
                  from mem[64]
                   len _313 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _332 = mem[64]
            mem[64] = mem[64] + 64
            mem[_332] = 26
            mem[_332 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _344 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _344 + 68] = mem[idx + _332 + 32]
                idx = idx + 32
                continue 
            mem[_344 + 94] = 0
            revert with memory
              from mem[64]
               len _344 + -mem[64] + 100
        if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) and poolInfo[idx].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
            revert with 0, 17
        if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
            revert with 0, 18
        if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _248 = mem[64]
        mem[64] = mem[64] + 64
        mem[_248] = 26
        mem[_248 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _254 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _254 + 68] = mem[idx + _248 + 32]
                idx = idx + 32
                continue 
            mem[_254 + 94] = 0
            revert with memory
              from mem[64]
               len _254 + -mem[64] + 100
        _274 = mem[64]
        mem[64] = mem[64] + 64
        mem[_274] = 26
        mem[_274 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_ae62161eAddress)
        call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_ae62161eAddress)
        call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
            _331 = mem[64]
            mem[64] = mem[64] + 64
            mem[_331] = 26
            mem[_331 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _343 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _343 + 68] = mem[idx + _331 + 32]
                idx = idx + 32
                continue 
            mem[_343 + 94] = 0
            revert with memory
              from mem[64]
               len _343 + -mem[64] + 100
        if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _364 = mem[64]
        mem[64] = mem[64] + 64
        mem[_364] = 26
        mem[_364 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_1280:
            if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                revert with 0, 17
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _375 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _375 + 68] = mem[idx + _364 + 32]
            idx = idx + 32
            continue 
        mem[_375 + 94] = 0
        revert with memory
          from mem[64]
           len _375 + -mem[64] + 100
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 10
        if block.number <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _209 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _210 = mem[_209]
        if sub_ae62161eAddress != poolInfo[idx].field_0:
            if not mem[_209]:
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _211 = mem[64]
            mem[64] = mem[64] + 64
            mem[_211] = 30
            mem[_211 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _213 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _213 + 68] = mem[idx + _211 + 32]
                    idx = idx + 32
                    continue 
                mem[_213 + 98] = 0
                revert with memory
                  from mem[64]
                   len _213 + -mem[64] + 100
            if block.number < poolInfo[idx].field_512:
                revert with 0, 17
            if not block.number - poolInfo[idx].field_512:
                _224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_224] = 26
                mem[_224 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _228 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _228 + 68] = mem[idx + _224 + 32]
                        idx = idx + 32
                        continue 
                    mem[_228 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _228 + -mem[64] + 100
                _241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_241] = 26
                mem[_241 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_287] = 26
                    mem[_287 + 32] = 'SafeMath: division by zero'
                    if _210:
                        if poolInfo[idx].field_768 > !(0 / _210):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _210) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _210
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _291 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _291 + 68] = mem[idx + _287 + 32]
                        idx = idx + 32
                        continue 
                    mem[_291 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _291 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _307 = mem[64]
                mem[64] = mem[64] + 64
                mem[_307] = 26
                mem[_307 + 32] = 'SafeMath: division by zero'
                if _210:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _210):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _210) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _210
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _314 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _314 + 68] = mem[idx + _307 + 32]
                    idx = idx + 32
                    continue 
                mem[_314 + 94] = 0
                revert with memory
                  from mem[64]
                   len _314 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 and sub_c8986cee > -1 / block.number - poolInfo[idx].field_512:
                revert with 0, 17
            if not block.number - poolInfo[idx].field_512:
                revert with 0, 18
            if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) / block.number - poolInfo[idx].field_512 != sub_c8986cee:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                _234 = mem[64]
                mem[64] = mem[64] + 64
                mem[_234] = 26
                mem[_234 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _237 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _237 + 68] = mem[idx + _234 + 32]
                        idx = idx + 32
                        continue 
                    mem[_237 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _237 + -mem[64] + 100
                _259 = mem[64]
                mem[64] = mem[64] + 64
                mem[_259] = 26
                mem[_259 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _306 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_306] = 26
                    mem[_306 + 32] = 'SafeMath: division by zero'
                    if _210:
                        if poolInfo[idx].field_768 > !(0 / _210):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _210) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _210
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _313 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _313 + 68] = mem[idx + _306 + 32]
                        idx = idx + 32
                        continue 
                    mem[_313 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _313 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _332 = mem[64]
                mem[64] = mem[64] + 64
                mem[_332] = 26
                mem[_332 + 32] = 'SafeMath: division by zero'
                if _210:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _210):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _210) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _210
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _341 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _341 + 68] = mem[idx + _332 + 32]
                    idx = idx + 32
                    continue 
                mem[_341 + 94] = 0
                revert with memory
                  from mem[64]
                   len _341 + -mem[64] + 100
            if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) and poolInfo[idx].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                revert with 0, 17
            if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                revert with 0, 18
            if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _252 = mem[64]
            mem[64] = mem[64] + 64
            mem[_252] = 26
            mem[_252 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _255 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _255 + 68] = mem[idx + _252 + 32]
                    idx = idx + 32
                    continue 
                mem[_255 + 94] = 0
                revert with memory
                  from mem[64]
                   len _255 + -mem[64] + 100
            _277 = mem[64]
            mem[64] = mem[64] + 64
            mem[_277] = 26
            mem[_277 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                _331 = mem[64]
                mem[64] = mem[64] + 64
                mem[_331] = 26
                mem[_331 + 32] = 'SafeMath: division by zero'
                if _210:
                    if poolInfo[idx].field_768 > !(0 / _210):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _210) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _210
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _340 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _340 + 68] = mem[idx + _331 + 32]
                    idx = idx + 32
                    continue 
                mem[_340 + 94] = 0
                revert with memory
                  from mem[64]
                   len _340 + -mem[64] + 100
            if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _363 = mem[64]
            mem[64] = mem[64] + 64
            mem[_363] = 26
            mem[_363 + 32] = 'SafeMath: division by zero'
            if _210:
                if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _210):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _210) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _210
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _373 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _373 + 68] = mem[idx + _363 + 32]
                idx = idx + 32
                continue 
            mem[_373 + 94] = 0
            revert with memory
              from mem[64]
               len _373 + -mem[64] + 100
        if not poolInfo[idx].field_1280:
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _212 = mem[64]
        mem[64] = mem[64] + 64
        mem[_212] = 30
        mem[_212 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.number:
            _215 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _215 + 68] = mem[idx + _212 + 32]
                idx = idx + 32
                continue 
            mem[_215 + 98] = 0
            revert with memory
              from mem[64]
               len _215 + -mem[64] + 100
        if block.number < poolInfo[idx].field_512:
            revert with 0, 17
        if not block.number - poolInfo[idx].field_512:
            _227 = mem[64]
            mem[64] = mem[64] + 64
            mem[_227] = 26
            mem[_227 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _231 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _231 + 68] = mem[idx + _227 + 32]
                    idx = idx + 32
                    continue 
                mem[_231 + 94] = 0
                revert with memory
                  from mem[64]
                   len _231 + -mem[64] + 100
            _247 = mem[64]
            mem[64] = mem[64] + 64
            mem[_247] = 26
            mem[_247 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_290] = 26
                mem[_290 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _293 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _293 + 68] = mem[idx + _290 + 32]
                    idx = idx + 32
                    continue 
                mem[_293 + 94] = 0
                revert with memory
                  from mem[64]
                   len _293 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _312 = mem[64]
            mem[64] = mem[64] + 64
            mem[_312] = 26
            mem[_312 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _320 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _320 + 68] = mem[idx + _312 + 32]
                idx = idx + 32
                continue 
            mem[_320 + 94] = 0
            revert with memory
              from mem[64]
               len _320 + -mem[64] + 100
        if block.number - poolInfo[idx].field_512 and sub_c8986cee > -1 / block.number - poolInfo[idx].field_512:
            revert with 0, 17
        if not block.number - poolInfo[idx].field_512:
            revert with 0, 18
        if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) / block.number - poolInfo[idx].field_512 != sub_c8986cee:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
            _236 = mem[64]
            mem[64] = mem[64] + 64
            mem[_236] = 26
            mem[_236 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _242 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _242 + 68] = mem[idx + _236 + 32]
                    idx = idx + 32
                    continue 
                mem[_242 + 94] = 0
                revert with memory
                  from mem[64]
                   len _242 + -mem[64] + 100
            _264 = mem[64]
            mem[64] = mem[64] + 64
            mem[_264] = 26
            mem[_264 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, 0 / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_311] = 26
                mem[_311 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _319 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _319 + 68] = mem[idx + _311 + 32]
                    idx = idx + 32
                    continue 
                mem[_319 + 94] = 0
                revert with memory
                  from mem[64]
                   len _319 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _338 = mem[64]
            mem[64] = mem[64] + 64
            mem[_338] = 26
            mem[_338 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _350 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _350 + 68] = mem[idx + _338 + 32]
                idx = idx + 32
                continue 
            mem[_350 + 94] = 0
            revert with memory
              from mem[64]
               len _350 + -mem[64] + 100
        if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) and poolInfo[idx].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
            revert with 0, 17
        if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
            revert with 0, 18
        if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _254 = mem[64]
        mem[64] = mem[64] + 64
        mem[_254] = 26
        mem[_254 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _260 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _260 + 68] = mem[idx + _254 + 32]
                idx = idx + 32
                continue 
            mem[_260 + 94] = 0
            revert with memory
              from mem[64]
               len _260 + -mem[64] + 100
        _280 = mem[64]
        mem[64] = mem[64] + 64
        mem[_280] = 26
        mem[_280 + 32] = 'SafeMath: division by zero'
        require ext_code.size(sub_ae62161eAddress)
        call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args devaddr, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(sub_ae62161eAddress)
        call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
            _337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_337] = 26
            mem[_337 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _349 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _349 + 68] = mem[idx + _337 + 32]
                idx = idx + 32
                continue 
            mem[_349 + 94] = 0
            revert with memory
              from mem[64]
               len _349 + -mem[64] + 100
        if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _370 = mem[64]
        mem[64] = mem[64] + 64
        mem[_370] = 26
        mem[_370 + 32] = 'SafeMath: division by zero'
        if poolInfo[idx].field_1280:
            if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                revert with 0, 17
            if poolInfo[idx].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _381 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _381 + 68] = mem[idx + _370 + 32]
            idx = idx + 32
            continue 
        mem[_381 + 94] = 0
        revert with memory
          from mem[64]
           len _381 + -mem[64] + 100
    emit EmissionRateUpdated(sub_c8986cee, arg1, msg.sender);
    sub_c8986cee = arg1
}

function sub_d9da843b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if sub_ae62161eAddress != poolInfo[arg1].field_0:
        if not ext_call.return_data[0]:
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if block.number - poolInfo[arg1].field_512 and sub_c8986cee > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if not block.number - poolInfo[arg1].field_512:
            revert with 0, 18
        if (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) / block.number - poolInfo[arg1].field_512 != sub_c8986cee:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero', 0
                if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                    revert with 0, 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 0, 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 0, 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) and poolInfo[arg1].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
            revert with 0, 17
        if not (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
            revert with 0, 18
        if (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1280:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.number:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.number < poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.number - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number - poolInfo[arg1].field_512 and sub_c8986cee > -1 / block.number - poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.number - poolInfo[arg1].field_512:
        revert with 0, 18
    if (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) / block.number - poolInfo[arg1].field_512 != sub_c8986cee:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not poolInfo[arg1].field_1280:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) and poolInfo[arg1].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
        revert with 0, 17
    if not (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee):
        revert with 0, 18
    if (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / (block.number * sub_c8986cee) - (poolInfo[arg1].field_512 * sub_c8986cee) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero', 0
    if not (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
        if not poolInfo[arg1].field_1280:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(0 / poolInfo[arg1].field_1280):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1280):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 18
    if 10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not poolInfo[arg1].field_1280:
        revert with 0, 'SafeMath: division by zero', 0
    if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0, 17
    if poolInfo[arg1].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return -userInfo[arg1][address(arg2)].field_256
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_c8986cee * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_c8986cee * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1280 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function add(uint256 arg1, address arg2, uint16 arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = arg2
    mem[32] = 12
    if stor12[address(arg2)]:
        revert with 0, 'nonDuplicated: duplicated'
    if arg3 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 10
            if block.number <= poolInfo[idx].field_512:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _251 = mem[_250]
            if sub_ae62161eAddress != poolInfo[idx].field_0:
                if not mem[_250]:
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if not poolInfo[idx].field_256:
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _272 = mem[64]
                mem[64] = mem[64] + 64
                mem[_272] = 30
                mem[_272 + 32] = 'SafeMath: subtraction overflow'
                if poolInfo[idx].field_512 > block.number:
                    _274 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _274 + 68] = mem[idx + _272 + 32]
                        idx = idx + 32
                        continue 
                    mem[_274 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _274 + -mem[64] + 100
                if block.number < poolInfo[idx].field_512:
                    revert with 0, 17
                if not block.number - poolInfo[idx].field_512:
                    _285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_285] = 26
                    mem[_285 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _289 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _289 + 68] = mem[idx + _285 + 32]
                            idx = idx + 32
                            continue 
                        mem[_289 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _289 + -mem[64] + 100
                    _302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_302] = 26
                    mem[_302 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ae62161eAddress)
                    call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ae62161eAddress)
                    call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_348] = 26
                        mem[_348 + 32] = 'SafeMath: division by zero'
                        if _251:
                            if poolInfo[idx].field_768 > !(0 / _251):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (0 / _251) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / _251
                            poolInfo[idx].field_512 = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _352 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _352 + 68] = mem[idx + _348 + 32]
                            idx = idx + 32
                            continue 
                        mem[_352 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _352 + -mem[64] + 100
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_368] = 26
                    mem[_368 + 32] = 'SafeMath: division by zero'
                    if _251:
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _251):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _251) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _251
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _375 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _375 + 68] = mem[idx + _368 + 32]
                        idx = idx + 32
                        continue 
                    mem[_375 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _375 + -mem[64] + 100
                if block.number - poolInfo[idx].field_512 and sub_c8986cee > -1 / block.number - poolInfo[idx].field_512:
                    revert with 0, 17
                if not block.number - poolInfo[idx].field_512:
                    revert with 0, 18
                if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) / block.number - poolInfo[idx].field_512 != sub_c8986cee:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                    _295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_295] = 26
                    mem[_295 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        _298 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _298 + 68] = mem[idx + _295 + 32]
                            idx = idx + 32
                            continue 
                        mem[_298 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _298 + -mem[64] + 100
                    _320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_320] = 26
                    mem[_320 + 32] = 'SafeMath: division by zero'
                    require ext_code.size(sub_ae62161eAddress)
                    call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = 0 / totalAllocPoint
                    require ext_code.size(sub_ae62161eAddress)
                    call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        _367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_367] = 26
                        mem[_367 + 32] = 'SafeMath: division by zero'
                        if _251:
                            if poolInfo[idx].field_768 > !(0 / _251):
                                revert with 0, 17
                            if poolInfo[idx].field_768 + (0 / _251) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / _251
                            poolInfo[idx].field_512 = block.number
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        _374 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _374 + 68] = mem[idx + _367 + 32]
                            idx = idx + 32
                            continue 
                        mem[_374 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _374 + -mem[64] + 100
                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                        revert with 0, 17
                    if not 0 / totalAllocPoint:
                        revert with 0, 18
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _393 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_393] = 26
                    mem[_393 + 32] = 'SafeMath: division by zero'
                    if _251:
                        if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _251):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _251) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _251
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _402 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _402 + 68] = mem[idx + _393 + 32]
                        idx = idx + 32
                        continue 
                    mem[_402 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _402 + -mem[64] + 100
                if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) and poolInfo[idx].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                    revert with 0, 17
                if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                    revert with 0, 18
                if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) != poolInfo[idx].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
                _313 = mem[64]
                mem[64] = mem[64] + 64
                mem[_313] = 26
                mem[_313 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _316 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _316 + 68] = mem[idx + _313 + 32]
                        idx = idx + 32
                        continue 
                    mem[_316 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _316 + -mem[64] + 100
                _338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_338] = 26
                mem[_338 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                    _392 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_392] = 26
                    mem[_392 + 32] = 'SafeMath: division by zero'
                    if _251:
                        if poolInfo[idx].field_768 > !(0 / _251):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _251) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _251
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _401 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _401 + 68] = mem[idx + _392 + 32]
                        idx = idx + 32
                        continue 
                    mem[_401 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _401 + -mem[64] + 100
                if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _424 = mem[64]
                mem[64] = mem[64] + 64
                mem[_424] = 26
                mem[_424 + 32] = 'SafeMath: division by zero'
                if _251:
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _251):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _251) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / _251
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _434 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _434 + 68] = mem[idx + _424 + 32]
                    idx = idx + 32
                    continue 
                mem[_434 + 94] = 0
                revert with memory
                  from mem[64]
                   len _434 + -mem[64] + 100
            if not poolInfo[idx].field_1280:
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _273 = mem[64]
            mem[64] = mem[64] + 64
            mem[_273] = 30
            mem[_273 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.number:
                _276 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _276 + 68] = mem[idx + _273 + 32]
                    idx = idx + 32
                    continue 
                mem[_276 + 98] = 0
                revert with memory
                  from mem[64]
                   len _276 + -mem[64] + 100
            if block.number < poolInfo[idx].field_512:
                revert with 0, 17
            if not block.number - poolInfo[idx].field_512:
                _288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_288] = 26
                mem[_288 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _292 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _292 + 68] = mem[idx + _288 + 32]
                        idx = idx + 32
                        continue 
                    mem[_292 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _292 + -mem[64] + 100
                _308 = mem[64]
                mem[64] = mem[64] + 64
                mem[_308] = 26
                mem[_308 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _351 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_351] = 26
                    mem[_351 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _354 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _354 + 68] = mem[idx + _351 + 32]
                        idx = idx + 32
                        continue 
                    mem[_354 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _354 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _373 = mem[64]
                mem[64] = mem[64] + 64
                mem[_373] = 26
                mem[_373 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _381 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _381 + 68] = mem[idx + _373 + 32]
                    idx = idx + 32
                    continue 
                mem[_381 + 94] = 0
                revert with memory
                  from mem[64]
                   len _381 + -mem[64] + 100
            if block.number - poolInfo[idx].field_512 and sub_c8986cee > -1 / block.number - poolInfo[idx].field_512:
                revert with 0, 17
            if not block.number - poolInfo[idx].field_512:
                revert with 0, 18
            if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) / block.number - poolInfo[idx].field_512 != sub_c8986cee:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                _297 = mem[64]
                mem[64] = mem[64] + 64
                mem[_297] = 26
                mem[_297 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _303 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _303 + 68] = mem[idx + _297 + 32]
                        idx = idx + 32
                        continue 
                    mem[_303 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _303 + -mem[64] + 100
                _325 = mem[64]
                mem[64] = mem[64] + 64
                mem[_325] = 26
                mem[_325 + 32] = 'SafeMath: division by zero'
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args devaddr, 0 / totalAllocPoint / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(sub_ae62161eAddress)
                call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _372 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_372] = 26
                    mem[_372 + 32] = 'SafeMath: division by zero'
                    if poolInfo[idx].field_1280:
                        if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                        poolInfo[idx].field_512 = block.number
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _380 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _380 + 68] = mem[idx + _372 + 32]
                        idx = idx + 32
                        continue 
                    mem[_380 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _380 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _399 = mem[64]
                mem[64] = mem[64] + 64
                mem[_399] = 26
                mem[_399 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _411 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _411 + 68] = mem[idx + _399 + 32]
                    idx = idx + 32
                    continue 
                mem[_411 + 94] = 0
                revert with memory
                  from mem[64]
                   len _411 + -mem[64] + 100
            if (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) and poolInfo[idx].field_256 > -1 / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                revert with 0, 17
            if not (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee):
                revert with 0, 18
            if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / (block.number * sub_c8986cee) - (poolInfo[idx].field_512 * sub_c8986cee) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _315 = mem[64]
            mem[64] = mem[64] + 64
            mem[_315] = 26
            mem[_315 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _321 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _321 + 68] = mem[idx + _315 + 32]
                    idx = idx + 32
                    continue 
                mem[_321 + 94] = 0
                revert with memory
                  from mem[64]
                   len _321 + -mem[64] + 100
            _341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_341] = 26
            mem[_341 + 32] = 'SafeMath: division by zero'
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args devaddr, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(sub_ae62161eAddress)
            call sub_ae62161eAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args this.address, (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                _398 = mem[64]
                mem[64] = mem[64] + 64
                mem[_398] = 26
                mem[_398 + 32] = 'SafeMath: division by zero'
                if poolInfo[idx].field_1280:
                    if poolInfo[idx].field_768 > !(0 / poolInfo[idx].field_1280):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1280
                    poolInfo[idx].field_512 = block.number
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _410 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _410 + 68] = mem[idx + _398 + 32]
                    idx = idx + 32
                    continue 
                mem[_410 + 94] = 0
                revert with memory
                  from mem[64]
                   len _410 + -mem[64] + 100
            if (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _431 = mem[64]
            mem[64] = mem[64] + 64
            mem[_431] = 26
            mem[_431 + 32] = 'SafeMath: division by zero'
            if poolInfo[idx].field_1280:
                if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.number * sub_c8986cee * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_c8986cee * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1280
                poolInfo[idx].field_512 = block.number
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _442 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _442 + 68] = mem[idx + _431 + 32]
                idx = idx + 32
                continue 
            mem[_442 + 94] = 0
            revert with memory
              from mem[64]
               len _442 + -mem[64] + 100
    if totalAllocPoint > !arg1:
        revert with 0, 17
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    stor12[address(arg2)] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storC65A[stor10.length] = arg1
    if block.number > startBlock:
        storC65A[stor10.length] = block.number
    else:
        storC65A[stor10.length] = startBlock
    storC65A[stor10.length] = 0
    storC65A[stor10.length] = arg3
    storC65A[stor10.length] = 0
}



}
