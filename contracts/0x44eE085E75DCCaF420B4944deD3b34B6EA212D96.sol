contract main {




// =====================  Runtime code  =====================


#
#  - rebase()
#
const MAX_SUPPLY = 0x9abe14cd44753b52c4926a9672793542d78c3615cf3a


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor151;
uint256 price;
address marketOracleAddress;
address sub_5646876aAddress;
uint256 deviationThreshold;
uint256 rebaseLag;
uint256 supplyAfterRebase;
uint256 exchangeRate;
uint256 sub_f97f4830;
uint256 sub_3dfc0a27;
uint256 rebaseWindowOffsetmin;
uint256 rebaseWindowLengthhours;
uint256 epoch;
address sub_c293c8c2Address;
uint256 sub_6bb35e72;

function rebaseWindowOffsetmin() {
    return rebaseWindowOffsetmin
}

function exchangeRate() {
    return exchangeRate
}

function rebaseWindowLengthhours() {
    return rebaseWindowLengthhours
}

function sub_3dfc0a27(?) {
    return sub_3dfc0a27
}

function sub_5646876a(?) {
    return sub_5646876aAddress
}

function marketOracle() {
    return marketOracleAddress
}

function rebaseLag() {
    return rebaseLag
}

function sub_6bb35e72(?) {
    return sub_6bb35e72
}

function supplyAfterRebase() {
    return supplyAfterRebase
}

function owner() {
    return owner
}

function epoch() {
    return epoch
}

function price() {
    return price
}

function sub_c293c8c2(?) {
    return sub_c293c8c2Address
}

function deviationThreshold() {
    return deviationThreshold
}

function sub_f97f4830(?) {
    return sub_f97f4830
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDeviationThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    deviationThreshold = arg1
}

function setRebaseLag(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    rebaseLag = arg1
}

function setMarketOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketOracleAddress = arg1
}

function setOrchestrator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c293c8c2Address = arg1
}

function setRebaseTimingParameters(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 > 0
    require arg2 < arg1
    sub_f97f4830 = arg1
    rebaseWindowOffsetmin = arg2
    rebaseWindowLengthhours = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function inRebaseWindow() {
    if not sub_f97f4830:
        revert with 0, 'SafeMath: modulo by zero', 0
    if block.timestamp % sub_f97f4830 < rebaseWindowOffsetmin:
        return block.timestamp % sub_f97f4830 >= rebaseWindowOffsetmin
    if rebaseWindowLengthhours + rebaseWindowOffsetmin < rebaseWindowOffsetmin:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_f97f4830:
        revert with 0, 'SafeMath: modulo by zero', 0
    return (block.timestamp % sub_f97f4830 < rebaseWindowLengthhours + rebaseWindowOffsetmin)
}

function getPrice() payable {
    require ext_code.size(stor151)
    staticcall stor151.getReferenceData(string rg1, string rg2) with:
            gas gas_remaining wei
           args 64, 128, 3, 0x424e420000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require bool(ceil32(return_data.size) + 288 <= test266151307())
    price = ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withinDeviationThreshold(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg2:
        if arg1 >= arg2:
            if arg2 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - arg2 < 0:
                return (arg1 - arg2 < 0)
            if arg1 >= arg2:
                return (arg1 < arg2)
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (arg2 - arg1 < 0)
    if deviationThreshold * arg2 / arg2 != deviationThreshold:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg1 >= arg2:
        if arg2 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - arg2 < deviationThreshold * arg2 / 10^18:
            return (arg1 - arg2 < deviationThreshold * arg2 / 10^18)
        if arg1 >= arg2:
            return (arg1 < arg2)
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (arg2 - arg1 < deviationThreshold * arg2 / 10^18)
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        deviationThreshold = 5 * 10^16
        rebaseLag = 10
        sub_f97f4830 = 300
        rebaseWindowOffsetmin = 180
        rebaseWindowLengthhours = 120
        sub_3dfc0a27 = 0
        epoch = 0
        sub_5646876aAddress = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            deviationThreshold = 5 * 10^16
            rebaseLag = 10
            sub_f97f4830 = 300
            rebaseWindowOffsetmin = 180
            rebaseWindowLengthhours = 120
            sub_3dfc0a27 = 0
            epoch = 0
            sub_5646876aAddress = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                deviationThreshold = 5 * 10^16
                rebaseLag = 10
                sub_f97f4830 = 300
                rebaseWindowOffsetmin = 180
                rebaseWindowLengthhours = 120
                sub_3dfc0a27 = 0
                epoch = 0
                sub_5646876aAddress = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    deviationThreshold = 5 * 10^16
                    rebaseLag = 10
                    sub_f97f4830 = 300
                    rebaseWindowOffsetmin = 180
                    rebaseWindowLengthhours = 120
                    sub_3dfc0a27 = 0
                    epoch = 0
                    sub_5646876aAddress = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        deviationThreshold = 5 * 10^16
                        rebaseLag = 10
                        sub_f97f4830 = 300
                        rebaseWindowOffsetmin = 180
                        rebaseWindowLengthhours = 120
                        sub_3dfc0a27 = 0
                        epoch = 0
                        sub_5646876aAddress = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        deviationThreshold = 5 * 10^16
                        rebaseLag = 10
                        sub_f97f4830 = 300
                        rebaseWindowOffsetmin = 180
                        rebaseWindowLengthhours = 120
                        sub_3dfc0a27 = 0
                        epoch = 0
                        sub_5646876aAddress = arg1
                        uint8(stor0.field_8) = 0
}

function computeSupplyDelta(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg2:
        if arg1 < arg2:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg2 - arg1 < 0:
                return 0
        else:
            if arg2 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - arg2 < 0:
                return 0
            if arg1 < arg2:
                if arg1 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 - arg1 < 0:
                    return 0
    else:
        if deviationThreshold * arg2 / arg2 != deviationThreshold:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 < arg2:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg2 - arg1 < deviationThreshold * arg2 / 10^18:
                return 0
        else:
            if arg2 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - arg2 < deviationThreshold * arg2 / 10^18:
                return 0
            if arg1 < arg2:
                if arg1 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg2 - arg1 < deviationThreshold * arg2 / 10^18:
                    return 0
    require arg2 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg2 + 10^18 >= arg2
    require arg2 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require arg1 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if arg2 < 0:
        require arg1 - arg2 > arg1
    else:
        if arg1 - arg2 > arg1:
            require arg2 < 0
            require arg1 - arg2 > arg1
    if 10^18 == arg1 - arg2:
        require arg1 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if arg2 < 0:
            require arg1 - arg2 > arg1
        else:
            if arg1 - arg2 > arg1:
                require arg2 < 0
                require arg1 - arg2 > arg1
        require ext_code.size(sub_5646876aAddress)
        staticcall sub_5646876aAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        if (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
            require Mask(1, 255, arg1 - arg2) != Mask(1, 255, ext_call.return_data[0])
        if not arg1 - arg2:
            if -1 == arg2:
                require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2:
                return ((arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg2)
        else:
            if arg1 - arg2:
                require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg1 - arg2 == ext_call.return_data[0]
                if -1 == arg2:
                    require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                if arg2:
                    return ((arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg2)
    else:
        if arg1 > arg2:
            if arg2 < 0:
                require 10^18 > arg2 + 10^18
            else:
                if 10^18 > arg2 + 10^18:
                    require arg2 < 0
                    require 10^18 > arg2 + 10^18
            require ext_code.size(sub_5646876aAddress)
            staticcall sub_5646876aAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if 10^18 * ext_call.return_data[0] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, ext_call.return_data[0]) != 0
            require 10^18 * ext_call.return_data[0] / 10^18 == ext_call.return_data[0]
            if -1 == arg2:
                require 10^18 * ext_call.return_data[0] != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2:
                return (10^18 * ext_call.return_data[0] / arg2)
        else:
            require arg2 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            if arg1 < 0:
                require arg2 - arg1 > arg2
            else:
                if arg2 - arg1 > arg2:
                    require arg1 < 0
                    require arg2 - arg1 > arg2
            if arg2 - arg1 != 10^18:
                if arg2 + 10^18 < 0:
                    require -1 * 10^18 > arg2
                else:
                    if -1 * 10^18 > arg2:
                        require arg2 + 10^18 < 0
                        require -1 * 10^18 > arg2
                require ext_code.size(sub_5646876aAddress)
                staticcall sub_5646876aAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if -1 * 10^18 * ext_call.return_data[0] == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    require Mask(1, 255, ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                require -1 * 10^18 * ext_call.return_data[0] / -1 * 10^18 == ext_call.return_data[0]
                if -1 == arg2:
                    require -1 * 10^18 * ext_call.return_data[0] != 0x8000000000000000000000000000000000000000000000000000000000000000
                if arg2:
                    return (-1 * 10^18 * ext_call.return_data[0] / arg2)
            else:
                require arg1 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if arg2 < 0:
                    require arg1 - arg2 > arg1
                else:
                    if arg1 - arg2 > arg1:
                        require arg2 < 0
                        require arg1 - arg2 > arg1
                require ext_code.size(sub_5646876aAddress)
                staticcall sub_5646876aAddress.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                if (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    require Mask(1, 255, arg1 - arg2) != Mask(1, 255, ext_call.return_data[0])
                if not arg1 - arg2:
                    if -1 == arg2:
                        require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                    if arg2:
                        return ((arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg2)
                else:
                    if arg1 - arg2:
                        require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg1 - arg2 == ext_call.return_data[0]
                        if -1 == arg2:
                            require (arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) != 0x8000000000000000000000000000000000000000000000000000000000000000
                        if arg2:
                            return ((arg1 * ext_call.return_data[0]) - (arg2 * ext_call.return_data[0]) / arg2)
    revert
}



}
