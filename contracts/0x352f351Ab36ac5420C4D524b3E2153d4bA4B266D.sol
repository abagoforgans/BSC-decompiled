contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3;
uint8 stor3; offset 8
uint256 totalBurn;
uint256 deployTime;
uint256 totalSupply;
address DAddress;
address TAddress;
address PAddress;
address CAddress;
address ADAddress;
address AAddress;
address MAddress;
address busdAddress;
address deadAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function D() payable {
    return DAddress
}

function totalSupply() payable {
    return totalSupply
}

function sub_2171f26c(?) payable {
    return bool(uint8(stor3.field_8))
}

function deadAddress() payable {
    return deadAddress
}

function T() payable {
    return TAddress
}

function decimals() payable {
    return decimals
}

function totalBurn() payable {
    return totalBurn
}

function busd() payable {
    return busdAddress
}

function M() payable {
    return MAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function deployTime() payable {
    return deployTime
}

function C() payable {
    return CAddress
}

function P() payable {
    return PAddress
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isLocked() payable {
    return bool(uint8(stor3.field_0))
}

function AD() payable {
    return ADAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function A() payable {
    return AAddress
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

function sub_8c76dc93(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor3.field_0):
        revert with 0, 'Token contract is locked'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function swap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor3.field_0):
        revert with 0, 'Token Smart contract is locked'
    require ext_code.size(this.address)
    call this.address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        require ext_code.size(busdAddress)
        call busdAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require arg1
        if arg1 / arg1 != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(busdAddress)
        call busdAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 / 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe42455032303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    else:
        if arg2:
            require arg2
            if 19 * arg2 / arg2 != 19:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            else:
                if msg.sender == DAddress:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    else:
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            balanceOf[address(arg1)] += arg2
                            if not arg1:
                                if totalBurn + arg2 < totalBurn:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    totalBurn += arg2
                                    if arg2 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalSupply -= arg2
                                        emit Burn(arg2, msg.sender, 0);
                                        if not uint8(stor3.field_0):
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            require ext_code.size(busdAddress)
                                            staticcall busdAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalSupply <= 100000000000 * 10^18:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if deployTime > block.timestamp:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                            else:
                                if arg1 != deadAddress:
                                    if not uint8(stor3.field_0):
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        require ext_code.size(busdAddress)
                                        staticcall busdAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                uint8(stor3.field_0) = 0
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if totalSupply <= 100000000000 * 10^18:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if deployTime > block.timestamp:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                else:
                                    if totalBurn + arg2 < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalBurn += arg2
                                        if arg2 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            totalSupply -= arg2
                                            emit Burn(arg2, msg.sender, 0);
                                            if not uint8(stor3.field_0):
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                require ext_code.size(busdAddress)
                                                staticcall busdAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalSupply <= 100000000000 * 10^18:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if deployTime > block.timestamp:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                else:
                    if msg.sender == TAddress:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        else:
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                balanceOf[address(arg1)] += arg2
                                if not arg1:
                                    if totalBurn + arg2 < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalBurn += arg2
                                        if arg2 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            totalSupply -= arg2
                                            emit Burn(arg2, msg.sender, 0);
                                            if not uint8(stor3.field_0):
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                require ext_code.size(busdAddress)
                                                staticcall busdAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalSupply <= 100000000000 * 10^18:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if deployTime > block.timestamp:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                else:
                                    if arg1 != deadAddress:
                                        if not uint8(stor3.field_0):
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            require ext_code.size(busdAddress)
                                            staticcall busdAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalSupply <= 100000000000 * 10^18:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if deployTime > block.timestamp:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                    else:
                                        if totalBurn + arg2 < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalBurn += arg2
                                            if arg2 > totalSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                totalSupply -= arg2
                                                emit Burn(arg2, msg.sender, 0);
                                                if not uint8(stor3.field_0):
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    require ext_code.size(busdAddress)
                                                    staticcall busdAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalSupply <= 100000000000 * 10^18:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if deployTime > block.timestamp:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                    else:
                        if msg.sender == PAddress:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            else:
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    balanceOf[address(arg1)] += arg2
                                    if not arg1:
                                        if totalBurn + arg2 < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalBurn += arg2
                                            if arg2 > totalSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                totalSupply -= arg2
                                                emit Burn(arg2, msg.sender, 0);
                                                if not uint8(stor3.field_0):
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    require ext_code.size(busdAddress)
                                                    staticcall busdAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalSupply <= 100000000000 * 10^18:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if deployTime > block.timestamp:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                    else:
                                        if arg1 != deadAddress:
                                            if not uint8(stor3.field_0):
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                require ext_code.size(busdAddress)
                                                staticcall busdAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalSupply <= 100000000000 * 10^18:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if deployTime > block.timestamp:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                        else:
                                            if totalBurn + arg2 < totalBurn:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalBurn += arg2
                                                if arg2 > totalSupply:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    totalSupply -= arg2
                                                    emit Burn(arg2, msg.sender, 0);
                                                    if not uint8(stor3.field_0):
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        require ext_code.size(busdAddress)
                                                        staticcall busdAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if deployTime > block.timestamp:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                        else:
                            if msg.sender == CAddress:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        if not arg1:
                                            if totalBurn + arg2 < totalBurn:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalBurn += arg2
                                                if arg2 > totalSupply:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    totalSupply -= arg2
                                                    emit Burn(arg2, msg.sender, 0);
                                                    if not uint8(stor3.field_0):
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        require ext_code.size(busdAddress)
                                                        staticcall busdAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if deployTime > block.timestamp:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                        else:
                                            if arg1 != deadAddress:
                                                if not uint8(stor3.field_0):
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    require ext_code.size(busdAddress)
                                                    staticcall busdAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalSupply <= 100000000000 * 10^18:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if deployTime > block.timestamp:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                            else:
                                                if totalBurn + arg2 < totalBurn:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalBurn += arg2
                                                    if arg2 > totalSupply:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Burn(arg2, msg.sender, 0);
                                                        if not uint8(stor3.field_0):
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            require ext_code.size(busdAddress)
                                                            staticcall busdAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if deployTime > block.timestamp:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                            else:
                                if msg.sender == ADAddress:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[230 len 26],
                                                    mem[282 len 6]
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            if not arg1:
                                                if totalBurn + arg2 < totalBurn:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalBurn += arg2
                                                    if arg2 > totalSupply:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Burn(arg2, msg.sender, 0);
                                                        if not uint8(stor3.field_0):
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            require ext_code.size(busdAddress)
                                                            staticcall busdAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if deployTime > block.timestamp:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                            else:
                                                if arg1 != deadAddress:
                                                    if not uint8(stor3.field_0):
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        require ext_code.size(busdAddress)
                                                        staticcall busdAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if deployTime > block.timestamp:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                else:
                                                    if totalBurn + arg2 < totalBurn:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalBurn += arg2
                                                        if arg2 > totalSupply:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Burn(arg2, msg.sender, 0);
                                                            if not uint8(stor3.field_0):
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                require ext_code.size(busdAddress)
                                                                staticcall busdAddress.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if deployTime > block.timestamp:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                else:
                                    if msg.sender == AAddress:
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                balanceOf[address(arg1)] += arg2
                                                if not arg1:
                                                    if totalBurn + arg2 < totalBurn:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalBurn += arg2
                                                        if arg2 > totalSupply:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Burn(arg2, msg.sender, 0);
                                                            if not uint8(stor3.field_0):
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                require ext_code.size(busdAddress)
                                                                staticcall busdAddress.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if deployTime > block.timestamp:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                else:
                                                    if arg1 != deadAddress:
                                                        if not uint8(stor3.field_0):
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            require ext_code.size(busdAddress)
                                                            staticcall busdAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if deployTime > block.timestamp:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                    else:
                                                        if totalBurn + arg2 < totalBurn:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalBurn += arg2
                                                            if arg2 > totalSupply:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                totalSupply -= arg2
                                                                emit Burn(arg2, msg.sender, 0);
                                                                if not uint8(stor3.field_0):
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    require ext_code.size(busdAddress)
                                                                    staticcall busdAddress.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if deployTime > block.timestamp:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                    else:
                                        if msg.sender == MAddress:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    balanceOf[address(arg1)] += arg2
                                                    if not arg1:
                                                        if totalBurn + arg2 < totalBurn:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalBurn += arg2
                                                            if arg2 > totalSupply:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                totalSupply -= arg2
                                                                emit Burn(arg2, msg.sender, 0);
                                                                if not uint8(stor3.field_0):
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    require ext_code.size(busdAddress)
                                                                    staticcall busdAddress.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if deployTime > block.timestamp:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                    else:
                                                        if arg1 != deadAddress:
                                                            if not uint8(stor3.field_0):
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                require ext_code.size(busdAddress)
                                                                staticcall busdAddress.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if deployTime > block.timestamp:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                        else:
                                                            if totalBurn + arg2 < totalBurn:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalBurn += arg2
                                                                if arg2 > totalSupply:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    totalSupply -= arg2
                                                                    emit Burn(arg2, msg.sender, 0);
                                                                    if not uint8(stor3.field_0):
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        require ext_code.size(busdAddress)
                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if deployTime > block.timestamp:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                        else:
                                            if not arg1:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[230 len 26],
                                                                mem[282 len 6]
                                                else:
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        balanceOf[address(arg1)] += arg2
                                                        if not arg1:
                                                            if totalBurn + arg2 < totalBurn:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalBurn += arg2
                                                                if arg2 > totalSupply:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    totalSupply -= arg2
                                                                    emit Burn(arg2, msg.sender, 0);
                                                                    if not uint8(stor3.field_0):
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        require ext_code.size(busdAddress)
                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if deployTime > block.timestamp:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                        else:
                                                            if arg1 != deadAddress:
                                                                if not uint8(stor3.field_0):
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    require ext_code.size(busdAddress)
                                                                    staticcall busdAddress.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if deployTime > block.timestamp:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                            else:
                                                                if totalBurn + arg2 < totalBurn:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalBurn += arg2
                                                                    if arg2 > totalSupply:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        totalSupply -= arg2
                                                                        emit Burn(arg2, msg.sender, 0);
                                                                        if not uint8(stor3.field_0):
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            require ext_code.size(busdAddress)
                                                                            staticcall busdAddress.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            if deployTime > block.timestamp:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    uint8(stor3.field_0) = 0
                                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                                    return 1
                                            else:
                                                if arg1 != deadAddress:
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[230 len 26],
                                                                    mem[282 len 6]
                                                    else:
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if 19 * arg2 / 100 <= 0:
                                                            if balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100) < balanceOf[address(arg1)]:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100)
                                                                if not arg1:
                                                                    if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                        if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                            emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                            if not uint8(stor3.field_0):
                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                require ext_code.size(busdAddress)
                                                                                staticcall busdAddress.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                if deployTime > block.timestamp:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        uint8(stor3.field_0) = 0
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                else:
                                                                    if arg1 != deadAddress:
                                                                        if not uint8(stor3.field_0):
                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            require ext_code.size(busdAddress)
                                                                            staticcall busdAddress.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            if deployTime > block.timestamp:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    uint8(stor3.field_0) = 0
                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                    return 1
                                                                    else:
                                                                        if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                            if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                if not uint8(stor3.field_0):
                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    require ext_code.size(busdAddress)
                                                                                    staticcall busdAddress.0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args this.address
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                                    uint8(stor3.field_0) = 0
                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    if deployTime > block.timestamp:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                        else:
                                                            if 19 * arg2 / 100:
                                                                require 19 * arg2 / 100
                                                                if 15 * 19 * arg2 / 100 / 19 * arg2 / 100 != 15:
                                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
                                                                else:
                                                                    if 19 * arg2 / 100:
                                                                        require 19 * arg2 / 100
                                                                        if 4 * 19 * arg2 / 100 / 19 * arg2 / 100 != 4:
                                                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                                        else:
                                                                            if balanceOf[stor12] + (15 * 19 * arg2 / 100 / 19) < balanceOf[stor12]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                balanceOf[stor12] += 15 * 19 * arg2 / 100 / 19
                                                                                if balanceOf[stor13] + (4 * 19 * arg2 / 100 / 19) < balanceOf[stor13]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    balanceOf[stor13] += 4 * 19 * arg2 / 100 / 19
                                                                                    emit Transfer((15 * 19 * arg2 / 100 / 19), msg.sender, AAddress);
                                                                                    emit Transfer((4 * 19 * arg2 / 100 / 19), msg.sender, MAddress);
                                                                                    if balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100) < balanceOf[address(arg1)]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100)
                                                                                        if not arg1:
                                                                                            if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                                                if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                                    emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                                    if not uint8(stor3.field_0):
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        require ext_code.size(busdAddress)
                                                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args this.address
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                                                        uint8(stor3.field_0) = 0
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        if deployTime > block.timestamp:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                                return 1
                                                                                                                            else:
                                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                                return 1
                                                                                        else:
                                                                                            if arg1 != deadAddress:
                                                                                                if not uint8(stor3.field_0):
                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    require ext_code.size(busdAddress)
                                                                                                    staticcall busdAddress.0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args this.address
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if deployTime > block.timestamp:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                                                                                        else:
                                                                                                                            uint8(stor3.field_0) = 0
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                                                            else:
                                                                                                if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                                                    if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                                        emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                                        if not uint8(stor3.field_0):
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            require ext_code.size(busdAddress)
                                                                                                            staticcall busdAddress.0x70a08231 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args this.address
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                                        uint8(stor3.field_0) = 0
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                                                                            uint8(stor3.field_0) = 0
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                                                                                        else:
                                                                                                                            if deployTime > block.timestamp:
                                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                            else:
                                                                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                                    return 1
                                                                                                                                else:
                                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                                    return 1
                                                                    else:
                                                                        if balanceOf[stor12] + (15 * 19 * arg2 / 100 / 19) < balanceOf[stor12]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            balanceOf[stor12] += 15 * 19 * arg2 / 100 / 19
                                                                            if balanceOf[stor13] < balanceOf[stor13]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                emit Transfer((15 * 19 * arg2 / 100 / 19), msg.sender, AAddress);
                                                                                emit Transfer(0, msg.sender, MAddress);
                                                                                if balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100) < balanceOf[address(arg1)]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100)
                                                                                    if not arg1:
                                                                                        if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                                            if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                                emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                                if not uint8(stor3.field_0):
                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    require ext_code.size(busdAddress)
                                                                                                    staticcall busdAddress.0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args this.address
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if deployTime > block.timestamp:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                                                                                        else:
                                                                                                                            uint8(stor3.field_0) = 0
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                                                    else:
                                                                                        if arg1 != deadAddress:
                                                                                            if not uint8(stor3.field_0):
                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                require ext_code.size(busdAddress)
                                                                                                staticcall busdAddress.0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args this.address
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                        uint8(stor3.field_0) = 0
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if deployTime > block.timestamp:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        uint8(stor3.field_0) = 0
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                        else:
                                                                                            if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                                                if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                                    emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                                    if not uint8(stor3.field_0):
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        require ext_code.size(busdAddress)
                                                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args this.address
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                                                        uint8(stor3.field_0) = 0
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        if deployTime > block.timestamp:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                                return 1
                                                                                                                            else:
                                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                                return 1
                                                            else:
                                                                if 19 * arg2 / 100:
                                                                    require 19 * arg2 / 100
                                                                    if 4 * 19 * arg2 / 100 / 19 * arg2 / 100 != 4:
                                                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[421 len 31]
                                                                    else:
                                                                        if balanceOf[stor12] < balanceOf[stor12]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if balanceOf[stor13] + (4 * 19 * arg2 / 100 / 19) < balanceOf[stor13]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                balanceOf[stor13] += 4 * 19 * arg2 / 100 / 19
                                                                                emit Transfer(0, msg.sender, AAddress);
                                                                                emit Transfer((4 * 19 * arg2 / 100 / 19), msg.sender, MAddress);
                                                                                if balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100) < balanceOf[address(arg1)]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100)
                                                                                    if not arg1:
                                                                                        if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                                            if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                                emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                                if not uint8(stor3.field_0):
                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    require ext_code.size(busdAddress)
                                                                                                    staticcall busdAddress.0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args this.address
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if deployTime > block.timestamp:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                                                                                        else:
                                                                                                                            uint8(stor3.field_0) = 0
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                                                    else:
                                                                                        if arg1 != deadAddress:
                                                                                            if not uint8(stor3.field_0):
                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                require ext_code.size(busdAddress)
                                                                                                staticcall busdAddress.0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args this.address
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                        uint8(stor3.field_0) = 0
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if deployTime > block.timestamp:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        uint8(stor3.field_0) = 0
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                        else:
                                                                                            if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                                                if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                                    emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                                    if not uint8(stor3.field_0):
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        require ext_code.size(busdAddress)
                                                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args this.address
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                                                        uint8(stor3.field_0) = 0
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        if deployTime > block.timestamp:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                                return 1
                                                                                                                            else:
                                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                                return 1
                                                                else:
                                                                    if balanceOf[stor12] < balanceOf[stor12]:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if balanceOf[stor13] < balanceOf[stor13]:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            emit Transfer(0, msg.sender, AAddress);
                                                                            emit Transfer(0, msg.sender, MAddress);
                                                                            if balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100) < balanceOf[address(arg1)]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (19 * arg2 / 100)
                                                                                if not arg1:
                                                                                    if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                                        if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                            emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                            if not uint8(stor3.field_0):
                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                require ext_code.size(busdAddress)
                                                                                                staticcall busdAddress.0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args this.address
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                        uint8(stor3.field_0) = 0
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if deployTime > block.timestamp:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                                                    else:
                                                                                                                        uint8(stor3.field_0) = 0
                                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                        return 1
                                                                                else:
                                                                                    if arg1 != deadAddress:
                                                                                        if not uint8(stor3.field_0):
                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            require ext_code.size(busdAddress)
                                                                                            staticcall busdAddress.0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args this.address
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                    uint8(stor3.field_0) = 0
                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                        uint8(stor3.field_0) = 0
                                                                                                        emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            if deployTime > block.timestamp:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                    else:
                                                                                        if totalBurn + arg2 - (19 * arg2 / 100) < totalBurn:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            totalBurn = totalBurn + arg2 - (19 * arg2 / 100)
                                                                                            if arg2 - (19 * arg2 / 100) > totalSupply:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                totalSupply = totalSupply - arg2 + (19 * arg2 / 100)
                                                                                                emit Burn((arg2 - (19 * arg2 / 100)), msg.sender, 0);
                                                                                                if not uint8(stor3.field_0):
                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    require ext_code.size(busdAddress)
                                                                                                    staticcall busdAddress.0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args this.address
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                                            uint8(stor3.field_0) = 0
                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                            return 1
                                                                                                        else:
                                                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                                                uint8(stor3.field_0) = 0
                                                                                                                emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                return 1
                                                                                                            else:
                                                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                                                    uint8(stor3.field_0) = 0
                                                                                                                    emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                    return 1
                                                                                                                else:
                                                                                                                    if deployTime > block.timestamp:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                                                                                        else:
                                                                                                                            uint8(stor3.field_0) = 0
                                                                                                                            emit Transfer((arg2 - (19 * arg2 / 100)), msg.sender, arg1);
                                                                                                                            return 1
                                                else:
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[230 len 26],
                                                                    mem[282 len 6]
                                                    else:
                                                        balanceOf[address(msg.sender)] -= arg2
                                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            balanceOf[address(arg1)] += arg2
                                                            if not arg1:
                                                                if totalBurn + arg2 < totalBurn:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalBurn += arg2
                                                                    if arg2 > totalSupply:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        totalSupply -= arg2
                                                                        emit Burn(arg2, msg.sender, 0);
                                                                        if not uint8(stor3.field_0):
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            require ext_code.size(busdAddress)
                                                                            staticcall busdAddress.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            if deployTime > block.timestamp:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    uint8(stor3.field_0) = 0
                                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                                    return 1
                                                            else:
                                                                if arg1 != deadAddress:
                                                                    if not uint8(stor3.field_0):
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        require ext_code.size(busdAddress)
                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if deployTime > block.timestamp:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                                else:
                                                                    if totalBurn + arg2 < totalBurn:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        totalBurn += arg2
                                                                        if arg2 > totalSupply:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            totalSupply -= arg2
                                                                            emit Burn(arg2, msg.sender, 0);
                                                                            if not uint8(stor3.field_0):
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                require ext_code.size(busdAddress)
                                                                                staticcall busdAddress.0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args this.address
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                if deployTime > block.timestamp:
                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                else:
                                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                                        return 1
                                                                                                    else:
                                                                                                        uint8(stor3.field_0) = 0
                                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                                        return 1
        else:
            if msg.sender == DAddress:
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[230 len 26],
                                mem[282 len 6]
                else:
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        balanceOf[address(arg1)] += arg2
                        if not arg1:
                            if totalBurn + arg2 < totalBurn:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                totalBurn += arg2
                                if arg2 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    totalSupply -= arg2
                                    emit Burn(arg2, msg.sender, 0);
                                    if not uint8(stor3.field_0):
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        require ext_code.size(busdAddress)
                                        staticcall busdAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                uint8(stor3.field_0) = 0
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if totalSupply <= 100000000000 * 10^18:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if deployTime > block.timestamp:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                        else:
                            if arg1 != deadAddress:
                                if not uint8(stor3.field_0):
                                    emit Transfer(arg2, msg.sender, arg1);
                                    return 1
                                else:
                                    require ext_code.size(busdAddress)
                                    staticcall busdAddress.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                            uint8(stor3.field_0) = 0
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                uint8(stor3.field_0) = 0
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                if totalSupply <= 100000000000 * 10^18:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if deployTime > block.timestamp:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                            else:
                                if totalBurn + arg2 < totalBurn:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    totalBurn += arg2
                                    if arg2 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalSupply -= arg2
                                        emit Burn(arg2, msg.sender, 0);
                                        if not uint8(stor3.field_0):
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            require ext_code.size(busdAddress)
                                            staticcall busdAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalSupply <= 100000000000 * 10^18:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if deployTime > block.timestamp:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
            else:
                if msg.sender == TAddress:
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[230 len 26],
                                    mem[282 len 6]
                    else:
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            balanceOf[address(arg1)] += arg2
                            if not arg1:
                                if totalBurn + arg2 < totalBurn:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    totalBurn += arg2
                                    if arg2 > totalSupply:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        totalSupply -= arg2
                                        emit Burn(arg2, msg.sender, 0);
                                        if not uint8(stor3.field_0):
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            require ext_code.size(busdAddress)
                                            staticcall busdAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalSupply <= 100000000000 * 10^18:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if deployTime > block.timestamp:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                            else:
                                if arg1 != deadAddress:
                                    if not uint8(stor3.field_0):
                                        emit Transfer(arg2, msg.sender, arg1);
                                        return 1
                                    else:
                                        require ext_code.size(busdAddress)
                                        staticcall busdAddress.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                uint8(stor3.field_0) = 0
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if totalSupply <= 100000000000 * 10^18:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if deployTime > block.timestamp:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                else:
                                    if totalBurn + arg2 < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalBurn += arg2
                                        if arg2 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            totalSupply -= arg2
                                            emit Burn(arg2, msg.sender, 0);
                                            if not uint8(stor3.field_0):
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                require ext_code.size(busdAddress)
                                                staticcall busdAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalSupply <= 100000000000 * 10^18:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if deployTime > block.timestamp:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                else:
                    if msg.sender == PAddress:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[230 len 26],
                                        mem[282 len 6]
                        else:
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            else:
                                balanceOf[address(arg1)] += arg2
                                if not arg1:
                                    if totalBurn + arg2 < totalBurn:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        totalBurn += arg2
                                        if arg2 > totalSupply:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            totalSupply -= arg2
                                            emit Burn(arg2, msg.sender, 0);
                                            if not uint8(stor3.field_0):
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                require ext_code.size(busdAddress)
                                                staticcall busdAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalSupply <= 100000000000 * 10^18:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if deployTime > block.timestamp:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                else:
                                    if arg1 != deadAddress:
                                        if not uint8(stor3.field_0):
                                            emit Transfer(arg2, msg.sender, arg1);
                                            return 1
                                        else:
                                            require ext_code.size(busdAddress)
                                            staticcall busdAddress.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                    uint8(stor3.field_0) = 0
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalSupply <= 100000000000 * 10^18:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if deployTime > block.timestamp:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                    else:
                                        if totalBurn + arg2 < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalBurn += arg2
                                            if arg2 > totalSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                totalSupply -= arg2
                                                emit Burn(arg2, msg.sender, 0);
                                                if not uint8(stor3.field_0):
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    require ext_code.size(busdAddress)
                                                    staticcall busdAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalSupply <= 100000000000 * 10^18:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if deployTime > block.timestamp:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                    else:
                        if msg.sender == CAddress:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[230 len 26],
                                            mem[282 len 6]
                            else:
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                else:
                                    balanceOf[address(arg1)] += arg2
                                    if not arg1:
                                        if totalBurn + arg2 < totalBurn:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            totalBurn += arg2
                                            if arg2 > totalSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                totalSupply -= arg2
                                                emit Burn(arg2, msg.sender, 0);
                                                if not uint8(stor3.field_0):
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    require ext_code.size(busdAddress)
                                                    staticcall busdAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalSupply <= 100000000000 * 10^18:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if deployTime > block.timestamp:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                    else:
                                        if arg1 != deadAddress:
                                            if not uint8(stor3.field_0):
                                                emit Transfer(arg2, msg.sender, arg1);
                                                return 1
                                            else:
                                                require ext_code.size(busdAddress)
                                                staticcall busdAddress.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                        uint8(stor3.field_0) = 0
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalSupply <= 100000000000 * 10^18:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if deployTime > block.timestamp:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                        else:
                                            if totalBurn + arg2 < totalBurn:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalBurn += arg2
                                                if arg2 > totalSupply:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    totalSupply -= arg2
                                                    emit Burn(arg2, msg.sender, 0);
                                                    if not uint8(stor3.field_0):
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        require ext_code.size(busdAddress)
                                                        staticcall busdAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if deployTime > block.timestamp:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                        else:
                            if msg.sender == ADAddress:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[230 len 26],
                                                mem[282 len 6]
                                else:
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        balanceOf[address(arg1)] += arg2
                                        if not arg1:
                                            if totalBurn + arg2 < totalBurn:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                totalBurn += arg2
                                                if arg2 > totalSupply:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                else:
                                                    totalSupply -= arg2
                                                    emit Burn(arg2, msg.sender, 0);
                                                    if not uint8(stor3.field_0):
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        require ext_code.size(busdAddress)
                                                        staticcall busdAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if deployTime > block.timestamp:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                        else:
                                            if arg1 != deadAddress:
                                                if not uint8(stor3.field_0):
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                    return 1
                                                else:
                                                    require ext_code.size(busdAddress)
                                                    staticcall busdAddress.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                            uint8(stor3.field_0) = 0
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalSupply <= 100000000000 * 10^18:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if deployTime > block.timestamp:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                            else:
                                                if totalBurn + arg2 < totalBurn:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalBurn += arg2
                                                    if arg2 > totalSupply:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Burn(arg2, msg.sender, 0);
                                                        if not uint8(stor3.field_0):
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            require ext_code.size(busdAddress)
                                                            staticcall busdAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if deployTime > block.timestamp:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                            else:
                                if msg.sender == AAddress:
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[230 len 26],
                                                    mem[282 len 6]
                                    else:
                                        balanceOf[address(msg.sender)] -= arg2
                                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            balanceOf[address(arg1)] += arg2
                                            if not arg1:
                                                if totalBurn + arg2 < totalBurn:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    totalBurn += arg2
                                                    if arg2 > totalSupply:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    else:
                                                        totalSupply -= arg2
                                                        emit Burn(arg2, msg.sender, 0);
                                                        if not uint8(stor3.field_0):
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            require ext_code.size(busdAddress)
                                                            staticcall busdAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if deployTime > block.timestamp:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                            else:
                                                if arg1 != deadAddress:
                                                    if not uint8(stor3.field_0):
                                                        emit Transfer(arg2, msg.sender, arg1);
                                                        return 1
                                                    else:
                                                        require ext_code.size(busdAddress)
                                                        staticcall busdAddress.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                uint8(stor3.field_0) = 0
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if deployTime > block.timestamp:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                else:
                                                    if totalBurn + arg2 < totalBurn:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalBurn += arg2
                                                        if arg2 > totalSupply:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Burn(arg2, msg.sender, 0);
                                                            if not uint8(stor3.field_0):
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                require ext_code.size(busdAddress)
                                                                staticcall busdAddress.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if deployTime > block.timestamp:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                else:
                                    if msg.sender == MAddress:
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[230 len 26],
                                                        mem[282 len 6]
                                        else:
                                            balanceOf[address(msg.sender)] -= arg2
                                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                balanceOf[address(arg1)] += arg2
                                                if not arg1:
                                                    if totalBurn + arg2 < totalBurn:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        totalBurn += arg2
                                                        if arg2 > totalSupply:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            totalSupply -= arg2
                                                            emit Burn(arg2, msg.sender, 0);
                                                            if not uint8(stor3.field_0):
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                require ext_code.size(busdAddress)
                                                                staticcall busdAddress.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if deployTime > block.timestamp:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                else:
                                                    if arg1 != deadAddress:
                                                        if not uint8(stor3.field_0):
                                                            emit Transfer(arg2, msg.sender, arg1);
                                                            return 1
                                                        else:
                                                            require ext_code.size(busdAddress)
                                                            staticcall busdAddress.0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args this.address
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                    uint8(stor3.field_0) = 0
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if deployTime > block.timestamp:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                    else:
                                                        if totalBurn + arg2 < totalBurn:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalBurn += arg2
                                                            if arg2 > totalSupply:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                totalSupply -= arg2
                                                                emit Burn(arg2, msg.sender, 0);
                                                                if not uint8(stor3.field_0):
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    require ext_code.size(busdAddress)
                                                                    staticcall busdAddress.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if deployTime > block.timestamp:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                    else:
                                        if not arg1:
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[230 len 26],
                                                            mem[282 len 6]
                                            else:
                                                balanceOf[address(msg.sender)] -= arg2
                                                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    balanceOf[address(arg1)] += arg2
                                                    if not arg1:
                                                        if totalBurn + arg2 < totalBurn:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            totalBurn += arg2
                                                            if arg2 > totalSupply:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                totalSupply -= arg2
                                                                emit Burn(arg2, msg.sender, 0);
                                                                if not uint8(stor3.field_0):
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    require ext_code.size(busdAddress)
                                                                    staticcall busdAddress.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if deployTime > block.timestamp:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                    else:
                                                        if arg1 != deadAddress:
                                                            if not uint8(stor3.field_0):
                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                return 1
                                                            else:
                                                                require ext_code.size(busdAddress)
                                                                staticcall busdAddress.0x70a08231 with:
                                                                        gas gas_remaining wei
                                                                       args this.address
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                        uint8(stor3.field_0) = 0
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        if totalBurn >= 250000000 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalSupply <= 100000000000 * 10^18:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if deployTime > block.timestamp:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                        else:
                                                            if totalBurn + arg2 < totalBurn:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalBurn += arg2
                                                                if arg2 > totalSupply:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    totalSupply -= arg2
                                                                    emit Burn(arg2, msg.sender, 0);
                                                                    if not uint8(stor3.field_0):
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        require ext_code.size(busdAddress)
                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if deployTime > block.timestamp:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                        else:
                                            if arg1 != deadAddress:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[230 len 26],
                                                                mem[282 len 6]
                                                else:
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        balanceOf[address(arg1)] += arg2
                                                        if not arg1:
                                                            if totalBurn + arg2 < totalBurn:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalBurn += arg2
                                                                if arg2 > totalSupply:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    totalSupply -= arg2
                                                                    emit Burn(arg2, msg.sender, 0);
                                                                    if not uint8(stor3.field_0):
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        require ext_code.size(busdAddress)
                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if deployTime > block.timestamp:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                        else:
                                                            if arg1 != deadAddress:
                                                                if not uint8(stor3.field_0):
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    require ext_code.size(busdAddress)
                                                                    staticcall busdAddress.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if deployTime > block.timestamp:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                            else:
                                                                if totalBurn + arg2 < totalBurn:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalBurn += arg2
                                                                    if arg2 > totalSupply:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        totalSupply -= arg2
                                                                        emit Burn(arg2, msg.sender, 0);
                                                                        if not uint8(stor3.field_0):
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            require ext_code.size(busdAddress)
                                                                            staticcall busdAddress.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            if deployTime > block.timestamp:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    uint8(stor3.field_0) = 0
                                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                                    return 1
                                            else:
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x7742455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[230 len 26],
                                                                mem[282 len 6]
                                                else:
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    else:
                                                        balanceOf[address(arg1)] += arg2
                                                        if not arg1:
                                                            if totalBurn + arg2 < totalBurn:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                totalBurn += arg2
                                                                if arg2 > totalSupply:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    totalSupply -= arg2
                                                                    emit Burn(arg2, msg.sender, 0);
                                                                    if not uint8(stor3.field_0):
                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                        return 1
                                                                    else:
                                                                        require ext_code.size(busdAddress)
                                                                        staticcall busdAddress.0x70a08231 with:
                                                                                gas gas_remaining wei
                                                                               args this.address
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalSupply <= 100000000000 * 10^18:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if deployTime > block.timestamp:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                                                            else:
                                                                                                uint8(stor3.field_0) = 0
                                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                                return 1
                                                        else:
                                                            if arg1 != deadAddress:
                                                                if not uint8(stor3.field_0):
                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                    return 1
                                                                else:
                                                                    require ext_code.size(busdAddress)
                                                                    staticcall busdAddress.0x70a08231 with:
                                                                            gas gas_remaining wei
                                                                           args this.address
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                            uint8(stor3.field_0) = 0
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                uint8(stor3.field_0) = 0
                                                                                emit Transfer(arg2, msg.sender, arg1);
                                                                                return 1
                                                                            else:
                                                                                if totalSupply <= 100000000000 * 10^18:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if deployTime > block.timestamp:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                            else:
                                                                if totalBurn + arg2 < totalBurn:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    totalBurn += arg2
                                                                    if arg2 > totalSupply:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        totalSupply -= arg2
                                                                        emit Burn(arg2, msg.sender, 0);
                                                                        if not uint8(stor3.field_0):
                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                            return 1
                                                                        else:
                                                                            require ext_code.size(busdAddress)
                                                                            staticcall busdAddress.0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args this.address
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if ext_call.return_data[0] >= 2500 * 10^18 * 3600:
                                                                                    uint8(stor3.field_0) = 0
                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                    return 1
                                                                                else:
                                                                                    if totalBurn >= 250000000 * 10^18 * 3600:
                                                                                        uint8(stor3.field_0) = 0
                                                                                        emit Transfer(arg2, msg.sender, arg1);
                                                                                        return 1
                                                                                    else:
                                                                                        if totalSupply <= 100000000000 * 10^18:
                                                                                            uint8(stor3.field_0) = 0
                                                                                            emit Transfer(arg2, msg.sender, arg1);
                                                                                            return 1
                                                                                        else:
                                                                                            if deployTime > block.timestamp:
                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                            else:
                                                                                                if block.timestamp - deployTime < 432 * 24 * 3600:
                                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                                    return 1
                                                                                                else:
                                                                                                    uint8(stor3.field_0) = 0
                                                                                                    emit Transfer(arg2, msg.sender, arg1);
                                                                                                    return 1
}



}
